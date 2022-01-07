; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_allocate_ts_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_allocate_ts_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_demux = type { i32 }
%struct.dmx_ts_feed = type { i32, i32, i32, i64, i32*, %struct.dmx_demux* }
%struct.dvb_demux = type { i32 }
%struct.dvb_demux_feed = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32*, %struct.dvb_demux*, %struct.TYPE_4__, i8* }
%struct.TYPE_6__ = type { i32, %struct.dvb_demux_feed*, i8* }
%struct.TYPE_5__ = type { %struct.dmx_ts_feed }
%struct.TYPE_4__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMX_TYPE_TS = common dso_local global i8* null, align 8
@dmx_ts_feed_start_filtering = common dso_local global i32 0, align 4
@dmx_ts_feed_stop_filtering = common dso_local global i32 0, align 4
@dmx_ts_feed_set = common dso_local global i32 0, align 4
@DMX_STATE_FREE = common dso_local global i32 0, align 4
@DMX_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_demux*, %struct.dmx_ts_feed**, i32)* @dvbdmx_allocate_ts_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbdmx_allocate_ts_feed(%struct.dmx_demux* %0, %struct.dmx_ts_feed** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmx_demux*, align 8
  %6 = alloca %struct.dmx_ts_feed**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_demux*, align 8
  %9 = alloca %struct.dvb_demux_feed*, align 8
  store %struct.dmx_demux* %0, %struct.dmx_demux** %5, align 8
  store %struct.dmx_ts_feed** %1, %struct.dmx_ts_feed*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %11 = bitcast %struct.dmx_demux* %10 to %struct.dvb_demux*
  store %struct.dvb_demux* %11, %struct.dvb_demux** %8, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ERESTARTSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %105

19:                                               ; preds = %3
  %20 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %21 = call %struct.dvb_demux_feed* @dvb_dmx_feed_alloc(%struct.dvb_demux* %20)
  store %struct.dvb_demux_feed* %21, %struct.dvb_demux_feed** %9, align 8
  %22 = icmp ne %struct.dvb_demux_feed* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %25 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %105

29:                                               ; preds = %19
  %30 = load i8*, i8** @DMX_TYPE_TS, align 8
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %35 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %38 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %39 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %38, i32 0, i32 6
  store %struct.dvb_demux* %37, %struct.dvb_demux** %39, align 8
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 0
  store i32 65535, i32* %41, align 8
  %42 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %43 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %42, i32 0, i32 1
  store i32 65530, i32* %43, align 4
  %44 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %45 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %47 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.dmx_ts_feed**, %struct.dmx_ts_feed*** %6, align 8
  store %struct.dmx_ts_feed* %48, %struct.dmx_ts_feed** %49, align 8
  %50 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %51 = load %struct.dmx_ts_feed**, %struct.dmx_ts_feed*** %6, align 8
  %52 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %51, align 8
  %53 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %52, i32 0, i32 5
  store %struct.dmx_demux* %50, %struct.dmx_demux** %53, align 8
  %54 = load %struct.dmx_ts_feed**, %struct.dmx_ts_feed*** %6, align 8
  %55 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %54, align 8
  %56 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load %struct.dmx_ts_feed**, %struct.dmx_ts_feed*** %6, align 8
  %58 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %57, align 8
  %59 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @dmx_ts_feed_start_filtering, align 4
  %61 = load %struct.dmx_ts_feed**, %struct.dmx_ts_feed*** %6, align 8
  %62 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %61, align 8
  %63 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @dmx_ts_feed_stop_filtering, align 4
  %65 = load %struct.dmx_ts_feed**, %struct.dmx_ts_feed*** %6, align 8
  %66 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %65, align 8
  %67 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @dmx_ts_feed_set, align 4
  %69 = load %struct.dmx_ts_feed**, %struct.dmx_ts_feed*** %6, align 8
  %70 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %69, align 8
  %71 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %73 = call %struct.TYPE_6__* @dvb_dmx_filter_alloc(%struct.dvb_demux* %72)
  %74 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %75 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %74, i32 0, i32 2
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  %76 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %29
  %78 = load i32, i32* @DMX_STATE_FREE, align 4
  %79 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %80 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %82 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %105

86:                                               ; preds = %29
  %87 = load i8*, i8** @DMX_TYPE_TS, align 8
  %88 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %89 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i8* %87, i8** %91, align 8
  %92 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %93 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %94 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store %struct.dvb_demux_feed* %92, %struct.dvb_demux_feed** %96, align 8
  %97 = load i32, i32* @DMX_STATE_READY, align 4
  %98 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %99 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  %102 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %103 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %86, %77, %23, %16
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.dvb_demux_feed* @dvb_dmx_feed_alloc(%struct.dvb_demux*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_6__* @dvb_dmx_filter_alloc(%struct.dvb_demux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
