; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_try_fmt_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_try_fmt_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_sliced_vbi_format }
%struct.v4l2_sliced_vbi_format = type { i32, i64, i64* }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32 }

@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_try_fmt_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_try_fmt_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
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
  %19 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %9, align 8
  %20 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = call i32 @ivtv_g_fmt_sliced_vbi_cap(%struct.file* %25, i8* %26, %struct.v4l2_format* %27)
  store i32 %28, i32* %4, align 4
  br label %60

29:                                               ; preds = %3
  %30 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %30, i32 0, i32 0
  store i32 144, i32* %31, align 8
  %32 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %37 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %46 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %47 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ivtv_expand_service_set(%struct.v4l2_sliced_vbi_format* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %29
  %51 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %52 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @check_service_set(%struct.v4l2_sliced_vbi_format* %51, i32 %54)
  %56 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %57 = call i64 @ivtv_get_service_set(%struct.v4l2_sliced_vbi_format* %56)
  %58 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %50, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ivtv_g_fmt_sliced_vbi_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @ivtv_expand_service_set(%struct.v4l2_sliced_vbi_format*, i32) #1

declare dso_local i32 @check_service_set(%struct.v4l2_sliced_vbi_format*, i32) #1

declare dso_local i64 @ivtv_get_service_set(%struct.v4l2_sliced_vbi_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
