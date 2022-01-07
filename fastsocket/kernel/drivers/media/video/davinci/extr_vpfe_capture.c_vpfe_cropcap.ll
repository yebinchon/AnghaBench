; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vpfe_device = type { i64, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpfe_cropcap\0A\00", align 1
@vpfe_standards = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @vpfe_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vpfe_device* @video_drvdata(%struct.file* %9)
  store %struct.vpfe_device* %10, %struct.vpfe_device** %8, align 8
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 1
  %14 = call i32 @v4l2_dbg(i32 1, i32 %11, i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %16 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vpfe_standards, align 8
  %19 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %18)
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %26 = call i32 @memset(%struct.v4l2_cropcap* %25, i32 0, i32 24)
  %27 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %28 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vpfe_standards, align 8
  %31 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %32 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %36, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vpfe_standards, align 8
  %44 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %45 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vpfe_standards, align 8
  %57 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %58 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %24, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.v4l2_cropcap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
