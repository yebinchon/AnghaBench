; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_sgl_noflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_iommu.c_iommu_get_scsi_sgl_noflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32)* @iommu_get_scsi_sgl_noflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_get_scsi_sgl_noflush(%struct.device* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %11, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %28 = call i32 @sg_page(%struct.scatterlist* %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @iommu_get_one(%struct.device* %26, i32 %28, i32 %29)
  %31 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %38 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %43 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %42)
  store %struct.scatterlist* %43, %struct.scatterlist** %5, align 8
  br label %8

44:                                               ; preds = %8
  ret void
}

declare dso_local i32 @iommu_get_one(%struct.device*, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
