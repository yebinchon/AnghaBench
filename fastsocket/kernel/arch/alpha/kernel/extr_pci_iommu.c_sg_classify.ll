; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_sg_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_sg_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i64, i32, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, %struct.scatterlist*, i32)* @sg_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_classify(%struct.device* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %16, %struct.scatterlist** %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %21 = call i64 @SG_ENT_PHYS_ADDRESS(%struct.scatterlist* %20)
  %22 = load i64, i64* %12, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = icmp ne %struct.device* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dma_get_max_seg_size(%struct.device* %27)
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  store i32 %31, i32* %13, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 1
  store %struct.scatterlist* %33, %struct.scatterlist** %6, align 8
  br label %34

34:                                               ; preds = %94, %30
  %35 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %37 = icmp ult %struct.scatterlist* %35, %36
  br i1 %37, label %38, label %97

38:                                               ; preds = %34
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = call i64 @SG_ENT_PHYS_ADDRESS(%struct.scatterlist* %39)
  store i64 %40, i64* %14, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %15, align 8
  %46 = add i64 %44, %45
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %79

51:                                               ; preds = %38
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %12, align 8
  br label %90

61:                                               ; preds = %51
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %14, align 8
  %64 = or i64 %62, %63
  %65 = load i64, i64* @PAGE_MASK, align 8
  %66 = xor i64 %65, -1
  %67 = and i64 %64, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %74 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %73, i32 0, i32 1
  store i32 -2, i32* %74, align 8
  store i64 1, i64* %11, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %12, align 8
  br label %89

78:                                               ; preds = %69, %61
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i64, i64* %11, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %83 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %86 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %87, %struct.scatterlist** %10, align 8
  store i64 0, i64* %11, align 8
  %88 = load i64, i64* %15, align 8
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %79, %72
  br label %90

90:                                               ; preds = %89, %55
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %91, %92
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %90
  %95 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %95, i32 1
  store %struct.scatterlist* %96, %struct.scatterlist** %6, align 8
  br label %34

97:                                               ; preds = %34
  %98 = load i64, i64* %11, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %101 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %104 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  ret void
}

declare dso_local i64 @SG_ENT_PHYS_ADDRESS(%struct.scatterlist*) #1

declare dso_local i32 @dma_get_max_seg_size(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
