; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_init_video_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_init_video_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, %struct.urb**, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.urb = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@UVC_URBS = common dso_local global i32 0, align 4
@uvc_video_complete = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.usb_host_endpoint*, i32)* @uvc_init_video_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_init_video_bulk(%struct.uvc_streaming* %0, %struct.usb_host_endpoint* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %5, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %15 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = and i32 %18, 2047
  store i32 %19, i32* %12, align 4
  %20 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %21 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %26 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @uvc_alloc_urb_buffers(%struct.uvc_streaming* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %132

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %43 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %42, i32 0, i32 0
  %44 = call i64 @usb_endpoint_dir_in(%struct.TYPE_8__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %48 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %47, i32 0, i32 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %53 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_rcvbulkpipe(i32 %51, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %68

57:                                               ; preds = %38
  %58 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %59 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %64 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_sndbulkpipe(i32 %62, i32 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %57, %46
  %69 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %70 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %74, %68
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %128, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @UVC_URBS, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %81)
  store %struct.urb* %82, %struct.urb** %8, align 8
  %83 = load %struct.urb*, %struct.urb** %8, align 8
  %84 = icmp eq %struct.urb* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %87 = call i32 @uvc_uninit_video(%struct.uvc_streaming* %86, i32 1)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %132

90:                                               ; preds = %80
  %91 = load %struct.urb*, %struct.urb** %8, align 8
  %92 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %93 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %92, i32 0, i32 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %99 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @uvc_video_complete, align 4
  %107 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %108 = call i32 @usb_fill_bulk_urb(%struct.urb* %91, i32 %96, i32 %97, i32 %104, i32 %105, i32 %106, %struct.uvc_streaming* %107)
  %109 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %110 = load %struct.urb*, %struct.urb** %8, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %113 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.urb*, %struct.urb** %8, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.urb*, %struct.urb** %8, align 8
  %122 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %123 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %122, i32 0, i32 1
  %124 = load %struct.urb**, %struct.urb*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.urb*, %struct.urb** %124, i64 %126
  store %struct.urb* %121, %struct.urb** %127, align 8
  br label %128

128:                                              ; preds = %90
  %129 = load i32, i32* %11, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %76

131:                                              ; preds = %76
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %85, %35
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @uvc_alloc_urb_buffers(%struct.uvc_streaming*, i32, i32, i32) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @uvc_uninit_video(%struct.uvc_streaming*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.uvc_streaming*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
