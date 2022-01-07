; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_cam_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_cam_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@core = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_mbus_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*)* @cafe_cam_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_cam_configure(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt, align 4
  %4 = alloca i32, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %5 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %6 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %5, i32 0, i32 1
  %7 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %8 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %3, i32* %6, i32 %9)
  %11 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %12 = load i32, i32* @core, align 4
  %13 = load i32, i32* @init, align 4
  %14 = call i32 @sensor_call(%struct.cafe_camera* %11, i32 %12, i32 %13, %struct.v4l2_mbus_framefmt* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %19 = load i32, i32* @video, align 4
  %20 = load i32, i32* @s_mbus_fmt, align 4
  %21 = call i32 @sensor_call(%struct.cafe_camera* %18, i32 %19, i32 %20, %struct.v4l2_mbus_framefmt* %3)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %24 = call i64 @cafe_cam_set_flip(%struct.cafe_camera* %23)
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt*, i32*, i32) #1

declare dso_local i32 @sensor_call(%struct.cafe_camera*, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i64 @cafe_cam_set_flip(%struct.cafe_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
