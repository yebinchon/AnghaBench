; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_start_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pd_dvb_adapter* }
%struct.pd_dvb_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @pd_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.pd_dvb_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %9, align 8
  store %struct.pd_dvb_adapter* %10, %struct.pd_dvb_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %12 = icmp ne %struct.pd_dvb_adapter* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %15, i32 0, i32 0
  %17 = call i32 @atomic_inc_return(i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %21 = call i32 @dvb_start_streaming(%struct.pd_dvb_adapter* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dvb_start_streaming(%struct.pd_dvb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
