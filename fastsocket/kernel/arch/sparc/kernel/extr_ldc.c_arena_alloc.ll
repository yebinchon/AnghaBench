; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_arena_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_arena_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_iommu = type { %struct.iommu_arena }
%struct.iommu_arena = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ldc_iommu*, i64)* @arena_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arena_alloc(%struct.ldc_iommu* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ldc_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iommu_arena*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ldc_iommu* %0, %struct.ldc_iommu** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.ldc_iommu*, %struct.ldc_iommu** %4, align 8
  %14 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %13, i32 0, i32 0
  store %struct.iommu_arena* %14, %struct.iommu_arena** %6, align 8
  %15 = load %struct.iommu_arena*, %struct.iommu_arena** %6, align 8
  %16 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.iommu_arena*, %struct.iommu_arena** %6, align 8
  %19 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %61, %43, %2
  %22 = load %struct.iommu_arena*, %struct.iommu_arena** %6, align 8
  %23 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @find_next_zero_bit(i32 %24, i64 %25, i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp uge i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %21
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %11, align 8
  store i64 0, i64* %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %21

47:                                               ; preds = %37
  store i64 -1, i64* %3, align 8
  br label %88

48:                                               ; preds = %21
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %65, %48
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.iommu_arena*, %struct.iommu_arena** %6, align 8
  %57 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @test_bit(i64 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %21

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %50

68:                                               ; preds = %50
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %80, %68
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.iommu_arena*, %struct.iommu_arena** %6, align 8
  %77 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @__set_bit(i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %70

83:                                               ; preds = %70
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.iommu_arena*, %struct.iommu_arena** %6, align 8
  %86 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %83, %47
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
