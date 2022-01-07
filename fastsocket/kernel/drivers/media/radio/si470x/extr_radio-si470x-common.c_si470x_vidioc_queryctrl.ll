; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32 }
%struct.si470x_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_BASE = common dso_local global i32 0, align 4
@V4L2_CID_LASTP1 = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"query controls failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @si470x_vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.si470x_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.si470x_device* @video_drvdata(%struct.file* %10)
  store %struct.si470x_device* %11, %struct.si470x_device** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @V4L2_CID_BASE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %30 [
    i32 128, label %24
    i32 129, label %27
  ]

24:                                               ; preds = %20
  %25 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %26 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %25, i32 0, i32 15, i32 1, i32 15)
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %20
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %29 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %28, i32 0, i32 1, i32 1, i32 1)
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_CID_LASTP1, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %43 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %35, %30
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %51 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %27, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
