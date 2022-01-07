; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }

@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_ptp_get_ts_info(%struct.efx_nic* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  store %struct.efx_ptp_data* %8, %struct.efx_ptp_data** %5, align 8
  %9 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %10 = icmp ne %struct.efx_ptp_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %57

12:                                               ; preds = %2
  %13 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %14 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %23 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptp_clock_index(i32 %24)
  %26 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_EVENT, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_SYNC, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_EVENT, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_SYNC, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @ptp_clock_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
