; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.zoltrix = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.zoltrix*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.zoltrix* @video_drvdata(%struct.file* %9)
  store %struct.zoltrix* %10, %struct.zoltrix** %8, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %27 [
    i32 129, label %14
    i32 128, label %20
  ]

14:                                               ; preds = %3
  %15 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %16 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %22 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 4096
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %20, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.zoltrix* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
