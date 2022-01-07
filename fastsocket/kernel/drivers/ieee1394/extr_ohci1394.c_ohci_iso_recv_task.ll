; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { %struct.ohci_iso_recv* }
%struct.ohci_iso_recv = type { i64 }

@BUFFER_FILL_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ohci_iso_recv_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca %struct.ohci_iso_recv*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.hpsb_iso*
  store %struct.hpsb_iso* %6, %struct.hpsb_iso** %3, align 8
  %7 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %8 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %7, i32 0, i32 0
  %9 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %8, align 8
  store %struct.ohci_iso_recv* %9, %struct.ohci_iso_recv** %4, align 8
  %10 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %11 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BUFFER_FILL_MODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %17 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %18 = call i32 @ohci_iso_recv_bufferfill_task(%struct.hpsb_iso* %16, %struct.ohci_iso_recv* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %21 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %22 = call i32 @ohci_iso_recv_packetperbuf_task(%struct.hpsb_iso* %20, %struct.ohci_iso_recv* %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @ohci_iso_recv_bufferfill_task(%struct.hpsb_iso*, %struct.ohci_iso_recv*) #1

declare dso_local i32 @ohci_iso_recv_packetperbuf_task(%struct.hpsb_iso*, %struct.ohci_iso_recv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
