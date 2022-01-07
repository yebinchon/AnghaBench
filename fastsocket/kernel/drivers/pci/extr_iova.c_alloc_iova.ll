; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iova.c_alloc_iova.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iova.c_alloc_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova = type { i32 }
%struct.iova_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iova* @alloc_iova(%struct.iova_domain* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.iova*, align 8
  %6 = alloca %struct.iova_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iova*, align 8
  %11 = alloca i32, align 4
  store %struct.iova_domain* %0, %struct.iova_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.iova* (...) @alloc_iova_mem()
  store %struct.iova* %12, %struct.iova** %10, align 8
  %13 = load %struct.iova*, %struct.iova** %10, align 8
  %14 = icmp ne %struct.iova* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.iova* null, %struct.iova** %5, align 8
  br label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @__roundup_pow_of_two(i64 %20)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.iova*, %struct.iova** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @__alloc_and_insert_iova_range(%struct.iova_domain* %23, i64 %24, i64 %25, %struct.iova* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.iova*, %struct.iova** %10, align 8
  %33 = call i32 @free_iova_mem(%struct.iova* %32)
  store %struct.iova* null, %struct.iova** %5, align 8
  br label %36

34:                                               ; preds = %22
  %35 = load %struct.iova*, %struct.iova** %10, align 8
  store %struct.iova* %35, %struct.iova** %5, align 8
  br label %36

36:                                               ; preds = %34, %31, %15
  %37 = load %struct.iova*, %struct.iova** %5, align 8
  ret %struct.iova* %37
}

declare dso_local %struct.iova* @alloc_iova_mem(...) #1

declare dso_local i64 @__roundup_pow_of_two(i64) #1

declare dso_local i32 @__alloc_and_insert_iova_range(%struct.iova_domain*, i64, i64, %struct.iova*, i32) #1

declare dso_local i32 @free_iova_mem(%struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
