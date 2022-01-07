; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.tg3 = type { i64 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@PTP_CAPABLE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @tg3_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.tg3*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.tg3* @netdev_priv(%struct.net_device* %6)
  store %struct.tg3* %7, %struct.tg3** %5, align 8
  %8 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %9 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tg3*, %struct.tg3** %5, align 8
  %16 = load i32, i32* @PTP_CAPABLE, align 4
  %17 = call i64 @tg3_flag(%struct.tg3* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %21 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %19, %2
  %30 = load %struct.tg3*, %struct.tg3** %5, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.tg3*, %struct.tg3** %5, align 8
  %36 = getelementptr inbounds %struct.tg3, %struct.tg3* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ptp_clock_index(i64 %37)
  %39 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_EVENT, align 4
  %55 = shl i32 1, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L2_EVENT, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  %60 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_EVENT, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  ret i32 0
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @ptp_clock_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
