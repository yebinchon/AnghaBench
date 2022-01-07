; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i32, i32 }

@NUM_INPUTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Camera %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %8 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NUM_INPUTS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %18 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @V4L2_STD_525_60, align 4
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @sprintf(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %16, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @sprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
