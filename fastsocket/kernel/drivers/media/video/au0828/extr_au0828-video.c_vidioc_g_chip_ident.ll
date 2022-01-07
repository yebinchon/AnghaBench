; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_g_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_g_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dbg_chip_ident = type { i64, i32, i64 }
%struct.au0828_fh = type { %struct.au0828_dev* }
%struct.au0828_dev = type { i32 }

@V4L2_IDENT_NONE = common dso_local global i64 0, align 8
@V4L2_IDENT_AU0828 = common dso_local global i64 0, align 8
@core = common dso_local global i32 0, align 4
@g_chip_ident = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dbg_chip_ident*)* @vidioc_g_chip_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_chip_ident(%struct.file* %0, i8* %1, %struct.v4l2_dbg_chip_ident* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %8 = alloca %struct.au0828_fh*, align 8
  %9 = alloca %struct.au0828_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dbg_chip_ident* %2, %struct.v4l2_dbg_chip_ident** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.au0828_fh*
  store %struct.au0828_fh* %11, %struct.au0828_fh** %8, align 8
  %12 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %13 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %12, i32 0, i32 0
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %13, align 8
  store %struct.au0828_dev* %14, %struct.au0828_dev** %9, align 8
  %15 = load i64, i64* @V4L2_IDENT_NONE, align 8
  %16 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %20, i32 0, i32 1
  %22 = call i64 @v4l2_chip_match_host(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* @V4L2_IDENT_AU0828, align 8
  %26 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %30 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %29, i32 0, i32 0
  %31 = load i32, i32* @core, align 4
  %32 = load i32, i32* @g_chip_ident, align 4
  %33 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %34 = call i32 @v4l2_device_call_all(i32* %30, i32 0, i32 %31, i32 %32, %struct.v4l2_dbg_chip_ident* %33)
  %35 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_IDENT_NONE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @v4l2_chip_match_host(i32*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_dbg_chip_ident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
