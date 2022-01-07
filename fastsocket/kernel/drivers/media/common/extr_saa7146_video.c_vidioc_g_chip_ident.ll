; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_g_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_g_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dbg_chip_ident = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@V4L2_IDENT_NONE = common dso_local global i32 0, align 4
@V4L2_CHIP_MATCH_HOST = common dso_local global i64 0, align 8
@V4L2_IDENT_SAA7146 = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@g_chip_ident = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dbg_chip_ident*)* @vidioc_g_chip_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_chip_ident(%struct.file* %0, i8* %1, %struct.v4l2_dbg_chip_ident* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %8 = alloca %struct.saa7146_fh*, align 8
  %9 = alloca %struct.saa7146_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dbg_chip_ident* %2, %struct.v4l2_dbg_chip_ident** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  store %struct.saa7146_fh* %11, %struct.saa7146_fh** %8, align 8
  %12 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %13 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %13, align 8
  store %struct.saa7146_dev* %14, %struct.saa7146_dev** %9, align 8
  %15 = load i32, i32* @V4L2_IDENT_NONE, align 4
  %16 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_CHIP_MATCH_HOST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @V4L2_IDENT_SAA7146, align 4
  %34 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %43

36:                                               ; preds = %26, %3
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %38 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %37, i32 0, i32 0
  %39 = load i32, i32* @core, align 4
  %40 = load i32, i32* @g_chip_ident, align 4
  %41 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %42 = call i32 @v4l2_device_call_until_err(i32* %38, i32 0, i32 %39, i32 %40, %struct.v4l2_dbg_chip_ident* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, %struct.v4l2_dbg_chip_ident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
