; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_isight.c_isight_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_isight.c_isight_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32* }
%struct.uvc_buffer = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@isight_decode.hdr = internal constant [12 x i32] [i32 17, i32 34, i32 51, i32 68, i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 250, i32 206], align 16
@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"iSight header found\0A\00", align 1
@UVC_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Dropping packet (out of sync).\0A\00", align 1
@UVC_BUF_STATE_DONE = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Frame complete (overflow).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_queue*, %struct.uvc_buffer*, i32*, i32)* @isight_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isight_decode(%struct.uvc_video_queue* %0, %struct.uvc_buffer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_video_queue*, align 8
  %7 = alloca %struct.uvc_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %6, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %15 = icmp eq %struct.uvc_buffer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %135

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp uge i32 %18, 14
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i64 @memcmp(i32* %22, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @isight_decode.hdr, i64 0, i64 0), i32 12)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp uge i32 %26, 15
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = call i64 @memcmp(i32* %30, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @isight_decode.hdr, i64 0, i64 0), i32 12)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %20
  %34 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %35 = call i32 @uvc_trace(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %47 = call i32 @uvc_trace(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %135

48:                                               ; preds = %42
  %49 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %50 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %36
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i8*, i8** @UVC_BUF_STATE_DONE, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %65 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %135

68:                                               ; preds = %55, %52
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %134, label %71

71:                                               ; preds = %68
  %72 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = zext i32 %75 to i64
  %77 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %78 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %76, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %6, align 8
  %84 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %87 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32* %97, i32** %12, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @min(i32 %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @memcpy(i32* %101, i32* %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %108 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %106
  store i64 %111, i64* %109, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ugt i32 %112, %113
  br i1 %114, label %126, label %115

115:                                              ; preds = %71
  %116 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %117 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %121 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = zext i32 %123 to i64
  %125 = icmp eq i64 %119, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %115, %71
  %127 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %128 = call i32 @uvc_trace(i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i8*, i8** @UVC_BUF_STATE_DONE, align 8
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %132 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %126, %115
  br label %134

134:                                              ; preds = %133, %68
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %61, %45, %16
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
