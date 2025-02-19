; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_HM12 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx18_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx18_open_id*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cx18_open_id*
  store %struct.cx18_open_id* %11, %struct.cx18_open_id** %7, align 8
  %12 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %13 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %12, i32 0, i32 1
  %14 = load %struct.cx18*, %struct.cx18** %13, align 8
  store %struct.cx18* %14, %struct.cx18** %8, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.v4l2_pix_format* %17, %struct.v4l2_pix_format** %9, align 8
  %18 = load %struct.cx18*, %struct.cx18** %8, align 8
  %19 = getelementptr inbounds %struct.cx18, %struct.cx18* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.cx18*, %struct.cx18** %8, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %39 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %3
  %44 = load i32, i32* @V4L2_PIX_FMT_HM12, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 720
  %51 = mul nsw i32 %50, 3
  %52 = sdiv i32 %51, 2
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 2
  store i32 720, i32* %56, align 8
  br label %65

57:                                               ; preds = %3
  %58 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 1
  store i32 131072, i32* %62, align 4
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %57, %43
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
