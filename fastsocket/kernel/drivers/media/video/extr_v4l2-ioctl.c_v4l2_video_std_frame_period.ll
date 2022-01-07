; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_v4l2_video_std_frame_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_v4l2_video_std_frame_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fract = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_video_std_frame_period(i32 %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fract*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @V4L2_STD_525_60, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 0
  store i32 1001, i32* %11, align 4
  %12 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %12, i32 0, i32 1
  store i32 30000, i32* %13, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %17, i32 0, i32 1
  store i32 25, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
