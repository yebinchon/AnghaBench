; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_platform.c_drm_platform_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_platform.c_drm_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_driver = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@drm_platform_bus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_platform_init(%struct.drm_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.drm_driver*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.drm_driver* %0, %struct.drm_driver** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %5 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %7 = load %struct.drm_driver*, %struct.drm_driver** %3, align 8
  %8 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.platform_device* %6, %struct.platform_device** %9, align 8
  %10 = load %struct.drm_driver*, %struct.drm_driver** %3, align 8
  %11 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %10, i32 0, i32 1
  store i32* @drm_platform_bus, i32** %11, align 8
  %12 = load %struct.drm_driver*, %struct.drm_driver** %3, align 8
  %13 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = load %struct.drm_driver*, %struct.drm_driver** %3, align 8
  %17 = call i32 @drm_get_platform_dev(%struct.platform_device* %15, %struct.drm_driver* %16)
  ret i32 %17
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_get_platform_dev(%struct.platform_device*, %struct.drm_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
