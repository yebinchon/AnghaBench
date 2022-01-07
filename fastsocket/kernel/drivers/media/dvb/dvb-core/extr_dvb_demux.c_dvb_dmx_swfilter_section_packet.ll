; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i32*)* @dvb_dmx_swfilter_section_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmx_swfilter_section_packet(%struct.dvb_demux_feed* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @payload(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %125

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 188, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %10, align 4
  %27 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, 15
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %20
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %48, %43
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59, %56
  %63 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %66 = call i32 @dvb_dmx_swfilter_section_new(%struct.dvb_demux_feed* %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 64
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %116

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %115

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %76
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %13, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %103, i32* %104, i32 %105)
  %107 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %110 = call i32 @dvb_dmx_swfilter_section_new(%struct.dvb_demux_feed* %109)
  %111 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %111, i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %84, %76, %73
  br label %124

116:                                              ; preds = %67
  %117 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %117, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %116, %115
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %19
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @payload(i32*) #1

declare dso_local i32 @dvb_dmx_swfilter_section_new(%struct.dvb_demux_feed*) #1

declare dso_local i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
