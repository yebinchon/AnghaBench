; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32, %struct.v4l2_events* }
%struct.v4l2_events = type { i32, i32 }
%struct.video_device_shadow = type { i32 }
%struct.v4l2_kevent = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_event_alloc(%struct.v4l2_fh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_events*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.video_device_shadow*, align 8
  %9 = alloca %struct.v4l2_kevent*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %10, i32 0, i32 1
  %12 = load %struct.v4l2_events*, %struct.v4l2_events** %11, align 8
  store %struct.v4l2_events* %12, %struct.v4l2_events** %6, align 8
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.video_device_shadow* @video_device_shadow_get(i32 %15)
  store %struct.video_device_shadow* %16, %struct.video_device_shadow** %8, align 8
  %17 = load %struct.v4l2_events*, %struct.v4l2_events** %6, align 8
  %18 = icmp ne %struct.v4l2_events* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.video_device_shadow*, %struct.video_device_shadow** %8, align 8
  %21 = icmp ne %struct.video_device_shadow* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19, %2
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %41, %26
  %28 = load %struct.v4l2_events*, %struct.v4l2_events** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_events, %struct.v4l2_events* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.v4l2_kevent* @kzalloc(i32 4, i32 %34)
  store %struct.v4l2_kevent* %35, %struct.v4l2_kevent** %9, align 8
  %36 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %9, align 8
  %37 = icmp eq %struct.v4l2_kevent* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %33
  %42 = load %struct.video_device_shadow*, %struct.video_device_shadow** %8, align 8
  %43 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %46, i32 0, i32 0
  %48 = load %struct.v4l2_events*, %struct.v4l2_events** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_events, %struct.v4l2_events* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.v4l2_events*, %struct.v4l2_events** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_events, %struct.v4l2_events* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.video_device_shadow*, %struct.video_device_shadow** %8, align 8
  %56 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %27

59:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %38, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.v4l2_kevent* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
