; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_handle_dropped_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_handle_dropped_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.net_device* }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.sta_info = type { i32, i32 }

@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ap_handle_dropped_data: STA is now okay?\0A\00", align 1
@WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DISASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.ieee80211_hdr*)* @ap_handle_dropped_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_handle_dropped_data(%struct.TYPE_4__* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_5__* %18, i32 %21)
  store %struct.sta_info* %22, %struct.sta_info** %6, align 8
  %23 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %24 = icmp ne %struct.sta_info* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 1
  %28 = call i32 @atomic_inc(i32* %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %36 = icmp ne %struct.sta_info* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @DEBUG_AP, align 4
  %46 = call i32 @PDEBUG(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 1
  %49 = call i32 @atomic_dec(i32* %48)
  br label %82

50:                                               ; preds = %37, %29
  %51 = load i32, i32* @WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %55 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %56 = icmp eq %struct.sta_info* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @IEEE80211_STYPE_DISASSOC, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = or i32 %54, %69
  %71 = bitcast i32* %7 to i8*
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @prism2_send_mgmt(%struct.net_device* %53, i32 %70, i8* %71, i32 4, i32 %74, i32 0)
  %76 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %77 = icmp ne %struct.sta_info* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %80 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %79, i32 0, i32 1
  %81 = call i32 @atomic_dec(i32* %80)
  br label %82

82:                                               ; preds = %44, %78, %68
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @prism2_send_mgmt(%struct.net_device*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
