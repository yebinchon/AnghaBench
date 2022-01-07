; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { %struct.ohci_iso_recv* }
%struct.ohci_iso_recv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OHCI1394_IsoRecvIntMaskClear = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*)* @ohci_iso_recv_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_stop(%struct.hpsb_iso* %0) #0 {
  %2 = alloca %struct.hpsb_iso*, align 8
  %3 = alloca %struct.ohci_iso_recv*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %2, align 8
  %4 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %5 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %4, i32 0, i32 0
  %6 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  store %struct.ohci_iso_recv* %6, %struct.ohci_iso_recv** %3, align 8
  %7 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %8 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OHCI1394_IsoRecvIntMaskClear, align 4
  %11 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %12 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = call i32 @reg_write(i32 %9, i32 %10, i32 %15)
  %17 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %18 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ohci1394_stop_context(i32 %19, i32 %22, i32* null)
  ret void
}

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @ohci1394_stop_context(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
