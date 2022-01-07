; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_fill_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_fill_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__, i64, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@IEEE80211_STYPE_PROBE_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_fill_probe_req(%struct.il_priv* %0, %struct.ieee80211_mgmt* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.ieee80211_mgmt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* %13, align 4
  %17 = sub nsw i32 %16, 24
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %87

21:                                               ; preds = %6
  %22 = load i32, i32* @IEEE80211_STYPE_PROBE_REQ, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @eth_broadcast_addr(i32 %28)
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @eth_broadcast_addr(i32 %38)
  %40 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 24
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32* %49, i32** %15, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %87

55:                                               ; preds = %21
  %56 = load i32, i32* @WLAN_EID_SSID, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %15, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %15, align 8
  store i32 0, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @WARN_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %7, align 4
  br label %87

71:                                               ; preds = %55
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32*, i32** %15, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @memcpy(i32* %78, i32* %79, i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %77, %74, %71
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %69, %54, %20
  %88 = load i32, i32* %7, align 4
  ret i32 %88
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
