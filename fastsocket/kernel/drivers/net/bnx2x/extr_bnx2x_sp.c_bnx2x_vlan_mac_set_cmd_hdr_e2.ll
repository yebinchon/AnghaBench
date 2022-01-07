; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_set_cmd_hdr_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_set_cmd_hdr_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32 }
%struct.eth_classify_cmd_header = type { i32, i32, i32 }

@ETH_CLASSIFY_CMD_HEADER_IS_ADD = common dso_local global i32 0, align 4
@ETH_CLASSIFY_CMD_HEADER_OPCODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, %struct.eth_classify_cmd_header*)* @bnx2x_vlan_mac_set_cmd_hdr_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, i32 %2, i32 %3, %struct.eth_classify_cmd_header* %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.eth_classify_cmd_header*, align 8
  %11 = alloca %struct.bnx2x_raw_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.eth_classify_cmd_header* %4, %struct.eth_classify_cmd_header** %10, align 8
  %12 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %12, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %13, %struct.bnx2x_raw_obj** %11, align 8
  %14 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %15 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.eth_classify_cmd_header*, %struct.eth_classify_cmd_header** %10, align 8
  %18 = getelementptr inbounds %struct.eth_classify_cmd_header, %struct.eth_classify_cmd_header* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %20 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.eth_classify_cmd_header*, %struct.eth_classify_cmd_header** %10, align 8
  %23 = getelementptr inbounds %struct.eth_classify_cmd_header, %struct.eth_classify_cmd_header* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %25 = call i32 @bnx2x_vlan_mac_get_rx_tx_flag(%struct.bnx2x_vlan_mac_obj* %24)
  %26 = load %struct.eth_classify_cmd_header*, %struct.eth_classify_cmd_header** %10, align 8
  %27 = getelementptr inbounds %struct.eth_classify_cmd_header, %struct.eth_classify_cmd_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load i32, i32* @ETH_CLASSIFY_CMD_HEADER_IS_ADD, align 4
  %34 = load %struct.eth_classify_cmd_header*, %struct.eth_classify_cmd_header** %10, align 8
  %35 = getelementptr inbounds %struct.eth_classify_cmd_header, %struct.eth_classify_cmd_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ETH_CLASSIFY_CMD_HEADER_OPCODE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.eth_classify_cmd_header*, %struct.eth_classify_cmd_header** %10, align 8
  %43 = getelementptr inbounds %struct.eth_classify_cmd_header, %struct.eth_classify_cmd_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local i32 @bnx2x_vlan_mac_get_rx_tx_flag(%struct.bnx2x_vlan_mac_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
