; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.ieee80211_vif = type { i64, i32 }
%struct.ieee80211_bss_conf = type { i64, i32* }
%struct.rtl8180_vif = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@RTL818X_MSR_ADHOC = common dso_local global i32 0, align 4
@RTL818X_MSR_INFRA = common dso_local global i32 0, align 4
@RTL818X_MSR_NO_LINK = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @rtl8180_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl8180_priv*, align 8
  %10 = alloca %struct.rtl8180_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %14, align 8
  store %struct.rtl8180_priv* %15, %struct.rtl8180_priv** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.rtl8180_vif*
  store %struct.rtl8180_vif* %18, %struct.rtl8180_vif** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %30 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %29, i32* %37, i32 %44)
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @is_valid_ether_addr(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @RTL818X_MSR_ADHOC, align 4
  store i32 %62, i32* %12, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @RTL818X_MSR_INFRA, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %68

66:                                               ; preds = %49
  %67 = load i32, i32* @RTL818X_MSR_NO_LINK, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %70 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %71 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %69, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %83 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)** %85, align 8
  %87 = icmp ne i32 (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %90 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)** %92, align 8
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %95 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %96 = call i32 %93(%struct.ieee80211_hw* %94, %struct.ieee80211_bss_conf* %95)
  br label %97

97:                                               ; preds = %88, %81, %76
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rtl8180_vif*, %struct.rtl8180_vif** %10, align 8
  %107 = getelementptr inbounds %struct.rtl8180_vif, %struct.rtl8180_vif* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %111 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load %struct.rtl8180_vif*, %struct.rtl8180_vif** %10, align 8
  %117 = getelementptr inbounds %struct.rtl8180_vif, %struct.rtl8180_vif* %116, i32 0, i32 0
  %118 = call i32 @cancel_delayed_work_sync(%struct.TYPE_6__* %117)
  %119 = load %struct.rtl8180_vif*, %struct.rtl8180_vif** %10, align 8
  %120 = getelementptr inbounds %struct.rtl8180_vif, %struct.rtl8180_vif* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load %struct.rtl8180_vif*, %struct.rtl8180_vif** %10, align 8
  %125 = getelementptr inbounds %struct.rtl8180_vif, %struct.rtl8180_vif* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = call i32 @schedule_work(i32* %126)
  br label %128

128:                                              ; preds = %123, %115
  br label %129

129:                                              ; preds = %128, %108
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
