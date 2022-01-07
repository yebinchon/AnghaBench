; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_event_subscription = type { i64 }
%struct.v4l2_subscribed_event = type { i32 }
%struct.video_device_shadow = type { i32 }

@V4L2_EVENT_ALL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_event_unsubscribe(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_event_subscription*, align 8
  %6 = alloca %struct.v4l2_subscribed_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.video_device_shadow*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_event_subscription* %1, %struct.v4l2_event_subscription** %5, align 8
  %9 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.video_device_shadow* @video_device_shadow_get(i32 %11)
  store %struct.video_device_shadow* %12, %struct.video_device_shadow** %8, align 8
  %13 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_EVENT_ALL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %20 = call i32 @v4l2_event_unsubscribe_all(%struct.v4l2_fh* %19)
  store i32 0, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.video_device_shadow*, %struct.video_device_shadow** %8, align 8
  %23 = icmp ne %struct.video_device_shadow* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %21
  %28 = load %struct.video_device_shadow*, %struct.video_device_shadow** %8, align 8
  %29 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %33 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh* %32, i64 %35)
  store %struct.v4l2_subscribed_event* %36, %struct.v4l2_subscribed_event** %6, align 8
  %37 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %38 = icmp ne %struct.v4l2_subscribed_event* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %40, i32 0, i32 0
  %42 = call i32 @list_del(i32* %41)
  br label %43

43:                                               ; preds = %39, %27
  %44 = load %struct.video_device_shadow*, %struct.video_device_shadow** %8, align 8
  %45 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %49 = call i32 @kfree(%struct.v4l2_subscribed_event* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %24, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(i32) #1

declare dso_local i32 @v4l2_event_unsubscribe_all(%struct.v4l2_fh*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.v4l2_subscribed_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
