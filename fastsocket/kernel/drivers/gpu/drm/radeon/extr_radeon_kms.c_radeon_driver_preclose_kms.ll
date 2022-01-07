; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_preclose_kms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_preclose_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.drm_file*, %struct.drm_file* }
%struct.drm_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_driver_preclose_kms(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  store %struct.radeon_device* %8, %struct.radeon_device** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %13 = icmp eq %struct.drm_file* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  store %struct.drm_file* null, %struct.drm_file** %16, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load %struct.drm_file*, %struct.drm_file** %19, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %22 = icmp eq %struct.drm_file* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  store %struct.drm_file* null, %struct.drm_file** %25, align 8
  br label %26

26:                                               ; preds = %23, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
