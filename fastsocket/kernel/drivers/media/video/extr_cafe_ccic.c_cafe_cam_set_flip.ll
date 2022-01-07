; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_cam_set_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_cam_set_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@flip = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*)* @cafe_cam_set_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_cam_set_flip(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca %struct.v4l2_control, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %4 = call i32 @memset(%struct.v4l2_control* %3, i32 0, i32 8)
  %5 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %6 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @flip, align 4
  %8 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %10 = load i32, i32* @core, align 4
  %11 = load i32, i32* @s_ctrl, align 4
  %12 = call i32 @sensor_call(%struct.cafe_camera* %9, i32 %10, i32 %11, %struct.v4l2_control* %3)
  ret i32 %12
}

declare dso_local i32 @memset(%struct.v4l2_control*, i32, i32) #1

declare dso_local i32 @sensor_call(%struct.cafe_camera*, i32, i32, %struct.v4l2_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
