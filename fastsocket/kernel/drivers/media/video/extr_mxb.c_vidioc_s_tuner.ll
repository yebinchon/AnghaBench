; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32, i64 }
%struct.saa7146_dev = type { i64 }
%struct.mxb = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [60 x i8] c"VIDIOC_S_TUNER: channel %d does not have a tuner attached.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_tuner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.mxb*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %8, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mxb*
  store %struct.mxb* %17, %struct.mxb** %9, align 8
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @DEB_D(i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %3
  %31 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mxb*, %struct.mxb** %9, align 8
  %35 = getelementptr inbounds %struct.mxb, %struct.mxb* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %37 = load i32, i32* @tuner, align 4
  %38 = load i32, i32* @s_tuner, align 4
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %40 = call i32 @call_all(%struct.saa7146_dev* %36, i32 %37, i32 %38, %struct.v4l2_tuner* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @call_all(%struct.saa7146_dev*, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
