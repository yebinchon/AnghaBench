; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_start_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed**, i32)*, i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed*)* }
%struct.dmx_ts_feed = type { i32 (%struct.dmx_ts_feed*, i32, i32, i64, i32, i32)*, i32 (%struct.dmx_ts_feed*)*, %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dmx_pes_filter_params }
%struct.dmx_pes_filter_params = type { i64, i64 }
%struct.dmxdev_feed = type { i32, %struct.dmx_ts_feed* }
%struct.timespec = type { i32 }

@DMX_PES_OTHER = common dso_local global i64 0, align 8
@TS_DECODER = common dso_local global i32 0, align 4
@DMX_OUT_TS_TAP = common dso_local global i64 0, align 8
@TS_PACKET = common dso_local global i32 0, align 4
@DMX_OUT_TSDEMUX_TAP = common dso_local global i64 0, align 8
@TS_DEMUX = common dso_local global i32 0, align 4
@DMX_OUT_TAP = common dso_local global i64 0, align 8
@TS_PAYLOAD_ONLY = common dso_local global i32 0, align 4
@dvb_dmxdev_ts_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev*, %struct.dmxdev_filter*, %struct.dmxdev_feed*)* @dvb_dmxdev_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_start_feed(%struct.dmxdev* %0, %struct.dmxdev_filter* %1, %struct.dmxdev_feed* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmxdev*, align 8
  %6 = alloca %struct.dmxdev_filter*, align 8
  %7 = alloca %struct.dmxdev_feed*, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.dmx_pes_filter_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dmx_ts_feed*, align 8
  store %struct.dmxdev* %0, %struct.dmxdev** %5, align 8
  store %struct.dmxdev_filter* %1, %struct.dmxdev_filter** %6, align 8
  store %struct.dmxdev_feed* %2, %struct.dmxdev_feed** %7, align 8
  %15 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %17 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.dmx_pes_filter_params* %18, %struct.dmx_pes_filter_params** %9, align 8
  %19 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %7, align 8
  %20 = getelementptr inbounds %struct.dmxdev_feed, %struct.dmxdev_feed* %19, i32 0, i32 1
  store %struct.dmx_ts_feed* null, %struct.dmx_ts_feed** %20, align 8
  %21 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %9, align 8
  %22 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %9, align 8
  %25 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @DMX_PES_OTHER, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @TS_DECODER, align 4
  store i32 %31, i32* %12, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @DMX_OUT_TS_TAP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @TS_PACKET, align 4
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %12, align 4
  br label %65

41:                                               ; preds = %33
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @DMX_OUT_TSDEMUX_TAP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @TS_PACKET, align 4
  %47 = load i32, i32* @TS_DEMUX, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %64

51:                                               ; preds = %41
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @DMX_OUT_TAP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* @TS_PACKET, align 4
  %57 = load i32, i32* @TS_DEMUX, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @TS_PAYLOAD_ONLY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %55, %51
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %67 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed**, i32)*, i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed**, i32)** %69, align 8
  %71 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %72 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %7, align 8
  %75 = getelementptr inbounds %struct.dmxdev_feed, %struct.dmxdev_feed* %74, i32 0, i32 1
  %76 = load i32, i32* @dvb_dmxdev_ts_callback, align 4
  %77 = call i32 %70(%struct.TYPE_6__* %73, %struct.dmx_ts_feed** %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %136

82:                                               ; preds = %65
  %83 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %7, align 8
  %84 = getelementptr inbounds %struct.dmxdev_feed, %struct.dmxdev_feed* %83, i32 0, i32 1
  %85 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %84, align 8
  store %struct.dmx_ts_feed* %85, %struct.dmx_ts_feed** %14, align 8
  %86 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %87 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %14, align 8
  %88 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %87, i32 0, i32 2
  store %struct.dmxdev_filter* %86, %struct.dmxdev_filter** %88, align 8
  %89 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %14, align 8
  %90 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %89, i32 0, i32 0
  %91 = load i32 (%struct.dmx_ts_feed*, i32, i32, i64, i32, i32)*, i32 (%struct.dmx_ts_feed*, i32, i32, i64, i32, i32)** %90, align 8
  %92 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %14, align 8
  %93 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %7, align 8
  %94 = getelementptr inbounds %struct.dmxdev_feed, %struct.dmxdev_feed* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %91(%struct.dmx_ts_feed* %92, i32 %95, i32 %96, i64 %97, i32 32768, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %82
  %104 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %105 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed*)*, i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed*)** %107, align 8
  %109 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %110 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %14, align 8
  %113 = call i32 %108(%struct.TYPE_6__* %111, %struct.dmx_ts_feed* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %136

115:                                              ; preds = %82
  %116 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %14, align 8
  %117 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %116, i32 0, i32 1
  %118 = load i32 (%struct.dmx_ts_feed*)*, i32 (%struct.dmx_ts_feed*)** %117, align 8
  %119 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %14, align 8
  %120 = call i32 %118(%struct.dmx_ts_feed* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %115
  %124 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %125 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed*)*, i32 (%struct.TYPE_6__*, %struct.dmx_ts_feed*)** %127, align 8
  %129 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %130 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %14, align 8
  %133 = call i32 %128(%struct.TYPE_6__* %131, %struct.dmx_ts_feed* %132)
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %123, %103, %80
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
