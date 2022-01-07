; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_sys_parisc.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_sys_parisc.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }

@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @TASK_SIZE, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i64, i64* @ENOMEM, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %6, align 8
  br label %58

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @MAP_FIXED, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %6, align 8
  br label %58

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = icmp ne %struct.file* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @get_shared_area(i32* %36, i64 %37, i64 %38, i64 %39)
  store i64 %40, i64* %8, align 8
  br label %56

41:                                               ; preds = %30
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @MAP_SHARED, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @get_shared_area(i32* null, i64 %47, i64 %48, i64 %49)
  store i64 %50, i64* %8, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @get_unshared_area(i64 %52, i64 %53)
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %56, %23, %15
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i64 @get_shared_area(i32*, i64, i64, i64) #1

declare dso_local i64 @get_unshared_area(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
