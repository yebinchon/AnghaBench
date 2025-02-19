; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32 }
%struct.vpfe_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { i32* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vpfe_enum_input\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"input information not found for the subdev\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vpfe_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_subdev_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vpfe_device* @video_drvdata(%struct.file* %12)
  store %struct.vpfe_device* %13, %struct.vpfe_device** %8, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %16 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %15, i32 0, i32 1
  %17 = call i32 @v4l2_dbg(i32 1, i32 %14, i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %19 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @vpfe_get_subdev_input_index(%struct.vpfe_device* %18, i32* %10, i32* %11, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 1
  %27 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %3
  %31 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %32 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %35, i64 %37
  store %struct.vpfe_subdev_info* %38, %struct.vpfe_subdev_info** %9, align 8
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %41 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @memcpy(%struct.v4l2_input* %39, i32* %45, i32 4)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %30, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i64 @vpfe_get_subdev_input_index(%struct.vpfe_device*, i32*, i32*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @memcpy(%struct.v4l2_input*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
