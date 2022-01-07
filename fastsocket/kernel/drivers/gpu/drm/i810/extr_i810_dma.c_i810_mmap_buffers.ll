; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_mmap_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_mmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_buf* }
%struct.drm_buf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vm_area_struct = type { i32, i32, i64, i64, i32 }

@VM_IO = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@I810_BUF_MAPPED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @i810_mmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_mmap_buffers(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.drm_buf*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.drm_file*, %struct.drm_file** %12, align 8
  store %struct.drm_file* %13, %struct.drm_file** %6, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.drm_buf*, %struct.drm_buf** %23, align 8
  store %struct.drm_buf* %24, %struct.drm_buf** %9, align 8
  %25 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %26 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = load i32, i32* @VM_IO, align 4
  %29 = load i32, i32* @VM_DONTCOPY, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @I810_BUF_MAPPED, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %38, i64 %41, i32 %44, i64 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
