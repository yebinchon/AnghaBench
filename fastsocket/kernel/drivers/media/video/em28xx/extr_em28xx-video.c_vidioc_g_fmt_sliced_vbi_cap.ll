; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_g_fmt_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_g_fmt_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32 }

@vbi = common dso_local global i32 0, align 4
@g_sliced_fmt = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %12, %struct.em28xx_fh** %8, align 8
  %13 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %14 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %13, i32 0, i32 0
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %9, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %17 = call i32 @check_dev(%struct.em28xx* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 0
  %29 = load i32, i32* @vbi, align 4
  %30 = load i32, i32* @g_sliced_fmt, align 4
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @v4l2_device_call_all(i32* %28, i32 0, i32 %29, i32 %30, %struct.TYPE_4__* %33)
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %22
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
