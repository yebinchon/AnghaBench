; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.au0828_fh = type { %struct.au0828_dev* }
%struct.au0828_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.au0828_fh*, align 8
  %9 = alloca %struct.au0828_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.au0828_fh*
  store %struct.au0828_fh* %11, %struct.au0828_fh** %8, align 8
  %12 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %13 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %12, i32 0, i32 0
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %13, align 8
  store %struct.au0828_dev* %14, %struct.au0828_dev** %9, align 8
  %15 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %36 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %38 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %37, i32 0, i32 0
  %39 = load i32, i32* @tuner, align 4
  %40 = load i32, i32* @s_frequency, align 4
  %41 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %42 = call i32 @v4l2_device_call_all(i32* %38, i32 0, i32 %39, i32 %40, %struct.v4l2_frequency* %41)
  %43 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %44 = call i32 @au0828_analog_stream_reset(%struct.au0828_dev* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %31, %28, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @au0828_analog_stream_reset(%struct.au0828_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
