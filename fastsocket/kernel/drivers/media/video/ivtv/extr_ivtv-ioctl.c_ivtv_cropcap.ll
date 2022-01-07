; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ivtv_open_id = type { i32, %struct.ivtv* }
%struct.ivtv = type { i64, i64, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i64 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @ivtv_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.yuv_playback_info*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
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
  %22 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %163

30:                                               ; preds = %3
  %31 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 720, i32* %39, align 8
  %40 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %30
  %46 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %47 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 576, i32 480
  %52 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 59, i32 10
  %61 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 54, i32 11
  %70 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  br label %156

73:                                               ; preds = %30
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @IVTV_DEC_STREAM_TYPE_YUV, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %127

77:                                               ; preds = %73
  %78 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %79 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %84 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %90 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  br label %108

95:                                               ; preds = %77
  %96 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 720, i32* %98, align 8
  %99 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 576, i32 480
  %105 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %95, %82
  %109 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %110 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 59, i32 10
  %115 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %119 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 54, i32 11
  %124 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %155

127:                                              ; preds = %73
  %128 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %129 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 576, i32 480
  %134 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %138 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 59, i32 10
  %143 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %147 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 54, i32 11
  %152 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %153 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %127, %108
  br label %156

156:                                              ; preds = %155, %45
  %157 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %157, i32 0, i32 2
  %159 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %160 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %159, i32 0, i32 1
  %161 = bitcast %struct.TYPE_4__* %158 to i8*
  %162 = bitcast %struct.TYPE_4__* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %156, %27
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
