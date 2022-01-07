; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }
%struct.ivtv = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i64 0, align 8
@V4L2_MBUS_FMT_FIXED = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_mbus_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ivtv_open_id*
  store %struct.ivtv_open_id* %15, %struct.ivtv_open_id** %8, align 8
  %16 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %17 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %16, i32 0, i32 0
  %18 = load %struct.ivtv*, %struct.ivtv** %17, align 8
  store %struct.ivtv* %18, %struct.ivtv** %9, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = call i32 @ivtv_try_fmt_vid_cap(%struct.file* %19, i8* %20, %struct.v4l2_format* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %104

37:                                               ; preds = %3
  %38 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %46 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %104

52:                                               ; preds = %44, %37
  %53 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %54 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %53, i32 0, i32 2
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %104

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @v4l2_ctrl_g_ctrl(i32 %72)
  %74 = load i64, i64* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %60
  %77 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %60
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %13, align 4
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @V4L2_MBUS_FMT_FIXED, align 4
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @video, align 4
  %98 = load i32, i32* @s_mbus_fmt, align 4
  %99 = call i32 @v4l2_subdev_call(i32 %96, i32 %97, i32 %98, %struct.v4l2_mbus_framefmt* %10)
  %100 = load %struct.file*, %struct.file** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %103 = call i32 @ivtv_g_fmt_vid_cap(%struct.file* %100, i8* %101, %struct.v4l2_format* %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %83, %57, %51, %35
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @ivtv_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @ivtv_g_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
