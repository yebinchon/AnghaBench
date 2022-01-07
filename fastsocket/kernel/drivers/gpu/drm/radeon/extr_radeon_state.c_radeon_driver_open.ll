; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_driver_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_driver_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_file = type { %struct.drm_radeon_driver_file_fields* }
%struct.drm_radeon_driver_file_fields = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_driver_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.drm_radeon_driver_file_fields*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.drm_radeon_driver_file_fields* @kmalloc(i32 8, i32 %12)
  store %struct.drm_radeon_driver_file_fields* %13, %struct.drm_radeon_driver_file_fields** %7, align 8
  %14 = load %struct.drm_radeon_driver_file_fields*, %struct.drm_radeon_driver_file_fields** %7, align 8
  %15 = icmp ne %struct.drm_radeon_driver_file_fields* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.drm_radeon_driver_file_fields*, %struct.drm_radeon_driver_file_fields** %7, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  store %struct.drm_radeon_driver_file_fields* %20, %struct.drm_radeon_driver_file_fields** %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.drm_radeon_driver_file_fields*, %struct.drm_radeon_driver_file_fields** %7, align 8
  %30 = getelementptr inbounds %struct.drm_radeon_driver_file_fields, %struct.drm_radeon_driver_file_fields* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %34

31:                                               ; preds = %19
  %32 = load %struct.drm_radeon_driver_file_fields*, %struct.drm_radeon_driver_file_fields** %7, align 8
  %33 = getelementptr inbounds %struct.drm_radeon_driver_file_fields, %struct.drm_radeon_driver_file_fields* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %25
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.drm_radeon_driver_file_fields* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
