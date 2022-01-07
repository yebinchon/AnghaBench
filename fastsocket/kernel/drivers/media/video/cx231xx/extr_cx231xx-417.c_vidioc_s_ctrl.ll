; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 }
%struct.v4l2_control = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"enter vidioc_s_ctrl()\0A\00", align 1
@core = common dso_local global i32 0, align 4
@s_ctrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"exit vidioc_s_ctrl()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_control*, align 8
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %10, align 8
  store %struct.cx231xx_fh* %11, %struct.cx231xx_fh** %7, align 8
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %13 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %12, i32 0, i32 0
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %8, align 8
  %15 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %17 = load i32, i32* @core, align 4
  %18 = load i32, i32* @s_ctrl, align 4
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %20 = call i32 @call_all(%struct.cx231xx* %16, i32 %17, i32 %18, %struct.v4l2_control* %19)
  %21 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, %struct.v4l2_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
