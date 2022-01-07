; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_copy_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_copy_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i64, %struct.TYPE_2__, %struct.dvb_demux* }
%struct.TYPE_2__ = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i64, i64, i64, i64, i32, i64 }
%struct.dvb_demux = type { i32 (%struct.dvb_demux_feed*, i64, i64*, i64)* }

@DMX_MAX_SECFEED_SIZE = common dso_local global i64 0, align 8
@DMX_MAX_SECTION_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i64*, i64)* @dvb_dmx_swfilter_section_copy_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_demux_feed*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dvb_demux*, align 8
  %9 = alloca %struct.dmx_section_feed*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %13, i32 0, i32 2
  %15 = load %struct.dvb_demux*, %struct.dvb_demux** %14, align 8
  store %struct.dvb_demux* %15, %struct.dvb_demux** %8, align 8
  %16 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.dmx_section_feed* %18, %struct.dmx_section_feed** %9, align 8
  %19 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %20 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

25:                                               ; preds = %3
  %26 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %27 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %35 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %36 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i64, i64* %7, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %135

43:                                               ; preds = %39
  %44 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %45 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %44, i32 0, i32 0
  %46 = load i32 (%struct.dvb_demux_feed*, i64, i64*, i64)*, i32 (%struct.dvb_demux_feed*, i64, i64*, i64)** %45, align 8
  %47 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %48 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %49 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %52 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 %46(%struct.dvb_demux_feed* %47, i64 %54, i64* %55, i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %60 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %64 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %135

70:                                               ; preds = %43
  %71 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %72 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %75 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %79 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  store i64 0, i64* %12, align 8
  br label %80

80:                                               ; preds = %131, %70
  %81 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %82 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 2
  %85 = load i64, i64* %10, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %134

87:                                               ; preds = %80
  %88 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %89 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @section_length(i64 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %87
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @DMX_MAX_SECTION_SIZE, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %101 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = load i64, i64* %10, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98, %94, %87
  store i32 0, i32* %4, align 4
  br label %135

107:                                              ; preds = %98
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %110 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %109, i32 0, i32 5
  store i64 %108, i64* %110, align 8
  %111 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %112 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %111, i32 0, i32 4
  store i32 -1, i32* %112, align 8
  %113 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %114 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %119 = call i32 @dvb_dmx_swfilter_section_feed(%struct.dvb_demux_feed* %118)
  br label %120

120:                                              ; preds = %117, %107
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %123 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %128 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %120
  %132 = load i64, i64* %12, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %80

134:                                              ; preds = %80
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %106, %69, %42, %24
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @section_length(i64) #1

declare dso_local i32 @dvb_dmx_swfilter_section_feed(%struct.dvb_demux_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
