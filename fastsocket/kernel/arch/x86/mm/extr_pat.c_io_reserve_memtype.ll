; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_io_reserve_memtype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_io_reserve_memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_reserve_memtype(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @iomem_map_sanity_check(i64 %17, i64 %18)
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @reserve_memtype(i64 %21, i64 %22, i64 %23, i64* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %52

28:                                               ; preds = %3
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @is_new_memtype_allowed(i64 %29, i64 %30, i64 %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %46

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @kernel_map_sync_memtype(i64 %37, i64 %38, i64 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %46

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %54

46:                                               ; preds = %42, %35
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @free_memtype(i64 %47, i64 %48)
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %27
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %43
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iomem_map_sanity_check(i64, i64) #1

declare dso_local i32 @reserve_memtype(i64, i64, i64, i64*) #1

declare dso_local i32 @is_new_memtype_allowed(i64, i64, i64, i64) #1

declare dso_local i64 @kernel_map_sync_memtype(i64, i64, i64) #1

declare dso_local i32 @free_memtype(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
