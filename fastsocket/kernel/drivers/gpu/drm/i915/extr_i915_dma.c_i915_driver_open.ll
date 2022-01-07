; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_driver_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_i915_file_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %7 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.drm_i915_file_private* @kmalloc(i32 12, i32 %8)
  store %struct.drm_i915_file_private* %9, %struct.drm_i915_file_private** %6, align 8
  %10 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %11 = icmp ne %struct.drm_i915_file_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  store %struct.drm_i915_file_private* %16, %struct.drm_i915_file_private** %18, align 8
  %19 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %20 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %24 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %6, align 8
  %28 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %27, i32 0, i32 0
  %29 = call i32 @idr_init(i32* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.drm_i915_file_private* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
