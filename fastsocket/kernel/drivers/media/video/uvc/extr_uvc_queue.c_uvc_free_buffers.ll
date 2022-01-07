; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_free_buffers(%struct.uvc_video_queue* %0) #0 {
  %2 = alloca %struct.uvc_video_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %2, align 8
  %4 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %2, align 8
  %5 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %2, align 8
  %8 = call i32 @__uvc_free_buffers(%struct.uvc_video_queue* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %2, align 8
  %10 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %9, i32 0, i32 0
  %11 = call i32 @mutex_unlock(i32* %10)
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__uvc_free_buffers(%struct.uvc_video_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
