; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_rxf_mcast_add_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_rxf_mcast_add_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bfi_enet_mcast_add_req }
%struct.bfi_enet_mcast_add_req = type { i32 }
%struct.bfi_msgq_mhdr = type { i32 }
%struct.bfi_enet_mcast_add_rsp = type { i32 }

@RXF_E_FW_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_bfi_rxf_mcast_add_rsp(%struct.bna_rxf* %0, %struct.bfi_msgq_mhdr* %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca %struct.bfi_msgq_mhdr*, align 8
  %5 = alloca %struct.bfi_enet_mcast_add_req*, align 8
  %6 = alloca %struct.bfi_enet_mcast_add_rsp*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store %struct.bfi_msgq_mhdr* %1, %struct.bfi_msgq_mhdr** %4, align 8
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %8 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.bfi_enet_mcast_add_req* %9, %struct.bfi_enet_mcast_add_req** %5, align 8
  %10 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %11 = bitcast %struct.bfi_msgq_mhdr* %10 to %struct.bfi_enet_mcast_add_rsp*
  store %struct.bfi_enet_mcast_add_rsp* %11, %struct.bfi_enet_mcast_add_rsp** %6, align 8
  %12 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %13 = load %struct.bfi_enet_mcast_add_req*, %struct.bfi_enet_mcast_add_req** %5, align 8
  %14 = getelementptr inbounds %struct.bfi_enet_mcast_add_req, %struct.bfi_enet_mcast_add_req* %13, i32 0, i32 0
  %15 = load %struct.bfi_enet_mcast_add_rsp*, %struct.bfi_enet_mcast_add_rsp** %6, align 8
  %16 = getelementptr inbounds %struct.bfi_enet_mcast_add_rsp, %struct.bfi_enet_mcast_add_rsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohs(i32 %17)
  %19 = call i32 @bna_rxf_mchandle_attach(%struct.bna_rxf* %12, i32* %14, i32 %18)
  %20 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %21 = load i32, i32* @RXF_E_FW_RESP, align 4
  %22 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %20, i32 %21)
  ret void
}

declare dso_local i32 @bna_rxf_mchandle_attach(%struct.bna_rxf*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
