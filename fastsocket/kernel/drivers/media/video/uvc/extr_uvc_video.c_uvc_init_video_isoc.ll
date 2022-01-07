; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_init_video_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_init_video_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.urb**, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.urb = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, %struct.uvc_streaming*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@UVC_URBS = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@uvc_video_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.usb_host_endpoint*, i32)* @uvc_init_video_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_init_video_isoc(%struct.uvc_streaming* %0, %struct.usb_host_endpoint* %1, i32 %2) #0 {
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
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %19, 2047
  %21 = load i32, i32* %12, align 4
  %22 = ashr i32 %21, 11
  %23 = and i32 %22, 3
  %24 = add nsw i32 1, %23
  %25 = mul nsw i32 %20, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @uvc_alloc_urb_buffers(%struct.uvc_streaming* %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %158

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul i32 %41, %42
  store i32 %43, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %154, %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @UVC_URBS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %157

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.urb* @usb_alloc_urb(i32 %49, i32 %50)
  store %struct.urb* %51, %struct.urb** %8, align 8
  %52 = load %struct.urb*, %struct.urb** %8, align 8
  %53 = icmp eq %struct.urb* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %56 = call i32 @uvc_uninit_video(%struct.uvc_streaming* %55, i32 1)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %158

59:                                               ; preds = %48
  %60 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %61 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.urb*, %struct.urb** %8, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 8
  %67 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %68 = load %struct.urb*, %struct.urb** %8, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 9
  store %struct.uvc_streaming* %67, %struct.uvc_streaming** %69, align 8
  %70 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %71 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %76 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_rcvisocpipe(i32 %74, i32 %78)
  %80 = load %struct.urb*, %struct.urb** %8, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @URB_ISO_ASAP, align 4
  %83 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.urb*, %struct.urb** %8, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %88 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.urb*, %struct.urb** %8, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %94 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.urb*, %struct.urb** %8, align 8
  %101 = getelementptr inbounds %struct.urb, %struct.urb* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %103 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.urb*, %struct.urb** %8, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @uvc_video_complete, align 4
  %112 = load %struct.urb*, %struct.urb** %8, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.urb*, %struct.urb** %8, align 8
  %116 = getelementptr inbounds %struct.urb, %struct.urb* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.urb*, %struct.urb** %8, align 8
  %119 = getelementptr inbounds %struct.urb, %struct.urb* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %143, %59
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = mul i32 %125, %126
  %128 = load %struct.urb*, %struct.urb** %8, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i32 %127, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.urb*, %struct.urb** %8, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 %135, i32* %142, align 4
  br label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %120

146:                                              ; preds = %120
  %147 = load %struct.urb*, %struct.urb** %8, align 8
  %148 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %149 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %148, i32 0, i32 0
  %150 = load %struct.urb**, %struct.urb*** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.urb*, %struct.urb** %150, i64 %152
  store %struct.urb* %147, %struct.urb** %153, align 8
  br label %154

154:                                              ; preds = %146
  %155 = load i32, i32* %10, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %44

157:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %54, %37
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @uvc_alloc_urb_buffers(%struct.uvc_streaming*, i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @uvc_uninit_video(%struct.uvc_streaming*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
