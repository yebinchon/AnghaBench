; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32 }
%struct.cx88_core = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cx8800_fh = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cx88_core* }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@MO_DEVICE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.cx88_core*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx8800_fh*
  %12 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.cx88_core*, %struct.cx88_core** %14, align 8
  store %struct.cx88_core* %15, %struct.cx88_core** %8, align 8
  %16 = load i64, i64* @UNSET, align 8
  %17 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %18 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 0, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %28
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %45 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 8
  %49 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %50 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %51 = call i32 @cx88_get_stereo(%struct.cx88_core* %49, %struct.v4l2_tuner* %50)
  %52 = load i32, i32* @MO_DEVICE_STATUS, align 4
  %53 = call i32 @cx_read(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 32
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 65535, i32 0
  %59 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %36, %33, %25
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @cx88_get_stereo(%struct.cx88_core*, %struct.v4l2_tuner*) #1

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
