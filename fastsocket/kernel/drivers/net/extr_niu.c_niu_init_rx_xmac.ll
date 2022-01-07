; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_rx_xmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_rx_xmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i64, %struct.niu_parent* }
%struct.niu_parent = type { %struct.niu_rdc_tables* }
%struct.niu_rdc_tables = type { i32 }

@XMAC_ADD_FILT0 = common dso_local global i32 0, align 4
@XMAC_ADD_FILT1 = common dso_local global i32 0, align 4
@XMAC_ADD_FILT2 = common dso_local global i32 0, align 4
@XMAC_ADD_FILT12_MASK = common dso_local global i32 0, align 4
@XMAC_ADD_FILT00_MASK = common dso_local global i32 0, align 4
@MAC_NUM_HASH = common dso_local global i64 0, align 8
@XRXMAC_STAT_MSK = common dso_local global i32 0, align 4
@XMAC_CONFIG = common dso_local global i32 0, align 4
@XMAC_CONFIG_RX_MAC_ENABLE = common dso_local global i32 0, align 4
@XMAC_CONFIG_PROMISCUOUS = common dso_local global i32 0, align 4
@XMAC_CONFIG_PROMISC_GROUP = common dso_local global i32 0, align 4
@XMAC_CONFIG_ERR_CHK_DIS = common dso_local global i32 0, align 4
@XMAC_CONFIG_RX_CRC_CHK_DIS = common dso_local global i32 0, align 4
@XMAC_CONFIG_RESERVED_MULTICAST = common dso_local global i32 0, align 4
@XMAC_CONFIG_RX_CODEV_CHK_DIS = common dso_local global i32 0, align 4
@XMAC_CONFIG_ADDR_FILTER_EN = common dso_local global i32 0, align 4
@XMAC_CONFIG_RCV_PAUSE_ENABLE = common dso_local global i32 0, align 4
@XMAC_CONFIG_STRIP_CRC = common dso_local global i32 0, align 4
@XMAC_CONFIG_PASS_FLOW_CTRL = common dso_local global i32 0, align 4
@XMAC_CONFIG_MAC2IPP_PKT_CNT_EN = common dso_local global i32 0, align 4
@XMAC_CONFIG_HASH_FILTER_EN = common dso_local global i32 0, align 4
@RXMAC_BT_CNT = common dso_local global i32 0, align 4
@RXMAC_BC_FRM_CNT = common dso_local global i32 0, align 4
@RXMAC_MC_FRM_CNT = common dso_local global i32 0, align 4
@RXMAC_FRAG_CNT = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT1 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT2 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT3 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT4 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT5 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT6 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT7 = common dso_local global i32 0, align 4
@RXMAC_MPSZER_CNT = common dso_local global i32 0, align 4
@RXMAC_CRC_ER_CNT = common dso_local global i32 0, align 4
@RXMAC_CD_VIO_CNT = common dso_local global i32 0, align 4
@LINK_FAULT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_rx_xmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_rx_xmac(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_parent*, align 8
  %4 = alloca %struct.niu_rdc_tables*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %8 = load %struct.niu*, %struct.niu** %2, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 1
  %10 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  store %struct.niu_parent* %10, %struct.niu_parent** %3, align 8
  %11 = load %struct.niu_parent*, %struct.niu_parent** %3, align 8
  %12 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %11, i32 0, i32 0
  %13 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %14 = load %struct.niu*, %struct.niu** %2, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %13, i64 %16
  store %struct.niu_rdc_tables* %17, %struct.niu_rdc_tables** %4, align 8
  %18 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %4, align 8
  %19 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @XMAC_ADD_FILT0, align 4
  %22 = call i32 @nw64_mac(i32 %21, i32 0)
  %23 = load i32, i32* @XMAC_ADD_FILT1, align 4
  %24 = call i32 @nw64_mac(i32 %23, i32 0)
  %25 = load i32, i32* @XMAC_ADD_FILT2, align 4
  %26 = call i32 @nw64_mac(i32 %25, i32 0)
  %27 = load i32, i32* @XMAC_ADD_FILT12_MASK, align 4
  %28 = call i32 @nw64_mac(i32 %27, i32 0)
  %29 = load i32, i32* @XMAC_ADD_FILT00_MASK, align 4
  %30 = call i32 @nw64_mac(i32 %29, i32 0)
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %39, %1
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @MAC_NUM_HASH, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @XMAC_HASH_TBL(i64 %36)
  %38 = call i32 @nw64_mac(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %31

42:                                               ; preds = %31
  %43 = load i32, i32* @XRXMAC_STAT_MSK, align 4
  %44 = call i32 @nw64_mac(i32 %43, i32 -1)
  %45 = load %struct.niu*, %struct.niu** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @niu_set_primary_mac_rdc_table(%struct.niu* %45, i32 %46, i32 1)
  %48 = load %struct.niu*, %struct.niu** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @niu_set_multicast_mac_rdc_table(%struct.niu* %48, i32 %49, i32 1)
  %51 = load i32, i32* @XMAC_CONFIG, align 4
  %52 = call i32 @nr64_mac(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @XMAC_CONFIG_RX_MAC_ENABLE, align 4
  %54 = load i32, i32* @XMAC_CONFIG_PROMISCUOUS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @XMAC_CONFIG_PROMISC_GROUP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @XMAC_CONFIG_ERR_CHK_DIS, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @XMAC_CONFIG_RX_CRC_CHK_DIS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @XMAC_CONFIG_RESERVED_MULTICAST, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @XMAC_CONFIG_RX_CODEV_CHK_DIS, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @XMAC_CONFIG_ADDR_FILTER_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @XMAC_CONFIG_RCV_PAUSE_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @XMAC_CONFIG_STRIP_CRC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @XMAC_CONFIG_PASS_FLOW_CTRL, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @XMAC_CONFIG_MAC2IPP_PKT_CNT_EN, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @XMAC_CONFIG_HASH_FILTER_EN, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @XMAC_CONFIG, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @nw64_mac(i32 %82, i32 %83)
  %85 = load i32, i32* @RXMAC_BT_CNT, align 4
  %86 = call i32 @nw64_mac(i32 %85, i32 0)
  %87 = load i32, i32* @RXMAC_BC_FRM_CNT, align 4
  %88 = call i32 @nw64_mac(i32 %87, i32 0)
  %89 = load i32, i32* @RXMAC_MC_FRM_CNT, align 4
  %90 = call i32 @nw64_mac(i32 %89, i32 0)
  %91 = load i32, i32* @RXMAC_FRAG_CNT, align 4
  %92 = call i32 @nw64_mac(i32 %91, i32 0)
  %93 = load i32, i32* @RXMAC_HIST_CNT1, align 4
  %94 = call i32 @nw64_mac(i32 %93, i32 0)
  %95 = load i32, i32* @RXMAC_HIST_CNT2, align 4
  %96 = call i32 @nw64_mac(i32 %95, i32 0)
  %97 = load i32, i32* @RXMAC_HIST_CNT3, align 4
  %98 = call i32 @nw64_mac(i32 %97, i32 0)
  %99 = load i32, i32* @RXMAC_HIST_CNT4, align 4
  %100 = call i32 @nw64_mac(i32 %99, i32 0)
  %101 = load i32, i32* @RXMAC_HIST_CNT5, align 4
  %102 = call i32 @nw64_mac(i32 %101, i32 0)
  %103 = load i32, i32* @RXMAC_HIST_CNT6, align 4
  %104 = call i32 @nw64_mac(i32 %103, i32 0)
  %105 = load i32, i32* @RXMAC_HIST_CNT7, align 4
  %106 = call i32 @nw64_mac(i32 %105, i32 0)
  %107 = load i32, i32* @RXMAC_MPSZER_CNT, align 4
  %108 = call i32 @nw64_mac(i32 %107, i32 0)
  %109 = load i32, i32* @RXMAC_CRC_ER_CNT, align 4
  %110 = call i32 @nw64_mac(i32 %109, i32 0)
  %111 = load i32, i32* @RXMAC_CD_VIO_CNT, align 4
  %112 = call i32 @nw64_mac(i32 %111, i32 0)
  %113 = load i32, i32* @LINK_FAULT_CNT, align 4
  %114 = call i32 @nw64_mac(i32 %113, i32 0)
  ret void
}

declare dso_local i32 @nw64_mac(i32, i32) #1

declare dso_local i32 @XMAC_HASH_TBL(i64) #1

declare dso_local i32 @niu_set_primary_mac_rdc_table(%struct.niu*, i32, i32) #1

declare dso_local i32 @niu_set_multicast_mac_rdc_table(%struct.niu*, i32, i32) #1

declare dso_local i32 @nr64_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
