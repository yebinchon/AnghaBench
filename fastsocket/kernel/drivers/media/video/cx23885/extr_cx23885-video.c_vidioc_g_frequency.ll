; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32 }
%struct.cx23885_fh = type { i64, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i64, i32 }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.cx23885_fh*, align 8
  %9 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx23885_fh*
  store %struct.cx23885_fh* %11, %struct.cx23885_fh** %8, align 8
  %12 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %13 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %12, i32 0, i32 1
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %13, align 8
  store %struct.cx23885_dev* %14, %struct.cx23885_dev** %9, align 8
  %15 = load i64, i64* @UNSET, align 8
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %17 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %28 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %40 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %45 = load i32, i32* @tuner, align 4
  %46 = load i32, i32* @g_frequency, align 4
  %47 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %48 = call i32 @call_all(%struct.cx23885_dev* %44, i32 %45, i32 %46, %struct.v4l2_frequency* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %35, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
