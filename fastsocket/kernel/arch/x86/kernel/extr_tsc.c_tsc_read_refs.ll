; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_tsc_read_refs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_tsc_read_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RETRIES = common dso_local global i32 0, align 4
@HPET_COUNTER = common dso_local global i32 0, align 4
@SMI_TRESHOLD = common dso_local global i64 0, align 8
@ULLONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32)* @tsc_read_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tsc_read_refs(i64* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @MAX_RETRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = call i64 (...) @get_cycles()
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @HPET_COUNTER, align 4
  %19 = call i32 @hpet_readl(i32 %18)
  %20 = zext i32 %19 to i64
  %21 = load i64*, i64** %4, align 8
  store i64 %20, i64* %21, align 8
  br label %25

22:                                               ; preds = %13
  %23 = call i64 (...) @acpi_pm_read_early()
  %24 = load i64*, i64** %4, align 8
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = call i64 (...) @get_cycles()
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* @SMI_TRESHOLD, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %3, align 8
  br label %40

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load i64, i64* @ULLONG_MAX, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @hpet_readl(i32) #1

declare dso_local i64 @acpi_pm_read_early(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
