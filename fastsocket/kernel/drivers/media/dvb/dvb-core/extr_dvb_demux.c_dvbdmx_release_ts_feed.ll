; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_release_ts_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_release_ts_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_demux = type { i32 }
%struct.dmx_ts_feed = type { i32 }
%struct.dvb_demux = type { i32, i32** }
%struct.dvb_demux_feed = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@DMX_STATE_FREE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TS_DECODER = common dso_local global i32 0, align 4
@DMX_TS_PES_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_demux*, %struct.dmx_ts_feed*)* @dvbdmx_release_ts_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbdmx_release_ts_feed(%struct.dmx_demux* %0, %struct.dmx_ts_feed* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmx_demux*, align 8
  %5 = alloca %struct.dmx_ts_feed*, align 8
  %6 = alloca %struct.dvb_demux*, align 8
  %7 = alloca %struct.dvb_demux_feed*, align 8
  store %struct.dmx_demux* %0, %struct.dmx_demux** %4, align 8
  store %struct.dmx_ts_feed* %1, %struct.dmx_ts_feed** %5, align 8
  %8 = load %struct.dmx_demux*, %struct.dmx_demux** %4, align 8
  %9 = bitcast %struct.dmx_demux* %8 to %struct.dvb_demux*
  store %struct.dvb_demux* %9, %struct.dvb_demux** %6, align 8
  %10 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %5, align 8
  %11 = bitcast %struct.dmx_ts_feed* %10 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %11, %struct.dvb_demux_feed** %7, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %16 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMX_STATE_FREE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %22 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %28 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @vfree(i32* %29)
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = load i64, i64* @DMX_STATE_FREE, align 8
  %34 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %35 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* @DMX_STATE_FREE, align 8
  %37 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %38 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %42 = call i32 @dvb_demux_feed_del(%struct.dvb_demux_feed* %41)
  %43 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %44 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %43, i32 0, i32 1
  store i32 65535, i32* %44, align 8
  %45 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %46 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TS_DECODER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %26
  %52 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %53 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DMX_TS_PES_OTHER, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %59 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %62 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %57, %51, %26
  %66 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %67 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dvb_demux_feed_del(%struct.dvb_demux_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
