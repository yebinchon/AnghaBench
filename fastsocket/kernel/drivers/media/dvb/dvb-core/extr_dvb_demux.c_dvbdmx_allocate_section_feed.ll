; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_allocate_section_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_allocate_section_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_demux = type { i32 }
%struct.dmx_section_feed = type { i32, i32, i32, i32, i32, i32*, %struct.dmx_demux*, i64, i64, i64, i64, i32, i32 }
%struct.dvb_demux = type { i32 }
%struct.dvb_demux_feed = type { i32, %struct.TYPE_4__, i32*, i32*, %struct.dvb_demux*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.dmx_section_feed }
%struct.TYPE_3__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMX_TYPE_SEC = common dso_local global i32 0, align 4
@dmx_section_feed_set = common dso_local global i32 0, align 4
@dmx_section_feed_allocate_filter = common dso_local global i32 0, align 4
@dmx_section_feed_start_filtering = common dso_local global i32 0, align 4
@dmx_section_feed_stop_filtering = common dso_local global i32 0, align 4
@dmx_section_feed_release_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_demux*, %struct.dmx_section_feed**, i32)* @dvbdmx_allocate_section_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbdmx_allocate_section_feed(%struct.dmx_demux* %0, %struct.dmx_section_feed** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmx_demux*, align 8
  %6 = alloca %struct.dmx_section_feed**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_demux*, align 8
  %9 = alloca %struct.dvb_demux_feed*, align 8
  store %struct.dmx_demux* %0, %struct.dmx_demux** %5, align 8
  store %struct.dmx_section_feed** %1, %struct.dmx_section_feed*** %6, align 8
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
  br label %104

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
  br label %104

29:                                               ; preds = %19
  %30 = load i32, i32* @DMX_TYPE_SEC, align 4
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %35 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %38 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %39 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %38, i32 0, i32 4
  store %struct.dvb_demux* %37, %struct.dvb_demux** %39, align 8
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 0
  store i32 65535, i32* %41, align 8
  %42 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %43 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %48 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %49, i32 0, i32 12
  store i32 %46, i32* %50, align 4
  %51 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %52 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %53, i32 0, i32 9
  store i64 0, i64* %54, align 8
  %55 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %56 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %57, i32 0, i32 10
  store i64 0, i64* %58, align 8
  %59 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %60 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %64 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %66 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %9, align 8
  %68 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  store %struct.dmx_section_feed* %69, %struct.dmx_section_feed** %70, align 8
  %71 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %72 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %71, align 8
  %73 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %72, i32 0, i32 7
  store i64 0, i64* %73, align 8
  %74 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %75 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %76 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %75, align 8
  %77 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %76, i32 0, i32 6
  store %struct.dmx_demux* %74, %struct.dmx_demux** %77, align 8
  %78 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %79 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %78, align 8
  %80 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %79, i32 0, i32 5
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @dmx_section_feed_set, align 4
  %82 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %83 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %82, align 8
  %84 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @dmx_section_feed_allocate_filter, align 4
  %86 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %87 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %86, align 8
  %88 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @dmx_section_feed_start_filtering, align 4
  %90 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %91 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %90, align 8
  %92 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @dmx_section_feed_stop_filtering, align 4
  %94 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %95 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %94, align 8
  %96 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @dmx_section_feed_release_filter, align 4
  %98 = load %struct.dmx_section_feed**, %struct.dmx_section_feed*** %6, align 8
  %99 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %98, align 8
  %100 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %102 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %29, %23, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.dvb_demux_feed* @dvb_dmx_feed_alloc(%struct.dvb_demux*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
