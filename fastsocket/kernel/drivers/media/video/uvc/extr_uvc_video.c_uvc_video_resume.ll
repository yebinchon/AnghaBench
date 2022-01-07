; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_video_resume(%struct.uvc_streaming* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_streaming*, align 8
  %4 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %3, align 8
  %5 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %6 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %8 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %9 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %8, i32 0, i32 1
  %10 = call i32 @uvc_commit_video(%struct.uvc_streaming* %7, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %15 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %14, i32 0, i32 0
  %16 = call i32 @uvc_queue_enable(i32* %15, i32 0)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %20 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %19, i32 0, i32 0
  %21 = call i32 @uvc_queue_streaming(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %36

24:                                               ; preds = %18
  %25 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call i32 @uvc_init_video(%struct.uvc_streaming* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %32 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %31, i32 0, i32 0
  %33 = call i32 @uvc_queue_enable(i32* %32, i32 0)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %23, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @uvc_commit_video(%struct.uvc_streaming*, i32*) #1

declare dso_local i32 @uvc_queue_enable(i32*, i32) #1

declare dso_local i32 @uvc_queue_streaming(i32*) #1

declare dso_local i32 @uvc_init_video(%struct.uvc_streaming*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
