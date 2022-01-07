; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dvb.c_videobuf_dvb_start_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dvb.c_videobuf_dvb_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_2__, %struct.videobuf_dvb* }
%struct.TYPE_2__ = type { i32 }
%struct.videobuf_dvb = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@videobuf_dvb_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s dvb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @videobuf_dvb_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_dvb_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.videobuf_dvb*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 0
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  store %struct.dvb_demux* %9, %struct.dvb_demux** %4, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 1
  %12 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %11, align 8
  store %struct.videobuf_dvb* %12, %struct.videobuf_dvb** %5, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %23 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %26 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %30 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %33 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* null, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %59

37:                                               ; preds = %21
  %38 = load i32, i32* @videobuf_dvb_thread, align 4
  %39 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %40 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %41 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @kthread_run(i32 %38, %struct.videobuf_dvb* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %45 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %47 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @IS_ERR(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %53 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %57 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %37
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.videobuf_dvb*, %struct.videobuf_dvb** %5, align 8
  %61 = getelementptr inbounds %struct.videobuf_dvb, %struct.videobuf_dvb* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.videobuf_dvb*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
