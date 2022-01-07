; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_subscribe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { %struct.v4l2_events*, i32 }
%struct.v4l2_events = type { i32 }
%struct.v4l2_event_subscription = type { i32 }
%struct.v4l2_subscribed_event = type { i32, i32 }
%struct.video_device_shadow = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_event_subscribe(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_event_subscription*, align 8
  %6 = alloca %struct.v4l2_events*, align 8
  %7 = alloca %struct.v4l2_subscribed_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.video_device_shadow*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_event_subscription* %1, %struct.v4l2_event_subscription** %5, align 8
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %10, i32 0, i32 0
  %12 = load %struct.v4l2_events*, %struct.v4l2_events** %11, align 8
  store %struct.v4l2_events* %12, %struct.v4l2_events** %6, align 8
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.video_device_shadow* @video_device_shadow_get(i32 %15)
  store %struct.video_device_shadow* %16, %struct.video_device_shadow** %9, align 8
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %17, i32 0, i32 0
  %19 = load %struct.v4l2_events*, %struct.v4l2_events** %18, align 8
  %20 = icmp eq %struct.v4l2_events* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.video_device_shadow*, %struct.video_device_shadow** %9, align 8
  %23 = icmp ne %struct.video_device_shadow* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21, %2
  %25 = call i32 @WARN_ON(i32 1)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %21
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.v4l2_subscribed_event* @kmalloc(i32 8, i32 %29)
  store %struct.v4l2_subscribed_event* %30, %struct.v4l2_subscribed_event** %7, align 8
  %31 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %32 = icmp ne %struct.v4l2_subscribed_event* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load %struct.video_device_shadow*, %struct.video_device_shadow** %9, align 8
  %38 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %37, i32 0, i32 0
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %42 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @v4l2_event_subscribed(%struct.v4l2_fh* %41, i32 %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %36
  %48 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %48, i32 0, i32 0
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %56, i32 0, i32 0
  %58 = load %struct.v4l2_events*, %struct.v4l2_events** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_events, %struct.v4l2_events* %58, i32 0, i32 0
  %60 = call i32 @list_add(i32* %57, i32* %59)
  store %struct.v4l2_subscribed_event* null, %struct.v4l2_subscribed_event** %7, align 8
  br label %61

61:                                               ; preds = %47, %36
  %62 = load %struct.video_device_shadow*, %struct.video_device_shadow** %9, align 8
  %63 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %7, align 8
  %67 = call i32 @kfree(%struct.v4l2_subscribed_event* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %33, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.v4l2_subscribed_event* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @v4l2_event_subscribed(%struct.v4l2_fh*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.v4l2_subscribed_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
