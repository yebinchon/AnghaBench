; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_vidioc_s_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_vidioc_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32, %struct.video_data }
%struct.video_data = type { %struct.running_context }
%struct.running_context = type { i32, %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32 }

@V4L2_PIX_FMT_RGB565 = common dso_local global i64 0, align 8
@TLG_TUNER_VID_FORMAT_RGB_565 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@TLG_TUNER_VID_FORMAT_YUV = common dso_local global i64 0, align 8
@VIDEO_STREAM_FMT_SEL = common dso_local global i32 0, align 4
@TLG_TUNE_VID_RES_720 = common dso_local global i64 0, align 8
@TLG_TUNE_VID_RES_704 = common dso_local global i64 0, align 8
@VIDEO_ROSOLU_SEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*, %struct.v4l2_pix_format*)* @pd_vidioc_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_vidioc_s_fmt(%struct.poseidon* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.poseidon*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.video_data*, align 8
  %7 = alloca %struct.running_context*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.poseidon* %0, %struct.poseidon** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  %12 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %13 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %12, i32 0, i32 1
  store %struct.video_data* %13, %struct.video_data** %6, align 8
  %14 = load %struct.video_data*, %struct.video_data** %6, align 8
  %15 = getelementptr inbounds %struct.video_data, %struct.video_data* %14, i32 0, i32 0
  store %struct.running_context* %15, %struct.running_context** %7, align 8
  %16 = load %struct.running_context*, %struct.running_context** %7, align 8
  %17 = getelementptr inbounds %struct.running_context, %struct.running_context* %16, i32 0, i32 1
  store %struct.v4l2_pix_format* %17, %struct.v4l2_pix_format** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_PIX_FMT_RGB565, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @TLG_TUNER_VID_FORMAT_RGB_565, align 8
  store i64 %24, i64* %11, align 8
  br label %30

25:                                               ; preds = %2
  %26 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* @TLG_TUNER_VID_FORMAT_YUV, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %25, %23
  %31 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %32 = load i32, i32* @VIDEO_STREAM_FMT_SEL, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @send_set_req(%struct.poseidon* %31, i32 %32, i64 %33, i64* %10)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* @TLG_TUNE_VID_RES_720, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %41 [
    i32 704, label %39
    i32 720, label %44
  ]

39:                                               ; preds = %30
  %40 = load i64, i64* @TLG_TUNE_VID_RES_704, align 8
  store i64 %40, i64* %11, align 8
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 1
  store i32 720, i32* %43, align 8
  br label %44

44:                                               ; preds = %30, %41
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %47 = load i32, i32* @VIDEO_ROSOLU_SEL, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @send_set_req(%struct.poseidon* %46, i32 %47, i64 %48, i64* %10)
  %50 = load i64, i64* %9, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54, %45
  %58 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %59 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %126

63:                                               ; preds = %54
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.running_context*, %struct.running_context** %7, align 8
  %70 = getelementptr inbounds %struct.running_context, %struct.running_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @V4L2_STD_525_60, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 480, i32 576
  %77 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %63
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %86, %63
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 2
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = mul nsw i32 %117, 2
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %94, %86
  %122 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %123 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %124 = bitcast %struct.v4l2_pix_format* %122 to i8*
  %125 = bitcast %struct.v4l2_pix_format* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %57
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @send_set_req(%struct.poseidon*, i32, i64, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
