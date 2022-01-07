; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_vm.c_drm_do_vm_dma_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_vm.c_drm_do_vm_dma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i64* }
%struct.vm_fault = type { %struct.page*, i64 }
%struct.page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"dma_fault 0x%lx (page %lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @drm_do_vm_dma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_do_vm_dma_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.drm_file*, %struct.drm_file** %15, align 8
  store %struct.drm_file* %16, %struct.drm_file** %6, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %7, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.drm_device_dma*, %struct.drm_device_dma** %23, align 8
  store %struct.drm_device_dma* %24, %struct.drm_device_dma** %8, align 8
  %25 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %26 = icmp ne %struct.drm_device_dma* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %31 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %29
  %37 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %38 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = lshr i64 %44, %45
  store i64 %46, i64* %10, align 8
  %47 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %48 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @PAGE_MASK, align 8
  %55 = xor i64 %54, -1
  %56 = and i64 %53, %55
  %57 = add i64 %52, %56
  %58 = call %struct.page* @virt_to_page(i64 %57)
  store %struct.page* %58, %struct.page** %11, align 8
  %59 = load %struct.page*, %struct.page** %11, align 8
  %60 = call i32 @get_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %63 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %62, i32 0, i32 0
  store %struct.page* %61, %struct.page** %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %36, %34, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
