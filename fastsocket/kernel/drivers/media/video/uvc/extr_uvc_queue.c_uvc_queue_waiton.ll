; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_waiton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_waiton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_buffer = type { i64, i32 }

@UVC_BUF_STATE_QUEUED = common dso_local global i64 0, align 8
@UVC_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@UVC_BUF_STATE_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_buffer*, i32)* @uvc_queue_waiton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_queue_waiton(%struct.uvc_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.uvc_buffer* %0, %struct.uvc_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UVC_BUF_STATE_QUEUED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %30

27:                                               ; preds = %20, %14, %8
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %27 ]
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %2
  %33 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UVC_BUF_STATE_QUEUED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.uvc_buffer*, %struct.uvc_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %52 = icmp ne i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41, %32
  %54 = phi i1 [ false, %41 ], [ false, %32 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @wait_event_interruptible(i32 %35, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
