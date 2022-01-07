; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_config_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 14
  %6 = call i32 @mutex_init(i32* %5)
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 13
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 12
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 11
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 10
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 8
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = call i32 @idr_init(i32* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = call i32 @drm_modeset_lock_all(%struct.drm_device* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %50 = call i32 @drm_mode_create_standard_connector_properties(%struct.drm_device* %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %52 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_create_standard_connector_properties(%struct.drm_device*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
