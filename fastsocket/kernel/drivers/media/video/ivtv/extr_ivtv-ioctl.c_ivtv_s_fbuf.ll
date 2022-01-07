; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }
%struct.ivtv = type { i32, i32, i32, i32, i32, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32 }

@V4L2_CAP_VIDEO_OUTPUT_OVERLAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_INV_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_OVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @ivtv_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.yuv_playback_info*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ivtv_open_id*
  store %struct.ivtv_open_id* %12, %struct.ivtv_open_id** %8, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 0
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %9, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 5
  store %struct.yuv_playback_info* %17, %struct.yuv_playback_info** %10, align 8
  %18 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %80

27:                                               ; preds = %3
  %28 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %80

35:                                               ; preds = %27
  %36 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_FBUF_FLAG_GLOBAL_ALPHA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %49 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_INV_ALPHA, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %64 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %66 = call i32 @ivtv_set_osd_alpha(%struct.ivtv* %65)
  %67 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @V4L2_FBUF_FLAG_OVERLAY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %75 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %79 = call i32 @ivtv_g_fbuf(%struct.file* %76, i8* %77, %struct.v4l2_framebuffer* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %35, %32, %24
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @ivtv_set_osd_alpha(%struct.ivtv*) #1

declare dso_local i32 @ivtv_g_fbuf(%struct.file*, i8*, %struct.v4l2_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
