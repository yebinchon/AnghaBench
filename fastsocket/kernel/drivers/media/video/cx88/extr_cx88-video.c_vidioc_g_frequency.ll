; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32 }
%struct.cx8800_fh = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cx88_core* }
%struct.cx88_core = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

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
  %8 = alloca %struct.cx8800_fh*, align 8
  %9 = alloca %struct.cx88_core*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx8800_fh*
  store %struct.cx8800_fh* %11, %struct.cx8800_fh** %8, align 8
  %12 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %13 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.cx88_core*, %struct.cx88_core** %15, align 8
  store %struct.cx88_core* %16, %struct.cx88_core** %9, align 8
  %17 = load i64, i64* @UNSET, align 8
  %18 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %19 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %31 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %43 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %48 = load i32, i32* @tuner, align 4
  %49 = load i32, i32* @g_frequency, align 4
  %50 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %51 = call i32 @call_all(%struct.cx88_core* %47, i32 %48, i32 %49, %struct.v4l2_frequency* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %38, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
