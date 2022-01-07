; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_out_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_out_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { %struct.TYPE_5__, i32*, i64, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.ivtv = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }

@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_g_fmt_vid_out_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_fmt_vid_out_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.v4l2_window*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ivtv_open_id*
  %12 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %11, i32 0, i32 0
  %13 = load %struct.ivtv*, %struct.ivtv** %12, align 8
  store %struct.ivtv* %13, %struct.ivtv** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.v4l2_window* %16, %struct.v4l2_window** %9, align 8
  %17 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %3
  %27 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %38 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %39 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %45 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %26, %23
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
