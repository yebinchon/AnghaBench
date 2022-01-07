; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-event.c_v4l2_event_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32, %struct.v4l2_events* }
%struct.v4l2_events = type { i64, i32 }
%struct.v4l2_event = type { i32 }
%struct.video_device_shadow = type { i64 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_event_dequeue(%struct.v4l2_fh* %0, %struct.v4l2_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_fh*, align 8
  %6 = alloca %struct.v4l2_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_events*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_device_shadow*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %5, align 8
  store %struct.v4l2_event* %1, %struct.v4l2_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %11, i32 0, i32 1
  %13 = load %struct.v4l2_events*, %struct.v4l2_events** %12, align 8
  store %struct.v4l2_events* %13, %struct.v4l2_events** %8, align 8
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.video_device_shadow* @video_device_shadow_get(i32 %16)
  store %struct.video_device_shadow* %17, %struct.video_device_shadow** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %22 = load %struct.v4l2_event*, %struct.v4l2_event** %6, align 8
  %23 = call i32 @__v4l2_event_dequeue(%struct.v4l2_fh* %21, %struct.v4l2_event* %22)
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.video_device_shadow*, %struct.video_device_shadow** %10, align 8
  %26 = icmp ne %struct.video_device_shadow* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.video_device_shadow*, %struct.video_device_shadow** %10, align 8
  %29 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.video_device_shadow*, %struct.video_device_shadow** %10, align 8
  %34 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mutex_unlock(i64 %35)
  br label %37

37:                                               ; preds = %32, %27, %24
  br label %38

38:                                               ; preds = %55, %37
  %39 = load %struct.v4l2_events*, %struct.v4l2_events** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_events, %struct.v4l2_events* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_events*, %struct.v4l2_events** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_events, %struct.v4l2_events* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @wait_event_interruptible(i32 %41, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %60

51:                                               ; preds = %38
  %52 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %53 = load %struct.v4l2_event*, %struct.v4l2_event** %6, align 8
  %54 = call i32 @__v4l2_event_dequeue(%struct.v4l2_fh* %52, %struct.v4l2_event* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %38, label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.video_device_shadow*, %struct.video_device_shadow** %10, align 8
  %62 = icmp ne %struct.video_device_shadow* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load %struct.video_device_shadow*, %struct.video_device_shadow** %10, align 8
  %65 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.video_device_shadow*, %struct.video_device_shadow** %10, align 8
  %70 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @mutex_lock(i64 %71)
  br label %73

73:                                               ; preds = %68, %63, %60
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(i32) #1

declare dso_local i32 @__v4l2_event_dequeue(%struct.v4l2_fh*, %struct.v4l2_event*) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mutex_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
