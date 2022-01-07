; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_sliced_vbi_format }
%struct.v4l2_sliced_vbi_format = type { i32, i32, i64* }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32, i64 }

@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@V4L2_SLICED_VBI_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_VBI_525 = common dso_local global i32 0, align 4
@vbi = common dso_local global i32 0, align 4
@g_sliced_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_g_fmt_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_fmt_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %9 = alloca %struct.ivtv_open_id*, align 8
  %10 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_sliced_vbi_format* %13, %struct.v4l2_sliced_vbi_format** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ivtv_open_id*
  store %struct.ivtv_open_id* %15, %struct.ivtv_open_id** %9, align 8
  %16 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %9, align 8
  %17 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %16, i32 0, i32 1
  %18 = load %struct.ivtv*, %struct.ivtv** %17, align 8
  store %struct.ivtv* %18, %struct.ivtv** %10, align 8
  %19 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %24 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %27, i32 0, i32 0
  store i32 144, i32* %28, align 8
  %29 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %9, align 8
  %30 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %3
  %35 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @V4L2_SLICED_VBI_625, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @V4L2_SLICED_VBI_525, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %48 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ivtv_expand_service_set(%struct.v4l2_sliced_vbi_format* %47, i64 %50)
  store i32 0, i32* %4, align 4
  br label %64

52:                                               ; preds = %3
  %53 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %54 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @vbi, align 4
  %57 = load i32, i32* @g_sliced_fmt, align 4
  %58 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %59 = call i32 @v4l2_subdev_call(i32 %55, i32 %56, i32 %57, %struct.v4l2_sliced_vbi_format* %58)
  %60 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %61 = call i32 @ivtv_get_service_set(%struct.v4l2_sliced_vbi_format* %60)
  %62 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %63 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %52, %43
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ivtv_expand_service_set(%struct.v4l2_sliced_vbi_format*, i64) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_sliced_vbi_format*) #1

declare dso_local i32 @ivtv_get_service_set(%struct.v4l2_sliced_vbi_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
