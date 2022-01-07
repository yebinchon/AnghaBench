; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_g4x_infoframe_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_g4x_infoframe_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dip_infoframe = type { i32 }

@VIDEO_DIP_SELECT_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_SELECT_SPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown info frame type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dip_infoframe*)* @g4x_infoframe_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_infoframe_index(%struct.dip_infoframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dip_infoframe*, align 8
  store %struct.dip_infoframe* %0, %struct.dip_infoframe** %3, align 8
  %4 = load %struct.dip_infoframe*, %struct.dip_infoframe** %3, align 8
  %5 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 129, label %7
    i32 128, label %9
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @VIDEO_DIP_SELECT_AVI, align 4
  store i32 %8, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @VIDEO_DIP_SELECT_SPD, align 4
  store i32 %10, i32* %2, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.dip_infoframe*, %struct.dip_infoframe** %3, align 8
  %13 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %9, %7
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
