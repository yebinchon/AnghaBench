; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.front_face* }
%struct.front_face = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32 }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VIDEOBUF_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @pd_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_buf_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.front_face*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %12 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %11, i32 0, i32 0
  %13 = load %struct.front_face*, %struct.front_face** %12, align 8
  store %struct.front_face* %13, %struct.front_face** %8, align 8
  %14 = load %struct.front_face*, %struct.front_face** %8, align 8
  %15 = getelementptr inbounds %struct.front_face, %struct.front_face* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %78 [
    i32 128, label %17
    i32 129, label %54
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %19 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load %struct.front_face*, %struct.front_face** %8, align 8
  %25 = getelementptr inbounds %struct.front_face, %struct.front_face* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.v4l2_pix_format* %29, %struct.v4l2_pix_format** %10, align 8
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %46 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %47 = call i32 @videobuf_iolock(%struct.videobuf_queue* %45, %struct.videobuf_buffer* %46, i32* null)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %23
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %88

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %52, %17
  br label %81

54:                                               ; preds = %3
  %55 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %56 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load %struct.front_face*, %struct.front_face** %8, align 8
  %62 = getelementptr inbounds %struct.front_face, %struct.front_face* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %70 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %71 = call i32 @videobuf_iolock(%struct.videobuf_queue* %69, %struct.videobuf_buffer* %70, i32* null)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %88

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %54
  br label %81

78:                                               ; preds = %3
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %88

81:                                               ; preds = %77, %53
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %84 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @VIDEOBUF_PREPARED, align 4
  %86 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %87 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %81, %78, %74, %50
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.videobuf_buffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
