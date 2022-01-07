; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_ts_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_ts_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_ts_feed = type { %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { %struct.TYPE_6__*, %struct.dvb_ringbuffer, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.dvb_ringbuffer }
%struct.dvb_ringbuffer = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DMX_OUT_DECODER = common dso_local global i64 0, align 8
@DMX_OUT_TAP = common dso_local global i64 0, align 8
@DMX_OUT_TSDEMUX_TAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, %struct.dmx_ts_feed*, i32)* @dvb_dmxdev_ts_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_ts_callback(i32* %0, i64 %1, i32* %2, i64 %3, %struct.dmx_ts_feed* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dmx_ts_feed*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dmxdev_filter*, align 8
  %15 = alloca %struct.dvb_ringbuffer*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.dmx_ts_feed* %4, %struct.dmx_ts_feed** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %12, align 8
  %18 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %17, i32 0, i32 0
  %19 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %18, align 8
  store %struct.dmxdev_filter* %19, %struct.dmxdev_filter** %14, align 8
  %20 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %21 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %26 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DMX_OUT_DECODER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %6
  %33 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %34 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  store i32 0, i32* %7, align 4
  br label %108

38:                                               ; preds = %6
  %39 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %40 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DMX_OUT_TAP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %48 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DMX_OUT_TSDEMUX_TAP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46, %38
  %55 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %56 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %55, i32 0, i32 1
  store %struct.dvb_ringbuffer* %56, %struct.dvb_ringbuffer** %15, align 8
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %59 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store %struct.dvb_ringbuffer* %61, %struct.dvb_ringbuffer** %15, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %15, align 8
  %64 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %69 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %15, align 8
  %74 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %73, i32 0, i32 1
  %75 = call i32 @wake_up(i32* %74)
  store i32 0, i32* %7, align 4
  br label %108

76:                                               ; preds = %62
  %77 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %15, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @dvb_dmxdev_buffer_write(%struct.dvb_ringbuffer* %77, i32* %78, i64 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %15, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @dvb_dmxdev_buffer_write(%struct.dvb_ringbuffer* %86, i32* %87, i64 %88)
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %85, %76
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %15, align 8
  %95 = call i32 @dvb_ringbuffer_flush(%struct.dvb_ringbuffer* %94)
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %15, align 8
  %98 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %90
  %100 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %101 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %15, align 8
  %106 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %105, i32 0, i32 1
  %107 = call i32 @wake_up(i32* %106)
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %99, %67, %32
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dvb_dmxdev_buffer_write(%struct.dvb_ringbuffer*, i32*, i64) #1

declare dso_local i32 @dvb_ringbuffer_flush(%struct.dvb_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
