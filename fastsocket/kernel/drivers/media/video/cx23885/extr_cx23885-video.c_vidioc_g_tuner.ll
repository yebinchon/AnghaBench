; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32 }
%struct.cx23885_dev = type { i64 }
%struct.cx23885_fh = type { %struct.cx23885_dev* }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cx23885_fh*
  %11 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %10, i32 0, i32 0
  %12 = load %struct.cx23885_dev*, %struct.cx23885_dev** %11, align 8
  store %struct.cx23885_dev* %12, %struct.cx23885_dev** %8, align 8
  %13 = load i64, i64* @UNSET, align 8
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %15 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 0, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %24
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %38 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %41 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 8
  %45 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %45, i32 0, i32 2
  store i32 65535, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %29, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
