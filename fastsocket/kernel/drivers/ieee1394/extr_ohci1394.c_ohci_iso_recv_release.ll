; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, %struct.ohci_iso_recv* }
%struct.ohci_iso_recv = type { i64 }
%struct.hpsb_iso_packet_info = type { i32 }

@BUFFER_FILL_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*, %struct.hpsb_iso_packet_info*)* @ohci_iso_recv_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_release(%struct.hpsb_iso* %0, %struct.hpsb_iso_packet_info* %1) #0 {
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca %struct.hpsb_iso_packet_info*, align 8
  %5 = alloca %struct.ohci_iso_recv*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  store %struct.hpsb_iso_packet_info* %1, %struct.hpsb_iso_packet_info** %4, align 8
  %6 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %7 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %6, i32 0, i32 1
  %8 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %7, align 8
  store %struct.ohci_iso_recv* %8, %struct.ohci_iso_recv** %5, align 8
  %9 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %10 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BUFFER_FILL_MODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %16 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %4, align 8
  %17 = call i32 @ohci_iso_recv_bufferfill_release(%struct.ohci_iso_recv* %15, %struct.hpsb_iso_packet_info* %16)
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %20 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %4, align 8
  %21 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %22 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %20, i64 %25
  %27 = call i32 @ohci_iso_recv_release_block(%struct.ohci_iso_recv* %19, %struct.hpsb_iso_packet_info* %26)
  br label %28

28:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @ohci_iso_recv_bufferfill_release(%struct.ohci_iso_recv*, %struct.hpsb_iso_packet_info*) #1

declare dso_local i32 @ohci_iso_recv_release_block(%struct.ohci_iso_recv*, %struct.hpsb_iso_packet_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
