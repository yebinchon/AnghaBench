; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_update_rx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_update_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.hostap_80211_rx_status = type { i32, i32, i32 }
%struct.sta_info = type { i32, i32, i32*, i32, i32 }

@IW_QUAL_ALL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_update_rx_stats(%struct.ap_data* %0, %struct.ieee80211_hdr* %1, %struct.hostap_80211_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ap_data*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.hostap_80211_rx_status*, align 8
  %8 = alloca %struct.sta_info*, align 8
  store %struct.ap_data* %0, %struct.ap_data** %5, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %6, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %7, align 8
  %9 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %10 = icmp ne %struct.ap_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %103

12:                                               ; preds = %3
  %13 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %14 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %16, i32 %19)
  store %struct.sta_info* %20, %struct.sta_info** %8, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %22 = icmp ne %struct.sta_info* %21, null
  br i1 %22, label %23, label %95

23:                                               ; preds = %12
  %24 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %7, align 8
  %25 = getelementptr inbounds %struct.hostap_80211_rx_status, %struct.hostap_80211_rx_status* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %7, align 8
  %30 = getelementptr inbounds %struct.hostap_80211_rx_status, %struct.hostap_80211_rx_status* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %7, align 8
  %35 = getelementptr inbounds %struct.hostap_80211_rx_status, %struct.hostap_80211_rx_status* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @IW_QUAL_ALL_UPDATED, align 4
  %40 = load i32, i32* @IW_QUAL_DBM, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %7, align 8
  %45 = getelementptr inbounds %struct.hostap_80211_rx_status, %struct.hostap_80211_rx_status* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %55

48:                                               ; preds = %23
  %49 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %94

55:                                               ; preds = %23
  %56 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %7, align 8
  %57 = getelementptr inbounds %struct.hostap_80211_rx_status, %struct.hostap_80211_rx_status* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 20
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %93

67:                                               ; preds = %55
  %68 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %7, align 8
  %69 = getelementptr inbounds %struct.hostap_80211_rx_status, %struct.hostap_80211_rx_status* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 55
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %92

79:                                               ; preds = %67
  %80 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %7, align 8
  %81 = getelementptr inbounds %struct.hostap_80211_rx_status, %struct.hostap_80211_rx_status* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 110
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %79
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %60
  br label %94

94:                                               ; preds = %93, %48
  br label %95

95:                                               ; preds = %94, %12
  %96 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %97 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %100 = icmp ne %struct.sta_info* %99, null
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 0, i32 -1
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %95, %11
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
