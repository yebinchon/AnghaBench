; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64 }
%struct.cx8800_fh = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

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
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.cx88_core*, %struct.cx88_core** %15, align 8
  store %struct.cx88_core* %16, %struct.cx88_core** %9, align 8
  %17 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %18 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 0, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ false, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %58

35:                                               ; preds = %27
  %36 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %37 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 1, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %45 = icmp ne i64 %43, %44
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %56 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %57 = call i32 @cx88_set_freq(%struct.cx88_core* %55, %struct.v4l2_frequency* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %51, %32
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cx88_set_freq(%struct.cx88_core*, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
