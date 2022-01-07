; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_page_table_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_page_table_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_sg_mem* }
%struct.drm_sg_mem = type { i32, i32* }
%struct.drm_ati_pcigart_info = type { i32, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DRM_ATI_GART_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_page_table_cleanup(%struct.drm_device* %0, %struct.drm_ati_pcigart_info* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_ati_pcigart_info*, align 8
  %5 = alloca %struct.drm_sg_mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_ati_pcigart_info* %1, %struct.drm_ati_pcigart_info** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %10, align 8
  store %struct.drm_sg_mem* %11, %struct.drm_sg_mem** %5, align 8
  %12 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %5, align 8
  %13 = icmp ne %struct.drm_sg_mem* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %81

15:                                               ; preds = %2
  %16 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %4, align 8
  %17 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %15
  %21 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %4, align 8
  %22 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %5, align 8
  %28 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %5, align 8
  %34 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  br label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %35, %32 ], [ %37, %36 ]
  store i32 %39, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %68, %38
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %5, align 8
  %46 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %71

54:                                               ; preds = %44
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %5, align 8
  %59 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %67 = call i32 @pci_unmap_page(i32 %57, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %40

71:                                               ; preds = %53, %40
  %72 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %4, align 8
  %73 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DRM_ATI_GART_MAIN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %4, align 8
  %79 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %14, %80, %15
  ret void
}

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
