; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_release_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_release_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_section_feed = type { i32 (%struct.dmx_section_feed*)*, i64 }
%struct.dmx_section_filter = type { i32 }
%struct.dvb_demux_filter = type { i32, %struct.dvb_demux_filter*, %struct.dvb_demux_feed* }
%struct.dvb_demux_feed = type { %struct.dvb_demux_filter*, %struct.dvb_demux* }
%struct.dvb_demux = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMX_STATE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_section_feed*, %struct.dmx_section_filter*)* @dmx_section_feed_release_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_section_feed_release_filter(%struct.dmx_section_feed* %0, %struct.dmx_section_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmx_section_feed*, align 8
  %5 = alloca %struct.dmx_section_filter*, align 8
  %6 = alloca %struct.dvb_demux_filter*, align 8
  %7 = alloca %struct.dvb_demux_filter*, align 8
  %8 = alloca %struct.dvb_demux_feed*, align 8
  %9 = alloca %struct.dvb_demux*, align 8
  store %struct.dmx_section_feed* %0, %struct.dmx_section_feed** %4, align 8
  store %struct.dmx_section_filter* %1, %struct.dmx_section_filter** %5, align 8
  %10 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %5, align 8
  %11 = bitcast %struct.dmx_section_filter* %10 to %struct.dvb_demux_filter*
  store %struct.dvb_demux_filter* %11, %struct.dvb_demux_filter** %6, align 8
  %12 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %4, align 8
  %13 = bitcast %struct.dmx_section_feed* %12 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %13, %struct.dvb_demux_feed** %8, align 8
  %14 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %14, i32 0, i32 1
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  store %struct.dvb_demux* %16, %struct.dvb_demux** %9, align 8
  %17 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  %18 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %20, i32 0, i32 2
  %22 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %21, align 8
  %23 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %24 = icmp ne %struct.dvb_demux_feed* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  %27 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %2
  %32 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %4, align 8
  %33 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %4, align 8
  %38 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %37, i32 0, i32 0
  %39 = load i32 (%struct.dmx_section_feed*)*, i32 (%struct.dmx_section_feed*)** %38, align 8
  %40 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %4, align 8
  %41 = call i32 %39(%struct.dmx_section_feed* %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  %44 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %43, i32 0, i32 1
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %47 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %46, i32 0, i32 0
  %48 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %47, align 8
  store %struct.dvb_demux_filter* %48, %struct.dvb_demux_filter** %7, align 8
  %49 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %7, align 8
  %50 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %6, align 8
  %51 = icmp eq %struct.dvb_demux_filter* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %6, align 8
  %54 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %53, i32 0, i32 1
  %55 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %54, align 8
  %56 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %57 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %56, i32 0, i32 0
  store %struct.dvb_demux_filter* %55, %struct.dvb_demux_filter** %57, align 8
  br label %77

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %65, %58
  %60 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %7, align 8
  %61 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %60, i32 0, i32 1
  %62 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %61, align 8
  %63 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %6, align 8
  %64 = icmp ne %struct.dvb_demux_filter* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %7, align 8
  %67 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %66, i32 0, i32 1
  %68 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %67, align 8
  store %struct.dvb_demux_filter* %68, %struct.dvb_demux_filter** %7, align 8
  br label %59

69:                                               ; preds = %59
  %70 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %7, align 8
  %71 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %70, i32 0, i32 1
  %72 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %71, align 8
  %73 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %72, i32 0, i32 1
  %74 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %73, align 8
  %75 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %7, align 8
  %76 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %75, i32 0, i32 1
  store %struct.dvb_demux_filter* %74, %struct.dvb_demux_filter** %76, align 8
  br label %77

77:                                               ; preds = %69, %52
  %78 = load i32, i32* @DMX_STATE_FREE, align 4
  %79 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %6, align 8
  %80 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  %82 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  %85 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %77, %25
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
