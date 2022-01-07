; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_connector_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo_connector = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.intel_sdvo = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@intel_sdvo_connector_funcs = common dso_local global i32 0, align 4
@intel_sdvo_connector_helper_funcs = common dso_local global i32 0, align 4
@SubPixelHorizontalRGB = common dso_local global i32 0, align 4
@intel_sdvo_connector_get_hw_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo_connector*, %struct.intel_sdvo*)* @intel_sdvo_connector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_connector_init(%struct.intel_sdvo_connector* %0, %struct.intel_sdvo* %1) #0 {
  %3 = alloca %struct.intel_sdvo_connector*, align 8
  %4 = alloca %struct.intel_sdvo*, align 8
  store %struct.intel_sdvo_connector* %0, %struct.intel_sdvo_connector** %3, align 8
  store %struct.intel_sdvo* %1, %struct.intel_sdvo** %4, align 8
  %5 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %6 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %11 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %14 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @drm_connector_init(i32 %9, %struct.TYPE_12__* %12, i32* @intel_sdvo_connector_funcs, i32 %17)
  %19 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %20 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @drm_connector_helper_add(%struct.TYPE_12__* %21, i32* @intel_sdvo_connector_helper_funcs)
  %23 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %24 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %28 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @SubPixelHorizontalRGB, align 4
  %32 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %33 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @intel_sdvo_connector_get_hw_state, align 4
  %38 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %39 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %42 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %41, i32 0, i32 0
  %43 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %44 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %43, i32 0, i32 0
  %45 = call i32 @intel_connector_attach_encoder(%struct.TYPE_10__* %42, %struct.TYPE_11__* %44)
  %46 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %47 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32 @drm_sysfs_connector_add(%struct.TYPE_12__* %48)
  ret void
}

declare dso_local i32 @drm_connector_init(i32, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @drm_sysfs_connector_add(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
