; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_ext_controls = type { i64 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"enter vidioc_g_ext_ctrls()\0A\00", align 1
@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"exit vidioc_g_ext_ctrls()\0A\00", align 1
@VIDIOC_G_EXT_CTRLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @vidioc_g_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %11, %struct.cx231xx_fh** %8, align 8
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %13 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %12, i32 0, i32 0
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %9, align 8
  %15 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %3
  %25 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 0
  %28 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %29 = load i32, i32* @VIDIOC_G_EXT_CTRLS, align 4
  %30 = call i32 @cx2341x_ext_ctrls(i32* %27, i32 0, %struct.v4l2_ext_controls* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx2341x_ext_ctrls(i32*, i32, %struct.v4l2_ext_controls*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
