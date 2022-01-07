; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_get_rx_tx_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_get_rx_tx_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i64 }

@BNX2X_OBJ_TYPE_TX = common dso_local global i64 0, align 8
@BNX2X_OBJ_TYPE_RX_TX = common dso_local global i64 0, align 8
@ETH_CLASSIFY_CMD_HEADER_TX_CMD = common dso_local global i32 0, align 4
@BNX2X_OBJ_TYPE_RX = common dso_local global i64 0, align 8
@ETH_CLASSIFY_CMD_HEADER_RX_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_vlan_mac_obj*)* @bnx2x_vlan_mac_get_rx_tx_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vlan_mac_get_rx_tx_flag(%struct.bnx2x_vlan_mac_obj* %0) #0 {
  %2 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %3 = alloca %struct.bnx2x_raw_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x_vlan_mac_obj* %0, %struct.bnx2x_vlan_mac_obj** %2, align 8
  %5 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %5, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %6, %struct.bnx2x_raw_obj** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BNX2X_OBJ_TYPE_TX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BNX2X_OBJ_TYPE_RX_TX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @ETH_CLASSIFY_CMD_HEADER_TX_CMD, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BNX2X_OBJ_TYPE_RX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BNX2X_OBJ_TYPE_RX_TX, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @ETH_CLASSIFY_CMD_HEADER_RX_CMD, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
