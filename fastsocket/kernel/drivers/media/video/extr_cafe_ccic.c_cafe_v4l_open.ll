; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_v4l_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_v4l_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cafe_camera* }
%struct.cafe_camera = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cafe_v4l_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_v4l_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.cafe_camera*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.cafe_camera* @video_drvdata(%struct.file* %4)
  store %struct.cafe_camera* %5, %struct.cafe_camera** %3, align 8
  %6 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  store %struct.cafe_camera* %6, %struct.cafe_camera** %8, align 8
  %9 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %10 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %13 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %18 = call i32 @cafe_ctlr_power_up(%struct.cafe_camera* %17)
  %19 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %20 = call i32 @__cafe_cam_reset(%struct.cafe_camera* %19)
  %21 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %22 = call i32 @cafe_set_config_needed(%struct.cafe_camera* %21, i32 1)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %25 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %29 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  ret i32 0
}

declare dso_local %struct.cafe_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cafe_ctlr_power_up(%struct.cafe_camera*) #1

declare dso_local i32 @__cafe_cam_reset(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_set_config_needed(%struct.cafe_camera*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
