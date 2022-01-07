; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.v4l2_control = type { i32 }

@core = common dso_local global i32 0, align 4
@g_ctrl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid control 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, %struct.v4l2_control*)* @cx18_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_g_ctrl(%struct.cx18* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 131, label %9
    i32 129, label %9
    i32 128, label %9
    i32 130, label %9
    i32 132, label %17
    i32 134, label %17
    i32 137, label %17
    i32 136, label %17
    i32 133, label %17
    i32 135, label %17
  ]

9:                                                ; preds = %2, %2, %2, %2
  %10 = load %struct.cx18*, %struct.cx18** %4, align 8
  %11 = getelementptr inbounds %struct.cx18, %struct.cx18* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @core, align 4
  %14 = load i32, i32* @g_ctrl, align 4
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %16 = call i32 @v4l2_subdev_call(i32 %12, i32 %13, i32 %14, %struct.v4l2_control* %15)
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2, %2, %2, %2, %2, %2
  %18 = load %struct.cx18*, %struct.cx18** %4, align 8
  %19 = getelementptr inbounds %struct.cx18, %struct.cx18* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @core, align 4
  %22 = load i32, i32* @g_ctrl, align 4
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %24 = call i32 @v4l2_subdev_call(i32 %20, i32 %21, i32 %22, %struct.v4l2_control* %23)
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %17, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @CX18_DEBUG_IOCTL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
