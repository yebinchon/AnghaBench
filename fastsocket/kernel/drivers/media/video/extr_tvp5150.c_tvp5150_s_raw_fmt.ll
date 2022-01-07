; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_s_raw_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_s_raw_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_vbi_format = type { i64, i32* }

@V4L2_PIX_FMT_GREY = common dso_local global i64 0, align 8
@TVP5150_LUMA_PROC_CTL_1 = common dso_local global i32 0, align 4
@TVP5150_VERT_BLANKING_START = common dso_local global i32 0, align 4
@TVP5150_VERT_BLANKING_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_vbi_format*)* @tvp5150_s_raw_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_raw_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_vbi_format*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_vbi_format* %1, %struct.v4l2_vbi_format** %4, align 8
  %5 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @V4L2_PIX_FMT_GREY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load i32, i32* @TVP5150_LUMA_PROC_CTL_1, align 4
  %13 = call i32 @tvp5150_write(%struct.v4l2_subdev* %11, i32 %12, i32 112)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 18
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 18
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %30 = load i32, i32* @TVP5150_VERT_BLANKING_START, align 4
  %31 = call i32 @tvp5150_write(%struct.v4l2_subdev* %29, i32 %30, i32 0)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load i32, i32* @TVP5150_VERT_BLANKING_STOP, align 4
  %34 = call i32 @tvp5150_write(%struct.v4l2_subdev* %32, i32 %33, i32 1)
  br label %35

35:                                               ; preds = %28, %21, %14
  ret i32 0
}

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
