; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_io_trapped.c_lookup_tiop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_io_trapped.c_lookup_tiop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapped_io = type { i32 }

@swapper_pg_dir = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trapped_io* (i64)* @lookup_tiop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trapped_io* @lookup_tiop(i64 %0) #0 {
  %2 = alloca %struct.trapped_io*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i32*, i32** @swapper_pg_dir, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @pgd_index(i64 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pgd_present(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.trapped_io* null, %struct.trapped_io** %2, align 8
  br label %46

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32* @pud_offset(i32* %20, i64 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pud_present(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.trapped_io* null, %struct.trapped_io** %2, align 8
  br label %46

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32* @pmd_offset(i32* %29, i64 %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pmd_present(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store %struct.trapped_io* null, %struct.trapped_io** %2, align 8
  br label %46

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32* @pte_offset_kernel(i32* %38, i64 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @pte_pfn(i32 %43)
  %45 = call %struct.trapped_io* @pfn_to_kaddr(i32 %44)
  store %struct.trapped_io* %45, %struct.trapped_io** %2, align 8
  br label %46

46:                                               ; preds = %37, %36, %27, %18
  %47 = load %struct.trapped_io*, %struct.trapped_io** %2, align 8
  ret %struct.trapped_io* %47
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local %struct.trapped_io* @pfn_to_kaddr(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
