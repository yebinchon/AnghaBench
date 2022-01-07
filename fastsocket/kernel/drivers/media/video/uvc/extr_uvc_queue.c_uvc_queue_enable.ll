; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@UVC_QUEUE_STREAMING = common dso_local global i32 0, align 4
@UVC_BUF_STATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_queue_enable(%struct.uvc_video_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.uvc_video_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %8 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %14 = call i64 @uvc_queue_streaming(%struct.uvc_video_queue* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %66

19:                                               ; preds = %12
  %20 = load i32, i32* @UVC_QUEUE_STREAMING, align 4
  %21 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %22 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %26 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  br label %65

27:                                               ; preds = %2
  %28 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %29 = call i32 @uvc_queue_cancel(%struct.uvc_video_queue* %28, i32 0)
  %30 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %31 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %30, i32 0, i32 4
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %55, %27
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %36 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %41 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @UVC_BUF_STATE_IDLE, align 4
  %48 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %49 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 8
  br label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load i32, i32* @UVC_QUEUE_STREAMING, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %62 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %19
  br label %66

66:                                               ; preds = %65, %16
  %67 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %68 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @uvc_queue_streaming(%struct.uvc_video_queue*) #1

declare dso_local i32 @uvc_queue_cancel(%struct.uvc_video_queue*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
