; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64 }
%struct.cx23885_fh = type { i32, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
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
  %15 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 0, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %35 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 1, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %43 = icmp ne i64 %41, %42
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i1 [ false, %33 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %44
  %53 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %54 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %55 = call i32 @cx23885_set_freq(%struct.cx23885_dev* %53, %struct.v4l2_frequency* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %49, %30
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cx23885_set_freq(%struct.cx23885_dev*, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
