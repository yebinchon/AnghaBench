; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_free_urb_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_free_urb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UVC_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_streaming*)* @uvc_free_urb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_free_urb_buffers(%struct.uvc_streaming* %0) #0 {
  %2 = alloca %struct.uvc_streaming*, align 8
  %3 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %48, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @UVC_URBS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %51

8:                                                ; preds = %4
  %9 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %10 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %8
  %18 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %19 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %24 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %34 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usb_buffer_free(i32 %22, i64 %25, i32* %32, i32 %39)
  %41 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %42 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %17, %8
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %4

51:                                               ; preds = %4
  %52 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %53 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local i32 @usb_buffer_free(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
