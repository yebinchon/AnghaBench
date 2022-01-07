; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_pes_filter_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_pes_filter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32 }
%struct.dmxdev_filter = type { %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dmx_pes_filter_params = type { i64, i32 }

@DMX_PES_OTHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DMXDEV_TYPE_PES = common dso_local global i32 0, align 4
@DMXDEV_STATE_SET = common dso_local global i32 0, align 4
@DMX_IMMEDIATE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev*, %struct.dmxdev_filter*, %struct.dmx_pes_filter_params*)* @dvb_dmxdev_pes_filter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_pes_filter_set(%struct.dmxdev* %0, %struct.dmxdev_filter* %1, %struct.dmx_pes_filter_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmxdev*, align 8
  %6 = alloca %struct.dmxdev_filter*, align 8
  %7 = alloca %struct.dmx_pes_filter_params*, align 8
  %8 = alloca i32, align 4
  store %struct.dmxdev* %0, %struct.dmxdev** %5, align 8
  store %struct.dmxdev_filter* %1, %struct.dmxdev_filter** %6, align 8
  store %struct.dmx_pes_filter_params* %2, %struct.dmx_pes_filter_params** %7, align 8
  %9 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %10 = call i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter* %9)
  %11 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %12 = call i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter* %11)
  %13 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %7, align 8
  %14 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMX_PES_OTHER, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %7, align 8
  %20 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %18
  %27 = load i32, i32* @DMXDEV_TYPE_PES, align 4
  %28 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %29 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %31 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %30, i32 0, i32 0
  %32 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %7, align 8
  %33 = call i32 @memcpy(%struct.TYPE_6__* %31, %struct.dmx_pes_filter_params* %32, i32 16)
  %34 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %35 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %39 = load i32, i32* @DMXDEV_STATE_SET, align 4
  %40 = call i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter* %38, i32 %39)
  %41 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %42 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %43 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %44 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dvb_dmxdev_add_pid(%struct.dmxdev* %41, %struct.dmxdev_filter* %42, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %26
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %26
  %54 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %7, align 8
  %55 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DMX_IMMEDIATE_START, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %62 = call i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter* %61)
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60, %51, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.dmx_pes_filter_params*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter*, i32) #1

declare dso_local i32 @dvb_dmxdev_add_pid(%struct.dmxdev*, %struct.dmxdev_filter*, i32) #1

declare dso_local i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
