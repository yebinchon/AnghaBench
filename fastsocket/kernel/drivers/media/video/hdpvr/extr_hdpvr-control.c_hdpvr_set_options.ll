; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_hdpvr_set_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-control.c_hdpvr_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64 }

@CTRL_VIDEO_STD_TYPE = common dso_local global i32 0, align 4
@CTRL_VIDEO_INPUT_VALUE = common dso_local global i32 0, align 4
@CTRL_BITRATE_MODE_VALUE = common dso_local global i32 0, align 4
@CTRL_GOP_MODE_VALUE = common dso_local global i32 0, align 4
@CTRL_BRIGHTNESS = common dso_local global i32 0, align 4
@CTRL_CONTRAST = common dso_local global i32 0, align 4
@CTRL_HUE = common dso_local global i32 0, align 4
@CTRL_SATURATION = common dso_local global i32 0, align 4
@CTRL_SHARPNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdpvr_set_options(%struct.hdpvr_device* %0) #0 {
  %2 = alloca %struct.hdpvr_device*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %2, align 8
  %3 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %4 = load i32, i32* @CTRL_VIDEO_STD_TYPE, align 4
  %5 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %6 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 10
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %3, i32 %4, i64 %8)
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %11 = load i32, i32* @CTRL_VIDEO_INPUT_VALUE, align 4
  %12 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %13 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %10, i32 %11, i64 %16)
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %25 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @hdpvr_set_audio(%struct.hdpvr_device* %18, i64 %23, i32 %27)
  %29 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %30 = call i32 @hdpvr_set_bitrate(%struct.hdpvr_device* %29)
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %32 = load i32, i32* @CTRL_BITRATE_MODE_VALUE, align 4
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %34 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %31, i32 %32, i64 %36)
  %38 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %39 = load i32, i32* @CTRL_GOP_MODE_VALUE, align 4
  %40 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %41 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %38, i32 %39, i64 %43)
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %46 = load i32, i32* @CTRL_BRIGHTNESS, align 4
  %47 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %48 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %45, i32 %46, i64 %50)
  %52 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %53 = load i32, i32* @CTRL_CONTRAST, align 4
  %54 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %55 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %52, i32 %53, i64 %57)
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %60 = load i32, i32* @CTRL_HUE, align 4
  %61 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %62 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %59, i32 %60, i64 %64)
  %66 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %67 = load i32, i32* @CTRL_SATURATION, align 4
  %68 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %69 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %66, i32 %67, i64 %71)
  %73 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %74 = load i32, i32* @CTRL_SHARPNESS, align 4
  %75 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %76 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %73, i32 %74, i64 %78)
  ret i32 0
}

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i64) #1

declare dso_local i32 @hdpvr_set_audio(%struct.hdpvr_device*, i64, i32) #1

declare dso_local i32 @hdpvr_set_bitrate(%struct.hdpvr_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
