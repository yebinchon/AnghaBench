; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@AP_OTHER_AP_SKIP_ALL = common dso_local global i64 0, align 8
@ETH_P_HOSTAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostap_rx(%struct.net_device* %0, %struct.sk_buff* %1, %struct.hostap_80211_rx_status* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hostap_80211_rx_status*, align 8
  %7 = alloca %struct.hostap_interface*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %10)
  store %struct.hostap_interface* %11, %struct.hostap_interface** %7, align 8
  %12 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %13 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %29, %struct.ieee80211_hdr** %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AP_OTHER_AP_SKIP_ALL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ieee80211_is_beacon(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %53

44:                                               ; preds = %37, %20
  %45 = load i32, i32* @ETH_P_HOSTAP, align 4
  %46 = call i32 @cpu_to_be16(i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %52 = call i32 @handle_ap_item(%struct.TYPE_7__* %49, %struct.sk_buff* %50, %struct.hostap_80211_rx_status* %51)
  br label %56

53:                                               ; preds = %43, %19
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @dev_kfree_skb(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %53, %44
  ret void
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @handle_ap_item(%struct.TYPE_7__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
