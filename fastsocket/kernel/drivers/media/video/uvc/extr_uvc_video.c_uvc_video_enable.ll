; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_video_enable(%struct.uvc_streaming* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %11 = call i32 @uvc_uninit_video(%struct.uvc_streaming* %10, i32 1)
  %12 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %13 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %18 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @usb_set_interface(i32 %16, i32 %19, i32 0)
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %22 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %21, i32 0, i32 1
  %23 = call i32 @uvc_queue_enable(i32* %22, i32 0)
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %26 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %25, i32 0, i32 1
  %27 = call i32 @uvc_queue_enable(i32* %26, i32 1)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %24
  %33 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %34 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %34, i32 0, i32 0
  %36 = call i32 @uvc_commit_video(%struct.uvc_streaming* %33, i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @uvc_init_video(%struct.uvc_streaming* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %39, %30, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @uvc_uninit_video(%struct.uvc_streaming*, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @uvc_queue_enable(i32*, i32) #1

declare dso_local i32 @uvc_commit_video(%struct.uvc_streaming*, i32*) #1

declare dso_local i32 @uvc_init_video(%struct.uvc_streaming*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
