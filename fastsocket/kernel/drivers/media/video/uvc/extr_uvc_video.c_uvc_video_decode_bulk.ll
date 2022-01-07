; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32* }
%struct.uvc_streaming = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32 }
%struct.uvc_buffer = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@UVC_BUF_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.uvc_streaming*, %struct.uvc_buffer*)* @uvc_video_decode_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_decode_bulk(%struct.urb* %0, %struct.uvc_streaming* %1, %struct.uvc_buffer* %2) #0 {
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
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %167

15:                                               ; preds = %3
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %23
  store i64 %28, i64* %26, align 8
  %29 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %30 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %15
  %35 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %36 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %92, label %40

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %57, %40
  %42 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %43 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @uvc_video_decode_start(%struct.uvc_streaming* %42, %struct.uvc_buffer* %43, i32* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %53 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %52, i32 0, i32 1
  %54 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %55 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %53, %struct.uvc_buffer* %54)
  store %struct.uvc_buffer* %55, %struct.uvc_buffer** %6, align 8
  br label %56

56:                                               ; preds = %51, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %41, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %67 = icmp eq %struct.uvc_buffer* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %62
  %69 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %70 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  br label %91

72:                                               ; preds = %65
  %73 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %74 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @memcpy(i32 %76, i32* %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %82 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %72, %68
  br label %92

92:                                               ; preds = %91, %34, %15
  %93 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %94 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %92
  %99 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %100 = icmp ne %struct.uvc_buffer* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %103 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @uvc_video_decode_data(%struct.uvc_streaming* %102, %struct.uvc_buffer* %103, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %98, %92
  %108 = load %struct.urb*, %struct.urb** %4, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.urb*, %struct.urb** %4, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %107
  %116 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %117 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %121 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %119, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %115, %107
  %126 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %127 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %157, label %131

131:                                              ; preds = %125
  %132 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %133 = icmp ne %struct.uvc_buffer* %132, null
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %136 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %137 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %138 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %142 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @uvc_video_decode_end(%struct.uvc_streaming* %135, %struct.uvc_buffer* %136, i32 %140, i64 %144)
  %146 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %147 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %134
  %152 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %153 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %152, i32 0, i32 1
  %154 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %155 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %153, %struct.uvc_buffer* %154)
  store %struct.uvc_buffer* %155, %struct.uvc_buffer** %6, align 8
  br label %156

156:                                              ; preds = %151, %134
  br label %157

157:                                              ; preds = %156, %131, %125
  %158 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %159 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i32 0, i32* %160, align 8
  %161 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %162 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  store i32 0, i32* %163, align 4
  %164 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %165 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %14, %157, %115
  ret void
}

declare dso_local i32 @uvc_video_decode_start(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local %struct.uvc_buffer* @uvc_queue_next_buffer(i32*, %struct.uvc_buffer*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @uvc_video_decode_data(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_decode_end(%struct.uvc_streaming*, %struct.uvc_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
