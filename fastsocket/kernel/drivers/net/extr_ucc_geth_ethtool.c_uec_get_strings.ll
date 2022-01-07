; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucc_geth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE = common dso_local global i32 0, align 4
@hw_stat_gstrings = common dso_local global i32 0, align 4
@UEC_HW_STATS_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX = common dso_local global i32 0, align 4
@tx_fw_stat_gstrings = common dso_local global i32 0, align 4
@UEC_TX_FW_STATS_LEN = common dso_local global i32 0, align 4
@UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX = common dso_local global i32 0, align 4
@rx_fw_stat_gstrings = common dso_local global i32 0, align 4
@UEC_RX_FW_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @uec_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uec_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ucc_geth_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ucc_geth_private* %10, %struct.ucc_geth_private** %7, align 8
  %11 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %7, align 8
  %12 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @hw_stat_gstrings, align 4
  %23 = load i32, i32* @UEC_HW_STATS_LEN, align 4
  %24 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @memcpy(i32* %21, i32 %22, i32 %25)
  %27 = load i32, i32* @UEC_HW_STATS_LEN, align 4
  %28 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32*, i32** %6, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %6, align 8
  br label %33

33:                                               ; preds = %20, %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @tx_fw_stat_gstrings, align 4
  %41 = load i32, i32* @UEC_TX_FW_STATS_LEN, align 4
  %42 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i32 @memcpy(i32* %39, i32 %40, i32 %43)
  %45 = load i32, i32* @UEC_TX_FW_STATS_LEN, align 4
  %46 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32*, i32** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %6, align 8
  br label %51

51:                                               ; preds = %38, %33
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @rx_fw_stat_gstrings, align 4
  %59 = load i32, i32* @UEC_RX_FW_STATS_LEN, align 4
  %60 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @memcpy(i32* %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %56, %51
  ret void
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
