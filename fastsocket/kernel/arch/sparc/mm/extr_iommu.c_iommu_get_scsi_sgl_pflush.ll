; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_sgl_pflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_sgl_pflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32)* @iommu_get_scsi_sgl_pflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_get_scsi_sgl_pflush(%struct.device* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %57, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = add i64 %24, %25
  %27 = sub i64 %26, 1
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = zext i32 %28 to i64
  %30 = lshr i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %33 = call i32 @sg_page(%struct.scatterlist* %32)
  %34 = call i64 @page_address(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @flush_page_for_dma(i64 %46)
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %37

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %14
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %60 = call i32 @sg_page(%struct.scatterlist* %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @iommu_get_one(%struct.device* %58, i32 %60, i32 %61)
  %63 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %68 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %73 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %75 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %74)
  store %struct.scatterlist* %75, %struct.scatterlist** %5, align 8
  br label %11

76:                                               ; preds = %11
  ret void
}

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @flush_page_for_dma(i64) #1

declare dso_local i32 @iommu_get_one(%struct.device*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
