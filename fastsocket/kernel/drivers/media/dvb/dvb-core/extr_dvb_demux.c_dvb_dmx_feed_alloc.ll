; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_feed_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_feed_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i64 }
%struct.dvb_demux = type { i32, %struct.dvb_demux_feed* }

@DMX_STATE_FREE = common dso_local global i64 0, align 8
@DMX_STATE_ALLOCATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dvb_demux_feed* (%struct.dvb_demux*)* @dvb_dmx_feed_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dvb_demux_feed* @dvb_dmx_feed_alloc(%struct.dvb_demux* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_demux* %0, %struct.dvb_demux** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 1
  %14 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %14, i64 %16
  %18 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMX_STATE_FREE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %27

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %22, %5
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.dvb_demux_feed* null, %struct.dvb_demux_feed** %2, align 8
  br label %49

34:                                               ; preds = %27
  %35 = load i64, i64* @DMX_STATE_ALLOCATED, align 8
  %36 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %36, i32 0, i32 1
  %38 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %38, i64 %40
  %42 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %41, i32 0, i32 0
  store i64 %35, i64* %42, align 8
  %43 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %43, i32 0, i32 1
  %45 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %45, i64 %47
  store %struct.dvb_demux_feed* %48, %struct.dvb_demux_feed** %2, align 8
  br label %49

49:                                               ; preds = %34, %33
  %50 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  ret %struct.dvb_demux_feed* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
