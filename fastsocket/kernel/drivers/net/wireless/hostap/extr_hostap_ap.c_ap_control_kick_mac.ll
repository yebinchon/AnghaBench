; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_control_kick_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_control_kick_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.net_device = type { i32 }
%struct.sta_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WLAN_REASON_PREV_AUTH_NOT_VALID = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_control_kick_mac(%struct.ap_data* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ap_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  store %struct.ap_data* %0, %struct.ap_data** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %11 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %13, i32* %14)
  store %struct.sta_info* %15, %struct.sta_info** %8, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %17 = icmp ne %struct.sta_info* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %21 = call i32 @ap_sta_hash_del(%struct.ap_data* %19, %struct.sta_info* %20)
  %22 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 3
  %24 = call i32 @list_del(i32* %23)
  br label %25

25:                                               ; preds = %18, %3
  %26 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %27 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %30 = icmp ne %struct.sta_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %25
  %35 = load i32, i32* @WLAN_REASON_PREV_AUTH_NOT_VALID, align 4
  %36 = call i32 @cpu_to_le16(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %39 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %40 = or i32 %38, %39
  %41 = bitcast i32* %9 to i8*
  %42 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @prism2_send_mgmt(%struct.net_device* %37, i32 %40, i8* %41, i32 2, i32 %44, i32 0)
  %46 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %34
  %53 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %60 = call i32 @hostap_event_expired_sta(%struct.net_device* %58, %struct.sta_info* %59)
  br label %61

61:                                               ; preds = %57, %52, %34
  %62 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %63 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %64 = call i32 @ap_free_sta(%struct.ap_data* %62, %struct.sta_info* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %31
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32*) #1

declare dso_local i32 @ap_sta_hash_del(%struct.ap_data*, %struct.sta_info*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @prism2_send_mgmt(%struct.net_device*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @hostap_event_expired_sta(%struct.net_device*, %struct.sta_info*) #1

declare dso_local i32 @ap_free_sta(%struct.ap_data*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
