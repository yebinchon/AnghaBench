; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_encode_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_encode_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32* }
%struct.uvc_streaming = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.uvc_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@UVC_BUF_STATE_READY = common dso_local global i32 0, align 4
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.uvc_streaming*, %struct.uvc_buffer*)* @uvc_video_encode_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_encode_bulk(%struct.urb* %0, %struct.uvc_streaming* %1, %struct.uvc_buffer* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.uvc_streaming* %1, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_buffer* %2, %struct.uvc_buffer** %6, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %14 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %17 = icmp eq %struct.uvc_buffer* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %134

21:                                               ; preds = %3
  %22 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %23 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %29 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @uvc_video_encode_header(%struct.uvc_streaming* %28, %struct.uvc_buffer* %29, i32* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %40 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %38
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %27, %21
  %52 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %53 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @uvc_video_encode_data(%struct.uvc_streaming* %52, %struct.uvc_buffer* %53, i32* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %60 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %58
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %72 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %51
  %77 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %78 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %82 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %80, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %76, %51
  %87 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %92 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %90, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %86
  %97 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %98 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @UVC_BUF_STATE_READY, align 4
  %101 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %102 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %104 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %108 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %111 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %110, i32 0, i32 3
  %112 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %113 = call i32 @uvc_queue_next_buffer(%struct.TYPE_6__* %111, %struct.uvc_buffer* %112)
  %114 = load i32, i32* @UVC_STREAM_FID, align 4
  %115 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %116 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = xor i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %96, %86
  %120 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %121 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %124 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %119, %76
  %127 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %128 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load %struct.urb*, %struct.urb** %4, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %126, %18
  ret void
}

declare dso_local i32 @uvc_video_encode_header(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_encode_data(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_queue_next_buffer(%struct.TYPE_6__*, %struct.uvc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
