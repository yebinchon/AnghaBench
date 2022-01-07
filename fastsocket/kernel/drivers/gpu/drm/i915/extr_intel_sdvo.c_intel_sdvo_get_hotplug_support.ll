; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_hotplug_support.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_hotplug_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@SDVO_CMD_GET_HOT_PLUG_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*)* @intel_sdvo_get_hotplug_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_hotplug_support(%struct.intel_sdvo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  %6 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call i64 @IS_I945G(%struct.drm_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call i64 @IS_I945GM(%struct.drm_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %27

19:                                               ; preds = %14
  %20 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %21 = load i32, i32* @SDVO_CMD_GET_HOT_PLUG_SUPPORT, align 4
  %22 = call i32 @intel_sdvo_get_value(%struct.intel_sdvo* %20, i32 %21, i32* %5, i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %24, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @IS_I945G(%struct.drm_device*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
