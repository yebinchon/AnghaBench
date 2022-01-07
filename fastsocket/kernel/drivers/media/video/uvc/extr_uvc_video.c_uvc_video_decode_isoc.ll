; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.uvc_streaming = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.uvc_buffer = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"USB isochronous frame lost (%d).\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@UVC_BUF_STATE_READY = common dso_local global i64 0, align 8
@UVC_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.uvc_streaming*, %struct.uvc_buffer*)* @uvc_video_decode_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_decode_isoc(%struct.urb* %0, %struct.uvc_streaming* %1, %struct.uvc_buffer* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.uvc_streaming* %1, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_buffer* %2, %struct.uvc_buffer** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %153, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.urb*, %struct.urb** %4, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %156

16:                                               ; preds = %10
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %16
  %27 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %28 = load %struct.urb*, %struct.urb** %4, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @uvc_trace(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %38 = icmp ne %struct.uvc_buffer* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %26
  br label %153

43:                                               ; preds = %16
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.urb*, %struct.urb** %4, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %46, i64 %55
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %80, %43
  %58 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %59 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.urb*, %struct.urb** %4, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @uvc_video_decode_start(%struct.uvc_streaming* %58, %struct.uvc_buffer* %59, i32* %60, i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %57
  %75 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %76 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %75, i32 0, i32 0
  %77 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %78 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %76, %struct.uvc_buffer* %77)
  store %struct.uvc_buffer* %78, %struct.uvc_buffer** %6, align 8
  br label %79

79:                                               ; preds = %74, %57
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %57, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %153

89:                                               ; preds = %85
  %90 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %91 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load %struct.urb*, %struct.urb** %4, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %103, %105
  %107 = call i32 @uvc_video_decode_data(%struct.uvc_streaming* %90, %struct.uvc_buffer* %91, i32* %95, i64 %106)
  %108 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %109 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.urb*, %struct.urb** %4, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @uvc_video_decode_end(%struct.uvc_streaming* %108, %struct.uvc_buffer* %109, i32* %110, i64 %118)
  %120 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %121 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %89
  %126 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %127 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %131 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %129, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %125
  %136 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %137 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @UVC_FMT_FLAG_COMPRESSED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %135
  %145 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %146 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %135, %125
  %148 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %149 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %148, i32 0, i32 0
  %150 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %151 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %149, %struct.uvc_buffer* %150)
  store %struct.uvc_buffer* %151, %struct.uvc_buffer** %6, align 8
  br label %152

152:                                              ; preds = %147, %89
  br label %153

153:                                              ; preds = %152, %88, %42
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %10

156:                                              ; preds = %10
  ret void
}

declare dso_local i32 @uvc_trace(i32, i8*, i64) #1

declare dso_local i32 @uvc_video_decode_start(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i64) #1

declare dso_local %struct.uvc_buffer* @uvc_queue_next_buffer(i32*, %struct.uvc_buffer*) #1

declare dso_local i32 @uvc_video_decode_data(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i64) #1

declare dso_local i32 @uvc_video_decode_end(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
