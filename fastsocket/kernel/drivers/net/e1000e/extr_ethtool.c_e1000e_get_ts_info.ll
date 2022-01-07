; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000e_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000e_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.e1000_adapter = type { i32, i64 }

@FLAG_HAS_HW_TIMESTAMP = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @e1000e_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000e_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %11 = call i32 @ethtool_op_get_ts_info(%struct.net_device* %9, %struct.ethtool_ts_info* %10)
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLAG_HAS_HW_TIMESTAMP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

19:                                               ; preds = %2
  %20 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %21 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  %34 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_SYNC, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ, align 4
  %42 = shl i32 1, %41
  %43 = or i32 %40, %42
  %44 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_SYNC, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  %47 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L2_SYNC, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_EVENT, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_SYNC, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_DELAY_REQ, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %71 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %19
  %75 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ptp_clock_index(i64 %77)
  %79 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %19
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_get_ts_info(%struct.net_device*, %struct.ethtool_ts_info*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
