; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dvb.c_videobuf_dvb_stop_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dvb.c_videobuf_dvb_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.videobuf_dvb* }
%struct.videobuf_dvb = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @videobuf_dvb_stop_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_dvb_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.videobuf_dvb*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 0
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  store %struct.dvb_demux* %8, %struct.dvb_demux** %3, align 8
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 0
  %11 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %10, align 8
  store %struct.videobuf_dvb* %11, %struct.videobuf_dvb** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %4, align 8
  %13 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %4, align 8
  %16 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %4, align 8
  %20 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %4, align 8
  %25 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* null, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %4, align 8
  %30 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kthread_stop(i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %4, align 8
  %34 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %23, %1
  %36 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %4, align 8
  %37 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
