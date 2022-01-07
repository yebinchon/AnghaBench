; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_v4l2_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_v4l2_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx18_open_id* }
%struct.cx18_open_id = type { %struct.cx18* }
%struct.cx18 = type { i32 }
%struct.video_device = type { i32 }

@cx18_debug = common dso_local global i32 0, align 4
@CX18_DBGFLG_IOCTL = common dso_local global i32 0, align 4
@V4L2_DEBUG_IOCTL = common dso_local global i32 0, align 4
@V4L2_DEBUG_IOCTL_ARG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cx18_v4l2_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.cx18_open_id*, %struct.cx18_open_id** %14, align 8
  store %struct.cx18_open_id* %15, %struct.cx18_open_id** %8, align 8
  %16 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %17 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %16, i32 0, i32 0
  %18 = load %struct.cx18*, %struct.cx18** %17, align 8
  store %struct.cx18* %18, %struct.cx18** %9, align 8
  %19 = load %struct.cx18*, %struct.cx18** %9, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @cx18_debug, align 4
  %23 = load i32, i32* @CX18_DBGFLG_IOCTL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @V4L2_DEBUG_IOCTL, align 4
  %28 = load i32, i32* @V4L2_DEBUG_IOCTL_ARG, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.video_device*, %struct.video_device** %7, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %3
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @video_ioctl2(%struct.file* %33, i32 %34, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.video_device*, %struct.video_device** %7, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.cx18*, %struct.cx18** %9, align 8
  %40 = getelementptr inbounds %struct.cx18, %struct.cx18* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i64, i64* %10, align 8
  ret i64 %42
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @video_ioctl2(%struct.file*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
