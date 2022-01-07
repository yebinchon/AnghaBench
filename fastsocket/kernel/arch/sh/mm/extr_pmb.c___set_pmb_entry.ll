; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c___set_pmb_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c___set_pmb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMB_NO_ENTRY = common dso_local global i32 0, align 4
@pmb_map = common dso_local global i32 0, align 4
@NR_PMB_ENTRIES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PMB_V = common dso_local global i64 0, align 8
@PMB_C = common dso_local global i64 0, align 8
@PMB_WT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__set_pmb_entry(i64 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @PMB_NO_ENTRY, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @NR_PMB_ENTRIES, align 4
  %21 = call i32 @find_first_zero_bit(i32* @pmb_map, i32 %20)
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %19, %4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @NR_PMB_ENTRIES, align 4
  %26 = icmp ugt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @test_and_set_bit(i32 %34, i32* @pmb_map)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @NR_PMB_ENTRIES, align 4
  %39 = call i32 @find_first_zero_bit(i32* @pmb_map, i32 %38)
  store i32 %39, i32* %10, align 4
  br label %23

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @PMB_V, align 8
  %43 = or i64 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @mk_pmb_addr(i32 %44)
  %46 = call i32 @ctrl_outl(i64 %43, i32 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @PMB_V, align 8
  %51 = or i64 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @mk_pmb_data(i32 %52)
  %54 = call i32 @ctrl_outl(i64 %51, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %40, %30
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ctrl_outl(i64, i32) #1

declare dso_local i32 @mk_pmb_addr(i32) #1

declare dso_local i32 @mk_pmb_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
