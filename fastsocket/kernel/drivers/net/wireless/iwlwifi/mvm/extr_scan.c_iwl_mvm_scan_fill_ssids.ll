; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fill_ssids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fill_ssids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_scan_cmd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cfg80211_scan_request = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@WLAN_EID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_scan_cmd*, %struct.cfg80211_scan_request*)* @iwl_mvm_scan_fill_ssids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_scan_fill_ssids(%struct.iwl_scan_cmd* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca %struct.iwl_scan_cmd*, align 8
  %4 = alloca %struct.cfg80211_scan_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_scan_cmd* %0, %struct.iwl_scan_cmd** %3, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %4, align 8
  %7 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %63, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %11
  %15 = load i32, i32* @WLAN_EID_SSID, align 4
  %16 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %15, i32* %22, align 4
  %23 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %30, i32* %37, align 4
  %38 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %47 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %55 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32 %45, i32 %53, i32 %61)
  br label %63

63:                                               ; preds = %14
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %11

68:                                               ; preds = %11
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
