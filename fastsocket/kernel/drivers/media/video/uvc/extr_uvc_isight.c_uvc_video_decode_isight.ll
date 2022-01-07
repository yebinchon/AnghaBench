; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_isight.c_uvc_video_decode_isight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_isight.c_uvc_video_decode_isight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.uvc_streaming = type { i32 }
%struct.uvc_buffer = type { i64 }

@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"USB isochronous frame lost (%d).\0A\00", align 1
@UVC_BUF_STATE_DONE = common dso_local global i64 0, align 8
@UVC_BUF_STATE_ERROR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_video_decode_isight(%struct.urb* %0, %struct.uvc_streaming* %1, %struct.uvc_buffer* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.uvc_streaming* %1, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_buffer* %2, %struct.uvc_buffer** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %89, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.urb*, %struct.urb** %4, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %92

15:                                               ; preds = %9
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %27 = load %struct.urb*, %struct.urb** %4, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @uvc_trace(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %25, %15
  br label %37

37:                                               ; preds = %83, %36
  %38 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %39 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %38, i32 0, i32 0
  %40 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %43, %51
  %53 = load %struct.urb*, %struct.urb** %4, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @isight_decode(i32* %39, %struct.uvc_buffer* %40, i64 %52, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %63 = icmp eq %struct.uvc_buffer* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %37
  br label %88

65:                                               ; preds = %37
  %66 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UVC_BUF_STATE_DONE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UVC_BUF_STATE_ERROR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71, %65
  %78 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %79 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %78, i32 0, i32 0
  %80 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %81 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %79, %struct.uvc_buffer* %80)
  store %struct.uvc_buffer* %81, %struct.uvc_buffer** %6, align 8
  br label %82

82:                                               ; preds = %77, %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %37, label %88

88:                                               ; preds = %83, %64
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %9

92:                                               ; preds = %9
  ret void
}

declare dso_local i32 @uvc_trace(i32, i8*, i64) #1

declare dso_local i32 @isight_decode(i32*, %struct.uvc_buffer*, i64, i32) #1

declare dso_local %struct.uvc_buffer* @uvc_queue_next_buffer(i32*, %struct.uvc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
