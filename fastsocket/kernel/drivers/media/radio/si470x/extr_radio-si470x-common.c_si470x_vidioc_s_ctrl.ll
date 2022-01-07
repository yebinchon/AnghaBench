; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.si470x_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYSCONFIG2_VOLUME = common dso_local global i32 0, align 4
@SYSCONFIG2 = common dso_local global i64 0, align 8
@POWERCFG_DMUTE = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set control failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @si470x_vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_control*, align 8
  %7 = alloca %struct.si470x_device*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.si470x_device* @video_drvdata(%struct.file* %9)
  store %struct.si470x_device* %10, %struct.si470x_device** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %12 = call i32 @si470x_disconnect_check(%struct.si470x_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %71 [
    i32 128, label %20
    i32 129, label %43
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @SYSCONFIG2_VOLUME, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %24 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @SYSCONFIG2, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %22
  store i32 %29, i32* %27, align 4
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %34 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @SYSCONFIG2, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  %40 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %41 = load i64, i64* @SYSCONFIG2, align 8
  %42 = call i32 @si470x_set_register(%struct.si470x_device* %40, i64 %41)
  store i32 %42, i32* %8, align 4
  br label %74

43:                                               ; preds = %16
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* @POWERCFG_DMUTE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %52 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @POWERCFG, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %50
  store i32 %57, i32* %55, align 4
  br label %67

58:                                               ; preds = %43
  %59 = load i32, i32* @POWERCFG_DMUTE, align 4
  %60 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %61 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @POWERCFG, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %59
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %48
  %68 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %69 = load i64, i64* @POWERCFG, align 8
  %70 = call i32 @si470x_set_register(%struct.si470x_device* %68, i64 %69)
  store i32 %70, i32* %8, align 4
  br label %74

71:                                               ; preds = %16
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %67, %20
  br label %75

75:                                               ; preds = %74, %15
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %80 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_warn(i32* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %75
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @si470x_disconnect_check(%struct.si470x_device*) #1

declare dso_local i32 @si470x_set_register(%struct.si470x_device*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
