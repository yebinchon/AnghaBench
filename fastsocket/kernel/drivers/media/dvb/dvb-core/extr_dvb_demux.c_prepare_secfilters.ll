; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_prepare_secfilters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_prepare_secfilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux_filter* }
%struct.dvb_demux_filter = type { i32*, i32*, i32, %struct.dmx_section_filter, %struct.dvb_demux_filter* }
%struct.dmx_section_filter = type { i32*, i32* }

@DVB_DEMUX_MASK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_demux_feed*)* @prepare_secfilters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_secfilters(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_demux_filter*, align 8
  %5 = alloca %struct.dmx_section_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 0
  %11 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %10, align 8
  store %struct.dvb_demux_filter* %11, %struct.dvb_demux_filter** %4, align 8
  %12 = icmp ne %struct.dvb_demux_filter* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %73

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %68, %14
  %16 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %16, i32 0, i32 3
  store %struct.dmx_section_filter* %17, %struct.dmx_section_filter** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %58, %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DVB_DEMUX_MASK_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %5, align 8
  %24 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %5, align 8
  %31 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %49
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %22
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %18

61:                                               ; preds = %18
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %4, align 8
  %67 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %69, i32 0, i32 4
  %71 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %70, align 8
  store %struct.dvb_demux_filter* %71, %struct.dvb_demux_filter** %4, align 8
  %72 = icmp ne %struct.dvb_demux_filter* %71, null
  br i1 %72, label %15, label %73

73:                                               ; preds = %13, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
