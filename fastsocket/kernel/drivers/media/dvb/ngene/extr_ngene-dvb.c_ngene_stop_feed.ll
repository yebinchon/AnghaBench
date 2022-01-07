; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-dvb.c_ngene_stop_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-dvb.c_ngene_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.ngene_channel* }
%struct.ngene_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngene_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.ngene_channel*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 0
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  store %struct.dvb_demux* %8, %struct.dvb_demux** %4, align 8
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 0
  %11 = load %struct.ngene_channel*, %struct.ngene_channel** %10, align 8
  store %struct.ngene_channel* %11, %struct.ngene_channel** %5, align 8
  %12 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %30 = call i32 @set_transfer(%struct.ngene_channel* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %21
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @set_transfer(%struct.ngene_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
