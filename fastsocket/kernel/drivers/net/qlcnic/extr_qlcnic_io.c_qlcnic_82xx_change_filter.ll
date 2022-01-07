; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_change_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_change_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.qlcnic_host_tx_ring* }
%struct.qlcnic_host_tx_ring = type { i64, i32, %struct.cmd_desc_type0* }
%struct.cmd_desc_type0 = type { i32 }
%struct.qlcnic_nic_req = type { i32*, i8*, i8* }
%struct.qlcnic_mac_req = type { i32, i32 }
%struct.qlcnic_vlan_req = type { i32 }

@QLCNIC_REQUEST = common dso_local global i32 0, align 4
@QLCNIC_MAC_EVENT = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_change_filter(%struct.qlcnic_adapter* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmd_desc_type0*, align 8
  %8 = alloca %struct.qlcnic_nic_req*, align 8
  %9 = alloca %struct.qlcnic_mac_req*, align 8
  %10 = alloca %struct.qlcnic_vlan_req*, align 8
  %11 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %15, align 8
  store %struct.qlcnic_host_tx_ring* %16, %struct.qlcnic_host_tx_ring** %11, align 8
  %17 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %18 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %21 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %20, i32 0, i32 2
  %22 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %21, align 8
  %23 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %24 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %22, i64 %25
  store %struct.cmd_desc_type0* %26, %struct.cmd_desc_type0** %7, align 8
  %27 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %28 = bitcast %struct.cmd_desc_type0* %27 to %struct.qlcnic_nic_req*
  store %struct.qlcnic_nic_req* %28, %struct.qlcnic_nic_req** %8, align 8
  %29 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %8, align 8
  %30 = call i32 @memset(%struct.qlcnic_nic_req* %29, i32 0, i32 24)
  %31 = load i32, i32* @QLCNIC_REQUEST, align 4
  %32 = shl i32 %31, 23
  %33 = call i8* @cpu_to_le64(i32 %32)
  %34 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %8, align 8
  %35 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @QLCNIC_MAC_EVENT, align 4
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 16
  %42 = or i32 %36, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i8* @cpu_to_le64(i32 %43)
  %45 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %8, align 8
  %46 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %8, align 8
  %48 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = bitcast i32* %50 to %struct.qlcnic_mac_req*
  store %struct.qlcnic_mac_req* %51, %struct.qlcnic_mac_req** %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %58

56:                                               ; preds = %3
  %57 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.qlcnic_mac_req*, %struct.qlcnic_mac_req** %9, align 8
  %61 = getelementptr inbounds %struct.qlcnic_mac_req, %struct.qlcnic_mac_req* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.qlcnic_mac_req*, %struct.qlcnic_mac_req** %9, align 8
  %63 = getelementptr inbounds %struct.qlcnic_mac_req, %struct.qlcnic_mac_req* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32 %64, i32** %5, i32 %65)
  %67 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %8, align 8
  %68 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = bitcast i32* %70 to %struct.qlcnic_vlan_req*
  store %struct.qlcnic_vlan_req* %71, %struct.qlcnic_vlan_req** %10, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @cpu_to_le16(i64 %72)
  %74 = load %struct.qlcnic_vlan_req*, %struct.qlcnic_vlan_req** %10, align 8
  %75 = getelementptr inbounds %struct.qlcnic_vlan_req, %struct.qlcnic_vlan_req* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %78 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @get_next_index(i64 %76, i32 %79)
  %81 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %82 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = call i32 (...) @smp_mb()
  ret void
}

declare dso_local i32 @memset(%struct.qlcnic_nic_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i32, i32**, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
