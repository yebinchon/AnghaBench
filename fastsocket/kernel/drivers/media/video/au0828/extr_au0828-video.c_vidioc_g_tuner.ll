; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }
%struct.au0828_fh = type { %struct.au0828_dev* }
%struct.au0828_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Auvitek tuner\00", align 1
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.au0828_fh*, align 8
  %9 = alloca %struct.au0828_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.au0828_fh*
  store %struct.au0828_fh* %11, %struct.au0828_fh** %8, align 8
  %12 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %13 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %12, i32 0, i32 0
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %13, align 8
  store %struct.au0828_dev* %14, %struct.au0828_dev** %9, align 8
  %15 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strcpy(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %28 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %27, i32 0, i32 0
  %29 = load i32, i32* @tuner, align 4
  %30 = load i32, i32* @g_tuner, align 4
  %31 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %32 = call i32 @v4l2_device_call_all(i32* %28, i32 0, i32 %29, i32 %30, %struct.v4l2_tuner* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
