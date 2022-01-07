; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_ctrl_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_ctrl_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pvr2_dvb_adapter* }
%struct.pvr2_dvb_adapter = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PVR2_TRACE_DVB_FEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"start feeding demux\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"stop feeding demux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i32)* @pvr2_dvb_ctrl_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_ctrl_feed(%struct.dvb_demux_feed* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvr2_dvb_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %11, align 8
  store %struct.pvr2_dvb_adapter* %12, %struct.pvr2_dvb_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %14 = icmp eq %struct.pvr2_dvb_adapter* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @PVR2_TRACE_DVB_FEED, align 4
  %32 = call i32 @pvr2_trace(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %34 = call i32 @pvr2_dvb_stream_start(%struct.pvr2_dvb_adapter* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %66

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %65

44:                                               ; preds = %22
  %45 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @PVR2_TRACE_DVB_FEED, align 4
  %60 = call i32 @pvr2_trace(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %62 = call i32 @pvr2_dvb_stream_end(%struct.pvr2_dvb_adapter* %61)
  br label %63

63:                                               ; preds = %58, %49
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %39
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @pvr2_dvb_stream_start(%struct.pvr2_dvb_adapter*) #1

declare dso_local i32 @pvr2_dvb_stream_end(%struct.pvr2_dvb_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
