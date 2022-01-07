; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_fill_station_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_fill_station_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.station_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OID_GEN_LINK_SPEED = common dso_local global i32 0, align 4
@STATION_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@OID_802_11_RSSI = common dso_local global i32 0, align 4
@STATION_INFO_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.station_info*)* @rndis_fill_station_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_fill_station_info(%struct.usbnet* %0, %struct.station_info* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.station_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.station_info* %1, %struct.station_info** %4, align 8
  %9 = load %struct.station_info*, %struct.station_info** %4, align 8
  %10 = call i32 @memset(%struct.station_info* %9, i32 0, i32 12)
  store i32 4, i32* %8, align 4
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = load i32, i32* @OID_GEN_LINK_SPEED, align 4
  %13 = call i32 @rndis_query_oid(%struct.usbnet* %11, i32 %12, i32* %5, i32* %8)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = sdiv i32 %18, 1000
  %20 = load %struct.station_info*, %struct.station_info** %4, align 8
  %21 = getelementptr inbounds %struct.station_info, %struct.station_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @STATION_INFO_TX_BITRATE, align 4
  %24 = load %struct.station_info*, %struct.station_info** %4, align 8
  %25 = getelementptr inbounds %struct.station_info, %struct.station_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %16, %2
  store i32 4, i32* %8, align 4
  %29 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %30 = load i32, i32* @OID_802_11_RSSI, align 4
  %31 = call i32 @rndis_query_oid(%struct.usbnet* %29, i32 %30, i32* %6, i32* %8)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = call i32 @level_to_qual(i32 %36)
  %38 = load %struct.station_info*, %struct.station_info** %4, align 8
  %39 = getelementptr inbounds %struct.station_info, %struct.station_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @STATION_INFO_SIGNAL, align 4
  %41 = load %struct.station_info*, %struct.station_info** %4, align 8
  %42 = getelementptr inbounds %struct.station_info, %struct.station_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @memset(%struct.station_info*, i32, i32) #1

declare dso_local i32 @rndis_query_oid(%struct.usbnet*, i32, i32*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @level_to_qual(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
