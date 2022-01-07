; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_vm.c_drm_do_vm_shm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_vm.c_drm_do_vm_shm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, %struct.drm_local_map* }
%struct.drm_local_map = type { i64 }
%struct.vm_fault = type { %struct.page*, i64 }
%struct.page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"shm_fault 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @drm_do_vm_shm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_do_vm_shm_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.drm_local_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 1
  %12 = load %struct.drm_local_map*, %struct.drm_local_map** %11, align 8
  store %struct.drm_local_map* %12, %struct.drm_local_map** %6, align 8
  %13 = load %struct.drm_local_map*, %struct.drm_local_map** %6, align 8
  %14 = icmp ne %struct.drm_local_map* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.drm_local_map*, %struct.drm_local_map** %6, align 8
  %26 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call %struct.page* @vmalloc_to_page(i8* %31)
  store %struct.page* %32, %struct.page** %9, align 8
  %33 = load %struct.page*, %struct.page** %9, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %17
  %36 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %17
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = call i32 @get_page(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %42 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %41, i32 0, i32 0
  store %struct.page* %40, %struct.page** %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %35, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
