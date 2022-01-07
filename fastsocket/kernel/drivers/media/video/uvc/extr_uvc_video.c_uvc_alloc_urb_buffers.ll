; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_alloc_urb_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_alloc_urb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UVC_MAX_PACKETS = common dso_local global i32 0, align 4
@UVC_URBS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@UVC_TRACE_VIDEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Allocated %u URB buffers of %ux%u bytes each.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to allocate URB buffers (%u bytes per packet).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, i32, i32, i32)* @uvc_alloc_urb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_alloc_urb_buffers(%struct.uvc_streaming* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_streaming*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %13 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %18 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @DIV_ROUND_UP(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @UVC_MAX_PACKETS, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @UVC_MAX_PACKETS, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %22
  br label %32

32:                                               ; preds = %97, %31
  %33 = load i32, i32* %10, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %100

35:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %82, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @UVC_URBS, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul i32 %41, %42
  %44 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %45 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %52 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @__GFP_NOWARN, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %58 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @usb_buffer_alloc(i32 %50, i32 %53, i32 %56, i32* %62)
  %64 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %65 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %71 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %40
  %79 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %80 = call i32 @uvc_free_urb_buffers(%struct.uvc_streaming* %79)
  br label %85

81:                                               ; preds = %40
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %36

85:                                               ; preds = %78, %36
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @UVC_URBS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* @UVC_TRACE_VIDEO, align 4
  %91 = load i32, i32* @UVC_URBS, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %104

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = udiv i32 %98, 2
  store i32 %99, i32* %10, align 4
  br label %32

100:                                              ; preds = %32
  %101 = load i32, i32* @UVC_TRACE_VIDEO, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %101, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %89, %16
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @uvc_free_urb_buffers(%struct.uvc_streaming*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
