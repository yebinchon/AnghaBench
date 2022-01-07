; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_mgmt = type { %struct.TYPE_4__, i64, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@IEEE80211_STYPE_PROBE_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_mgmt*, i32*, i32, i32*, i32, i32*, i32, i32)* @iwl_mvm_fill_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_fill_probe_req(%struct.ieee80211_mgmt* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.ieee80211_mgmt* %0, %struct.ieee80211_mgmt** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %17, align 4
  %21 = sub nsw i32 %20, 24
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %116

25:                                               ; preds = %8
  %26 = load i32, i32* @IEEE80211_STYPE_PROBE_REQ, align 4
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @eth_broadcast_addr(i32 %32)
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  %40 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @eth_broadcast_addr(i32 %42)
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %46, 24
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %25
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %9, align 4
  br label %116

52:                                               ; preds = %25
  %53 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32* %58, i32** %19, align 8
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 2
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %116

66:                                               ; preds = %52
  %67 = load i32, i32* @WLAN_EID_SSID, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %19, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %19, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %19, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32*, i32** %19, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @memcpy(i32* %79, i32* %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %19, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %19, align 8
  br label %87

87:                                               ; preds = %78, %75, %66
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 2
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @WARN_ON(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %9, align 4
  br label %116

100:                                              ; preds = %87
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32*, i32** %19, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @memcpy(i32* %107, i32* %108, i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %18, align 4
  br label %114

114:                                              ; preds = %106, %103, %100
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %114, %98, %65, %50, %24
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
