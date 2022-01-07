; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_packet_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_packet_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.dvb_demux_feed*, i32*, i32)* }
%struct.TYPE_6__ = type { i32 (i32*, i32, i32*, i32, %struct.TYPE_10__*, i32)* }

@TS_PACKET = common dso_local global i32 0, align 4
@TS_PAYLOAD_ONLY = common dso_local global i32 0, align 4
@DMX_OK = common dso_local global i32 0, align 4
@TS_DECODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_demux_feed*, i32*)* @dvb_dmx_swfilter_packet_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_dmx_swfilter_packet_type(%struct.dvb_demux_feed* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca i32*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %94 [
    i32 128, label %8
    i32 129, label %71
  ]

8:                                                ; preds = %2
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %95

16:                                               ; preds = %8
  %17 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TS_PACKET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TS_PAYLOAD_ONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @dvb_dmx_swfilter_payload(%struct.dvb_demux_feed* %31, i32* %32)
  br label %45

34:                                               ; preds = %23
  %35 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (i32*, i32, i32*, i32, %struct.TYPE_10__*, i32)*, i32 (i32*, i32, i32*, i32, %struct.TYPE_10__*, i32)** %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* @DMX_OK, align 4
  %44 = call i32 %38(i32* %39, i32 188, i32* null, i32 0, %struct.TYPE_10__* %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %30
  br label %46

46:                                               ; preds = %45, %16
  %47 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TS_DECODER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %46
  %54 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dvb_demux_feed*, i32*, i32)*, i32 (%struct.dvb_demux_feed*, i32*, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.dvb_demux_feed*, i32*, i32)* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dvb_demux_feed*, i32*, i32)*, i32 (%struct.dvb_demux_feed*, i32*, i32)** %64, align 8
  %66 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 %65(%struct.dvb_demux_feed* %66, i32* %67, i32 188)
  br label %69

69:                                               ; preds = %60, %53
  br label %70

70:                                               ; preds = %69, %46
  br label %95

71:                                               ; preds = %2
  %72 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %73 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %95

79:                                               ; preds = %71
  %80 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @dvb_dmx_swfilter_section_packet(%struct.dvb_demux_feed* %80, i32* %81)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %86 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %84, %79
  br label %95

94:                                               ; preds = %2
  br label %95

95:                                               ; preds = %94, %93, %78, %70, %15
  ret void
}

declare dso_local i32 @dvb_dmx_swfilter_payload(%struct.dvb_demux_feed*, i32*) #1

declare dso_local i32 @dvb_dmx_swfilter_section_packet(%struct.dvb_demux_feed*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
