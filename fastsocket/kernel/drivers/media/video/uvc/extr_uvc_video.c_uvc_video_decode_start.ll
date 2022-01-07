; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_buffer = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVC_STREAM_ERR = common dso_local global i32 0, align 4
@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Dropping payload (error bit set).\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@UVC_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Dropping payload (out of sync).\0A\00", align 1
@UVC_QUIRK_STREAM_NO_FID = common dso_local global i32 0, align 4
@UVC_STREAM_EOF = common dso_local global i32 0, align 4
@uvc_clock_param = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Frame complete (FID bit toggled).\0A\00", align 1
@UVC_BUF_STATE_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32)* @uvc_video_decode_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_video_decode_start(%struct.uvc_streaming* %0, %struct.uvc_buffer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_streaming*, align 8
  %7 = alloca %struct.uvc_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %6, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %14, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %163

28:                                               ; preds = %19
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UVC_STREAM_ERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %37 = call i32 @uvc_trace(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODATA, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %163

40:                                               ; preds = %28
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UVC_STREAM_FID, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %53 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %40
  %57 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %58 = icmp eq %struct.uvc_buffer* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %62 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @ENODATA, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %163

65:                                               ; preds = %56
  %66 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %136

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %74 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %71
  %78 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %79 = call i32 @uvc_trace(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %81 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UVC_QUIRK_STREAM_NO_FID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %77
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UVC_STREAM_EOF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @UVC_STREAM_FID, align 4
  %97 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %98 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = xor i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %88, %77
  %102 = load i32, i32* @ENODATA, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %163

104:                                              ; preds = %71
  %105 = load i64, i64* @uvc_clock_param, align 8
  %106 = load i64, i64* @CLOCK_MONOTONIC, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @ktime_get_ts(%struct.timespec* %11)
  br label %112

110:                                              ; preds = %104
  %111 = call i32 @ktime_get_real_ts(%struct.timespec* %11)
  br label %112

112:                                              ; preds = %110, %108
  %113 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %114 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %117 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  store i64 %115, i64* %118, align 8
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %122 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  %125 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @NSEC_PER_USEC, align 4
  %128 = sdiv i32 %126, %127
  %129 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %130 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 8
  %133 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %134 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %135 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %112, %65
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %139 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %136
  %143 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %144 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %150 = call i32 @uvc_trace(i32 %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %152 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %153 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* @EAGAIN, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %163

156:                                              ; preds = %142, %136
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %159 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %156, %148, %101, %59, %35, %25
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i32 @ktime_get_ts(%struct.timespec*) #1

declare dso_local i32 @ktime_get_real_ts(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
