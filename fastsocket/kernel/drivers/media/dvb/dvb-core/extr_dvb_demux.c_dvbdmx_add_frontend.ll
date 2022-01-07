; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_add_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvbdmx_add_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_demux = type { i32 }
%struct.dmx_frontend = type { i32 }
%struct.dvb_demux = type { %struct.list_head }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_demux*, %struct.dmx_frontend*)* @dvbdmx_add_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbdmx_add_frontend(%struct.dmx_demux* %0, %struct.dmx_frontend* %1) #0 {
  %3 = alloca %struct.dmx_demux*, align 8
  %4 = alloca %struct.dmx_frontend*, align 8
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.dmx_demux* %0, %struct.dmx_demux** %3, align 8
  store %struct.dmx_frontend* %1, %struct.dmx_frontend** %4, align 8
  %7 = load %struct.dmx_demux*, %struct.dmx_demux** %3, align 8
  %8 = bitcast %struct.dmx_demux* %7 to %struct.dvb_demux*
  store %struct.dvb_demux* %8, %struct.dvb_demux** %5, align 8
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 0
  store %struct.list_head* %10, %struct.list_head** %6, align 8
  %11 = load %struct.dmx_frontend*, %struct.dmx_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dmx_frontend, %struct.dmx_frontend* %11, i32 0, i32 0
  %13 = load %struct.list_head*, %struct.list_head** %6, align 8
  %14 = call i32 @list_add(i32* %12, %struct.list_head* %13)
  ret i32 0
}

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
