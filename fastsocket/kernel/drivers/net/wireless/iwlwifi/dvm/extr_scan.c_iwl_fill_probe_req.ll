; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_fill_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_fill_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_mgmt = type { i32*, %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@IEEE80211_STYPE_PROBE_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_mgmt*, i32*, i32*, i32, i32*, i32, i32)* @iwl_fill_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fill_probe_req(%struct.ieee80211_mgmt* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_mgmt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.ieee80211_mgmt* %0, %struct.ieee80211_mgmt** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %15, align 4
  %19 = sub nsw i32 %18, 24
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %109

23:                                               ; preds = %7
  %24 = load i32, i32* @IEEE80211_STYPE_PROBE_REQ, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @eth_broadcast_addr(i32 %30)
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memcpy(i32* %34, i32* %35, i32 %36)
  %38 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @eth_broadcast_addr(i32 %40)
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, 24
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32* %51, i32** %17, align 8
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 2
  %54 = load i32, i32* %15, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %109

59:                                               ; preds = %23
  %60 = load i32, i32* @WLAN_EID_SSID, align 4
  %61 = load i32*, i32** %17, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %17, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %17, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %17, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @memcpy(i32* %72, i32* %73, i32 %74)
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %17, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %17, align 8
  br label %80

80:                                               ; preds = %71, %68, %59
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 2
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %8, align 4
  br label %109

93:                                               ; preds = %80
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @memcpy(i32* %100, i32* %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %99, %96, %93
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %91, %58, %22
  %110 = load i32, i32* %8, align 4
  ret i32 %110
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
