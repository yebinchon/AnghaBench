; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_get_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.dvb_video_events }
%struct.dvb_video_events = type { i64, i64, i32, i32*, i32, i64 }
%struct.video_event = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@MAX_VIDEO_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*, %struct.video_event*, i32)* @dvb_video_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_video_get_event(%struct.av7110* %0, %struct.video_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca %struct.video_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_video_events*, align 8
  %9 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %5, align 8
  store %struct.video_event* %1, %struct.video_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.av7110*, %struct.av7110** %5, align 8
  %11 = getelementptr inbounds %struct.av7110, %struct.av7110* %10, i32 0, i32 0
  store %struct.dvb_video_events* %11, %struct.dvb_video_events** %8, align 8
  %12 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %13 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %18 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @EOVERFLOW, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %23 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %26 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @O_NONBLOCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EWOULDBLOCK, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %80

37:                                               ; preds = %29
  %38 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %39 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %42 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %45 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @wait_event_interruptible(i32 %40, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %80

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %57 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %56, i32 0, i32 2
  %58 = call i32 @spin_lock_bh(i32* %57)
  %59 = load %struct.video_event*, %struct.video_event** %6, align 8
  %60 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %61 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %64 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i32 @memcpy(%struct.video_event* %59, i32* %66, i32 4)
  %68 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %69 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  %72 = load i32, i32* @MAX_VIDEO_EVENT, align 4
  %73 = sext i32 %72 to i64
  %74 = urem i64 %71, %73
  %75 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %76 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.dvb_video_events*, %struct.dvb_video_events** %8, align 8
  %78 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %77, i32 0, i32 2
  %79 = call i32 @spin_unlock_bh(i32* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %55, %52, %34, %16
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(%struct.video_event*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
