; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_crop = type { i64, i32 }
%struct.ivtv_open_id = type { i32, %struct.ivtv* }
%struct.ivtv = type { i32, i32, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_crop*)* @ivtv_g_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_crop(%struct.file* %0, i8* %1, %struct.v4l2_crop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_crop*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.yuv_playback_info*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_crop* %2, %struct.v4l2_crop** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ivtv_open_id*
  store %struct.ivtv_open_id* %13, %struct.ivtv_open_id** %8, align 8
  %14 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %15 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %14, i32 0, i32 1
  %16 = load %struct.ivtv*, %struct.ivtv** %15, align 8
  store %struct.ivtv* %16, %struct.ivtv** %9, align 8
  %17 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 2
  store %struct.yuv_playback_info* %18, %struct.yuv_playback_info** %10, align 8
  %19 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %20 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %3
  %28 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @IVTV_DEC_STREAM_TYPE_YUV, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %40 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %50

44:                                               ; preds = %34
  %45 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %46 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  store i32 0, i32* %4, align 4
  br label %54

51:                                               ; preds = %27, %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
