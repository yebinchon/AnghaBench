; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_demux = type { i32 }
%struct.dvb_demux = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_demux*)* @dvbdmx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbdmx_close(%struct.dmx_demux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmx_demux*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  store %struct.dmx_demux* %0, %struct.dmx_demux** %3, align 8
  %5 = load %struct.dmx_demux*, %struct.dmx_demux** %3, align 8
  %6 = bitcast %struct.dmx_demux* %5 to %struct.dvb_demux*
  store %struct.dvb_demux* %6, %struct.dvb_demux** %4, align 8
  %7 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
