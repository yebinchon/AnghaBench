; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.vm_area_struct*, %struct.vm_fault*)* }
%struct.vm_area_struct = type { i64 }
%struct.vm_fault = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@ttm_vm_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @radeon_ttm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_ttm_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ttm_buffer_object*
  store %struct.ttm_buffer_object* %12, %struct.ttm_buffer_object** %6, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %14 = icmp eq %struct.ttm_buffer_object* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.radeon_device* @radeon_get_rdev(i32 %20)
  store %struct.radeon_device* %21, %struct.radeon_device** %7, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @down_read(i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ttm_vm_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)** %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %31 = call i32 %28(%struct.vm_area_struct* %29, %struct.vm_fault* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @up_read(i32* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %17, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
