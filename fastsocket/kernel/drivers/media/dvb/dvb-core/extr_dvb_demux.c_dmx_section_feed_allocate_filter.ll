; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_allocate_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_allocate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_section_feed = type { i32 }
%struct.dmx_section_filter = type { i32*, %struct.dmx_section_feed* }
%struct.dvb_demux_feed = type { %struct.dvb_demux_filter*, %struct.dvb_demux* }
%struct.dvb_demux_filter = type { %struct.dvb_demux_filter*, i32, i32, %struct.dvb_demux_feed*, %struct.dmx_section_filter }
%struct.dvb_demux = type { i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMX_TYPE_SEC = common dso_local global i32 0, align 4
@DMX_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_section_feed*, %struct.dmx_section_filter**)* @dmx_section_feed_allocate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_section_feed_allocate_filter(%struct.dmx_section_feed* %0, %struct.dmx_section_filter** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmx_section_feed*, align 8
  %5 = alloca %struct.dmx_section_filter**, align 8
  %6 = alloca %struct.dvb_demux_feed*, align 8
  %7 = alloca %struct.dvb_demux*, align 8
  %8 = alloca %struct.dvb_demux_filter*, align 8
  store %struct.dmx_section_feed* %0, %struct.dmx_section_feed** %4, align 8
  store %struct.dmx_section_filter** %1, %struct.dmx_section_filter*** %5, align 8
  %9 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %4, align 8
  %10 = bitcast %struct.dmx_section_feed* %9 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %10, %struct.dvb_demux_feed** %6, align 8
  %11 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %12 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %11, i32 0, i32 1
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %12, align 8
  store %struct.dvb_demux* %13, %struct.dvb_demux** %7, align 8
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ERESTARTSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %23 = call %struct.dvb_demux_filter* @dvb_dmx_filter_alloc(%struct.dvb_demux* %22)
  store %struct.dvb_demux_filter* %23, %struct.dvb_demux_filter** %8, align 8
  %24 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %8, align 8
  %25 = icmp ne %struct.dvb_demux_filter* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %28 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %21
  %33 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %34 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %8, align 8
  %37 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %36, i32 0, i32 4
  %38 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %5, align 8
  store %struct.dmx_section_filter* %37, %struct.dmx_section_filter** %38, align 8
  %39 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %4, align 8
  %40 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %5, align 8
  %41 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %40, align 8
  %42 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %41, i32 0, i32 1
  store %struct.dmx_section_feed* %39, %struct.dmx_section_feed** %42, align 8
  %43 = load %struct.dmx_section_filter**, %struct.dmx_section_filter*** %5, align 8
  %44 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %43, align 8
  %45 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %47 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %8, align 8
  %48 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %47, i32 0, i32 3
  store %struct.dvb_demux_feed* %46, %struct.dvb_demux_feed** %48, align 8
  %49 = load i32, i32* @DMX_TYPE_SEC, align 4
  %50 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %8, align 8
  %51 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @DMX_STATE_READY, align 4
  %53 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %8, align 8
  %54 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %56 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %55, i32 0, i32 0
  %57 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %56, align 8
  %58 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %8, align 8
  %59 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %58, i32 0, i32 0
  store %struct.dvb_demux_filter* %57, %struct.dvb_demux_filter** %59, align 8
  %60 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %8, align 8
  %61 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %6, align 8
  %62 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %61, i32 0, i32 0
  store %struct.dvb_demux_filter* %60, %struct.dvb_demux_filter** %62, align 8
  %63 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %64 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %67 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %32, %26, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.dvb_demux_filter* @dvb_dmx_filter_alloc(%struct.dvb_demux*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
