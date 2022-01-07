; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_ethport_admin_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_ethport_admin_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { %struct.TYPE_3__*, i32 (i32, i32)*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bfi_enet_enable_req }
%struct.bfi_enet_enable_req = type { i32 }
%struct.bfi_msgq_mhdr = type { i32 }
%struct.bfi_enet_rsp = type { i32 }

@BFI_ENET_CMD_OK = common dso_local global i32 0, align 4
@ETHPORT_E_FWRESP_UP_OK = common dso_local global i32 0, align 4
@BNA_ETHPORT_F_PORT_ENABLED = common dso_local global i32 0, align 4
@ETHPORT_E_FWRESP_UP_FAIL = common dso_local global i32 0, align 4
@ETHPORT_E_FWRESP_DOWN = common dso_local global i32 0, align 4
@BNA_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ethport*, %struct.bfi_msgq_mhdr*)* @bna_bfi_ethport_admin_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_ethport_admin_rsp(%struct.bna_ethport* %0, %struct.bfi_msgq_mhdr* %1) #0 {
  %3 = alloca %struct.bna_ethport*, align 8
  %4 = alloca %struct.bfi_msgq_mhdr*, align 8
  %5 = alloca %struct.bfi_enet_enable_req*, align 8
  %6 = alloca %struct.bfi_enet_rsp*, align 8
  store %struct.bna_ethport* %0, %struct.bna_ethport** %3, align 8
  store %struct.bfi_msgq_mhdr* %1, %struct.bfi_msgq_mhdr** %4, align 8
  %7 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %8 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.bfi_enet_enable_req* %9, %struct.bfi_enet_enable_req** %5, align 8
  %10 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %11 = bitcast %struct.bfi_msgq_mhdr* %10 to %struct.bfi_enet_rsp*
  store %struct.bfi_enet_rsp* %11, %struct.bfi_enet_rsp** %6, align 8
  %12 = load %struct.bfi_enet_enable_req*, %struct.bfi_enet_enable_req** %5, align 8
  %13 = getelementptr inbounds %struct.bfi_enet_enable_req, %struct.bfi_enet_enable_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %53 [
    i32 128, label %15
    i32 129, label %36
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfi_enet_rsp*, %struct.bfi_enet_rsp** %6, align 8
  %17 = getelementptr inbounds %struct.bfi_enet_rsp, %struct.bfi_enet_rsp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BFI_ENET_CMD_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %23 = load i32, i32* @ETHPORT_E_FWRESP_UP_OK, align 4
  %24 = call i32 @bfa_fsm_send_event(%struct.bna_ethport* %22, i32 %23)
  br label %35

25:                                               ; preds = %15
  %26 = load i32, i32* @BNA_ETHPORT_F_PORT_ENABLED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %29 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %33 = load i32, i32* @ETHPORT_E_FWRESP_UP_FAIL, align 4
  %34 = call i32 @bfa_fsm_send_event(%struct.bna_ethport* %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %21
  br label %53

36:                                               ; preds = %2
  %37 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %38 = load i32, i32* @ETHPORT_E_FWRESP_DOWN, align 4
  %39 = call i32 @bfa_fsm_send_event(%struct.bna_ethport* %37, i32 %38)
  %40 = load i32, i32* @BNA_LINK_DOWN, align 4
  %41 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %42 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %44 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %43, i32 0, i32 1
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %47 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BNA_LINK_DOWN, align 4
  %52 = call i32 %45(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %2, %36, %35
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_ethport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
