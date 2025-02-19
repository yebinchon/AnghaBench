; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap24xxcam_fh = type { %struct.TYPE_4__, i32, %struct.omap24xxcam_device* }
%struct.TYPE_4__ = type { i32 }
%struct.omap24xxcam_device = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.omap24xxcam_fh*, align 8
  %8 = alloca %struct.omap24xxcam_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.omap24xxcam_fh*
  store %struct.omap24xxcam_fh* %11, %struct.omap24xxcam_fh** %7, align 8
  %12 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %13 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %12, i32 0, i32 2
  %14 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %13, align 8
  store %struct.omap24xxcam_device* %14, %struct.omap24xxcam_device** %8, align 8
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %27 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %30 = call i32 @vidioc_int_s_fmt_cap(i32 %28, %struct.v4l2_format* %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %33 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %31
  %38 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %39 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %47 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %49 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %37, %31
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %54 = call i32 @memset(%struct.v4l2_format* %53, i32 0, i32 4)
  %55 = load %struct.file*, %struct.file** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %58 = call i32 @vidioc_g_fmt_vid_cap(%struct.file* %55, i8* %56, %struct.v4l2_format* %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vidioc_int_s_fmt_cap(i32, %struct.v4l2_format*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

declare dso_local i32 @vidioc_g_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
