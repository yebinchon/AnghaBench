; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_write_to_decoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_write_to_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.av7110 = type { %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@DMX_MEMORY_FE = common dso_local global i64 0, align 8
@AUDIO_SOURCE_MEMORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VIDEO_SOURCE_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_write_to_decoder(%struct.dvb_demux_feed* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_demux_feed*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dvb_demux*, align 8
  %9 = alloca %struct.av7110*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %10, i32 0, i32 1
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %11, align 8
  store %struct.dvb_demux* %12, %struct.dvb_demux** %8, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.av7110*
  store %struct.av7110* %16, %struct.av7110** %9, align 8
  %17 = load %struct.av7110*, %struct.av7110** %9, align 8
  %18 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %17)
  %19 = load %struct.av7110*, %struct.av7110** %9, align 8
  %20 = getelementptr inbounds %struct.av7110, %struct.av7110* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %25 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DMX_MEMORY_FE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %68

33:                                               ; preds = %23, %3
  %34 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %59 [
    i32 0, label %37
    i32 1, label %48
  ]

37:                                               ; preds = %33
  %38 = load %struct.av7110*, %struct.av7110** %9, align 8
  %39 = getelementptr inbounds %struct.av7110, %struct.av7110* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AUDIO_SOURCE_MEMORY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %37
  br label %60

48:                                               ; preds = %33
  %49 = load %struct.av7110*, %struct.av7110** %9, align 8
  %50 = getelementptr inbounds %struct.av7110, %struct.av7110* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VIDEO_SOURCE_MEMORY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %68

58:                                               ; preds = %48
  br label %60

59:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %68

60:                                               ; preds = %58, %47
  %61 = load %struct.av7110*, %struct.av7110** %9, align 8
  %62 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %63 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @write_ts_to_decoder(%struct.av7110* %61, i32 %64, i32* %65, i64 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %60, %59, %55, %44, %32
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @write_ts_to_decoder(%struct.av7110*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
