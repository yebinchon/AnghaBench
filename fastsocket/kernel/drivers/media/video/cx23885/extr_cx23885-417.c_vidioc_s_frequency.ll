; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx23885_fh* }
%struct.cx23885_fh = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i64, i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }

@CX2341X_ENC_STOP_CAPTURE = common dso_local global i32 0, align 4
@CX23885_END_NOW = common dso_local global i32 0, align 4
@CX23885_MPEG_CAPTURE = common dso_local global i32 0, align 4
@CX23885_RAW_BITS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"VIDIOC_S_FREQUENCY: dev type %d, f\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"VIDIOC_S_FREQUENCY: f tuner %d, f type %d\0A\00", align 1
@UNSET = common dso_local global i64 0, align 8
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
  %8 = alloca %struct.cx23885_fh*, align 8
  %9 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.cx23885_fh*, %struct.cx23885_fh** %11, align 8
  store %struct.cx23885_fh* %12, %struct.cx23885_fh** %8, align 8
  %13 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %14 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %13, i32 0, i32 0
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %14, align 8
  store %struct.cx23885_dev* %15, %struct.cx23885_dev** %9, align 8
  %16 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %17 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %16, i32 0, i32 0
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %17, align 8
  %19 = load i32, i32* @CX2341X_ENC_STOP_CAPTURE, align 4
  %20 = load i32, i32* @CX23885_END_NOW, align 4
  %21 = load i32, i32* @CX23885_MPEG_CAPTURE, align 4
  %22 = load i32, i32* @CX23885_RAW_BITS_NONE, align 4
  %23 = call i32 @cx23885_api_cmd(%struct.cx23885_dev* %18, i32 %19, i32 3, i32 0, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %25 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32, i8*, i64, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, i64, ...) @dprintk(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load i64, i64* @UNSET, align 8
  %36 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %37 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %73

43:                                               ; preds = %3
  %44 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %73

51:                                               ; preds = %43
  %52 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %73

60:                                               ; preds = %51
  %61 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %65 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %67 = load i32, i32* @tuner, align 4
  %68 = load i32, i32* @s_frequency, align 4
  %69 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %70 = call i32 @call_all(%struct.cx23885_dev* %66, i32 %67, i32 %68, %struct.v4l2_frequency* %69)
  %71 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %72 = call i32 @cx23885_initialize_codec(%struct.cx23885_dev* %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %60, %57, %48, %40
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @cx23885_api_cmd(%struct.cx23885_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i64, ...) #1

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @cx23885_initialize_codec(%struct.cx23885_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
