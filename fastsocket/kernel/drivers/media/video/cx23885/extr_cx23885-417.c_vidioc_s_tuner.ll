; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx23885_fh* }
%struct.cx23885_fh = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i64 }
%struct.v4l2_tuner = type { i32 }

@UNSET = common dso_local global i64 0, align 8
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
  %8 = alloca %struct.cx23885_fh*, align 8
  %9 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.cx23885_fh*, %struct.cx23885_fh** %11, align 8
  store %struct.cx23885_fh* %12, %struct.cx23885_fh** %8, align 8
  %13 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %14 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %13, i32 0, i32 0
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %14, align 8
  store %struct.cx23885_dev* %15, %struct.cx23885_dev** %9, align 8
  %16 = load i64, i64* @UNSET, align 8
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %26 = load i32, i32* @tuner, align 4
  %27 = load i32, i32* @s_tuner, align 4
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %29 = call i32 @call_all(%struct.cx23885_dev* %25, i32 %26, i32 %27, %struct.v4l2_tuner* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
