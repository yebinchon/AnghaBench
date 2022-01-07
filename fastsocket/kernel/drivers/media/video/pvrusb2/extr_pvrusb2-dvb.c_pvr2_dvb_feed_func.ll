; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_feed_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_feed_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_stream* }
%struct.pvr2_stream = type { i32 }
%struct.pvr2_buffer = type { i32 }

@PVR2_TRACE_DVB_FEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dvb feed thread started\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dvb feed thread stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_feed_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_feed_func(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca %struct.pvr2_dvb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_buffer*, align 8
  %6 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %2, align 8
  %7 = load i32, i32* @PVR2_TRACE_DVB_FEED, align 4
  %8 = call i32 @pvr2_trace(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @set_freezable()
  %10 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.pvr2_stream*, %struct.pvr2_stream** %14, align 8
  store %struct.pvr2_stream* %15, %struct.pvr2_stream** %6, align 8
  br label %16

16:                                               ; preds = %74, %56, %1
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %75

20:                                               ; preds = %16
  %21 = call i32 (...) @try_to_freeze()
  %22 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %23 = call %struct.pvr2_buffer* @pvr2_stream_get_ready_buffer(%struct.pvr2_stream* %22)
  store %struct.pvr2_buffer* %23, %struct.pvr2_buffer** %5, align 8
  %24 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %25 = icmp ne %struct.pvr2_buffer* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %28 = call i32 @pvr2_buffer_get_count(%struct.pvr2_buffer* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %32, i32 0, i32 2
  %34 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %38 = call i64 @pvr2_buffer_get_id(%struct.pvr2_buffer* %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dvb_dmx_swfilter(i32* %33, i32 %40, i32 %41)
  br label %50

43:                                               ; preds = %26
  %44 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %45 = call i32 @pvr2_buffer_get_status(%struct.pvr2_buffer* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %75

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %5, align 8
  %52 = call i32 @pvr2_buffer_queue(%struct.pvr2_buffer* %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %75

56:                                               ; preds = %50
  br label %16

57:                                               ; preds = %20
  %58 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %62 = call i64 @pvr2_stream_get_ready_count(%struct.pvr2_stream* %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = call i64 (...) @kthread_should_stop()
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi i1 [ true, %57 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @wait_event_interruptible(i32 %60, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %75

74:                                               ; preds = %67
  br label %16

75:                                               ; preds = %73, %55, %48, %19
  %76 = load i32, i32* @PVR2_TRACE_DVB_FEED, align 4
  %77 = call i32 @pvr2_trace(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local %struct.pvr2_buffer* @pvr2_stream_get_ready_buffer(%struct.pvr2_stream*) #1

declare dso_local i32 @pvr2_buffer_get_count(%struct.pvr2_buffer*) #1

declare dso_local i32 @dvb_dmx_swfilter(i32*, i32, i32) #1

declare dso_local i64 @pvr2_buffer_get_id(%struct.pvr2_buffer*) #1

declare dso_local i32 @pvr2_buffer_get_status(%struct.pvr2_buffer*) #1

declare dso_local i32 @pvr2_buffer_queue(%struct.pvr2_buffer*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @pvr2_stream_get_ready_count(%struct.pvr2_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
