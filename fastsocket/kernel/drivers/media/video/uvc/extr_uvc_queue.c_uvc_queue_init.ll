; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32, i32, i32, i32, i32, i32 }

@UVC_QUEUE_DROP_CORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_queue_init(%struct.uvc_video_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uvc_video_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %8 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %7, i32 0, i32 5
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %11 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %10, i32 0, i32 4
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %14 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %17 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @UVC_QUEUE_DROP_CORRUPTED, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %27 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %30 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
