; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_sgl_gflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_sgl_gflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32)* @iommu_get_scsi_sgl_gflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_get_scsi_sgl_gflush(%struct.device* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @flush_page_for_dma(i32 0)
  br label %9

9:                                                ; preds = %12, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %16 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %19 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %29 = call i32 @sg_page(%struct.scatterlist* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @iommu_get_one(%struct.device* %27, i32 %29, i32 %30)
  %32 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %37 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %44 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %43)
  store %struct.scatterlist* %44, %struct.scatterlist** %5, align 8
  br label %9

45:                                               ; preds = %9
  ret void
}

declare dso_local i32 @flush_page_for_dma(i32) #1

declare dso_local i32 @iommu_get_one(%struct.device*, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
