; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7164_vbi_fh* }
%struct.saa7164_vbi_fh = type { %struct.saa7164_port* }
%struct.saa7164_port = type { %struct.saa7164_dev* }
%struct.saa7164_dev = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@DBGLVL_VBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VIDIOC_G_TUNER: tuner type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7164_vbi_fh*, align 8
  %9 = alloca %struct.saa7164_port*, align 8
  %10 = alloca %struct.saa7164_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %12, align 8
  store %struct.saa7164_vbi_fh* %13, %struct.saa7164_vbi_fh** %8, align 8
  %14 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %8, align 8
  %15 = getelementptr inbounds %struct.saa7164_vbi_fh, %struct.saa7164_vbi_fh* %14, i32 0, i32 0
  %16 = load %struct.saa7164_port*, %struct.saa7164_port** %15, align 8
  store %struct.saa7164_port* %16, %struct.saa7164_port** %9, align 8
  %17 = load %struct.saa7164_port*, %struct.saa7164_port** %9, align 8
  %18 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %17, i32 0, i32 0
  %19 = load %struct.saa7164_dev*, %struct.saa7164_dev** %18, align 8
  store %struct.saa7164_dev* %19, %struct.saa7164_dev** %10, align 8
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %36 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @DBGLVL_VBI, align 4
  %41 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dprintk(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
