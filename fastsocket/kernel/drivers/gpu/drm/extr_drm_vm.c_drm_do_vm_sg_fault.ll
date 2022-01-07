; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_vm.c_drm_do_vm_sg_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_vm.c_drm_do_vm_sg_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, %struct.TYPE_3__*, %struct.drm_local_map* }
%struct.TYPE_3__ = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_sg_mem* }
%struct.drm_sg_mem = type { %struct.page**, i64 }
%struct.page = type { i32 }
%struct.drm_local_map = type { i64 }
%struct.vm_fault = type { %struct.page*, i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @drm_do_vm_sg_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_do_vm_sg_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.drm_local_map*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_sg_mem*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 2
  %16 = load %struct.drm_local_map*, %struct.drm_local_map** %15, align 8
  store %struct.drm_local_map* %16, %struct.drm_local_map** %6, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.drm_file*, %struct.drm_file** %20, align 8
  store %struct.drm_file* %21, %struct.drm_file** %7, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %8, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %28, align 8
  store %struct.drm_sg_mem* %29, %struct.drm_sg_mem** %9, align 8
  %30 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %31 = icmp ne %struct.drm_sg_mem* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %2
  %35 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %36 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %35, i32 0, i32 0
  %37 = load %struct.page**, %struct.page*** %36, align 8
  %38 = icmp ne %struct.page** %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %34
  %42 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %43 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  store i64 %48, i64* %10, align 8
  %49 = load %struct.drm_local_map*, %struct.drm_local_map** %6, align 8
  %50 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %53, align 8
  %55 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %51, %56
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = add i64 %60, %63
  store i64 %64, i64* %12, align 8
  %65 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %66 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %65, i32 0, i32 0
  %67 = load %struct.page**, %struct.page*** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds %struct.page*, %struct.page** %67, i64 %68
  %70 = load %struct.page*, %struct.page** %69, align 8
  store %struct.page* %70, %struct.page** %13, align 8
  %71 = load %struct.page*, %struct.page** %13, align 8
  %72 = call i32 @get_page(%struct.page* %71)
  %73 = load %struct.page*, %struct.page** %13, align 8
  %74 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %75 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %74, i32 0, i32 0
  store %struct.page* %73, %struct.page** %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %41, %39, %32
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
