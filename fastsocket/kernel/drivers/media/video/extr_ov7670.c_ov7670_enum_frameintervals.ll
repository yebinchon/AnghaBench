; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frmivalenum = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ov7670_frame_rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frmivalenum*)* @ov7670_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_enum_frameintervals(%struct.v4l2_subdev* %0, %struct.v4l2_frmivalenum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frmivalenum*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frmivalenum* %1, %struct.v4l2_frmivalenum** %5, align 8
  %6 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32*, i32** @ov7670_frame_rates, align 8
  %10 = call i64 @ARRAY_SIZE(i32* %9)
  %11 = icmp uge i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %17 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32*, i32** @ov7670_frame_rates, align 8
  %23 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
