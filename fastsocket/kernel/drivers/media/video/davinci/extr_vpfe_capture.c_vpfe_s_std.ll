; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vpfe_device = type { i32, i32, i64, %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vpfe_s_std\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"streaming is started\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set standard\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpfe_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_subdev_info*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpfe_device* @video_drvdata(%struct.file* %11)
  store %struct.vpfe_device* %12, %struct.vpfe_device** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 1
  %16 = call i32 @v4l2_dbg(i32 1, i32 %13, i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock_interruptible(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 3
  %27 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %26, align 8
  store %struct.vpfe_subdev_info* %27, %struct.vpfe_subdev_info** %9, align 8
  %28 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %29 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %34 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %33, i32 0, i32 1
  %35 = call i32 @v4l2_err(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %59

38:                                               ; preds = %24
  %39 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %40 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %39, i32 0, i32 1
  %41 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %42 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @core, align 4
  %45 = load i32, i32* @s_std, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @v4l2_device_call_until_err(i32* %40, i32 %43, i32 %44, i32 %45, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %53 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %52, i32 0, i32 1
  %54 = call i32 @v4l2_err(i32* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %59

55:                                               ; preds = %38
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @vpfe_config_image_format(%struct.vpfe_device* %56, i32* %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %51, %32
  %60 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %61 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vpfe_config_image_format(%struct.vpfe_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
