; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_release_section_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_release_section_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_demux = type { i32 }
%struct.dmx_section_feed = type { i32 }
%struct.dvb_demux_feed = type { i64, i32, i32* }
%struct.dvb_demux = type { i32 }

@DMX_STATE_FREE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_demux*, %struct.dmx_section_feed*)* @dvbdmx_release_section_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbdmx_release_section_feed(%struct.dmx_demux* %0, %struct.dmx_section_feed* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmx_demux*, align 8
  %5 = alloca %struct.dmx_section_feed*, align 8
  %6 = alloca %struct.dvb_demux_feed*, align 8
  %7 = alloca %struct.dvb_demux*, align 8
  store %struct.dmx_demux* %0, %struct.dmx_demux** %4, align 8
  store %struct.dmx_section_feed* %1, %struct.dmx_section_feed** %5, align 8
  %8 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %5, align 8
  %9 = bitcast %struct.dmx_section_feed* %8 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %9, %struct.dvb_demux_feed** %6, align 8
  %10 = load %struct.dmx_demux*, %struct.dmx_demux** %4, align 8
  %11 = bitcast %struct.dmx_demux* %10 to %struct.dvb_demux*
  store %struct.dvb_demux* %11, %struct.dvb_demux** %7, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %16 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMX_STATE_FREE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %22 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %2
  %27 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %28 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @vfree(i32* %29)
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load i64, i64* @DMX_STATE_FREE, align 8
  %34 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %35 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %37 = call i32 @dvb_demux_feed_del(%struct.dvb_demux_feed* %36)
  %38 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %39 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %38, i32 0, i32 1
  store i32 65535, i32* %39, align 8
  %40 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %41 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
