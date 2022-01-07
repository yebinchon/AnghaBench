; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32 }
%struct.b43_wl = type { i32, i32, %struct.ieee80211_vif*, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @b43_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_wl*, align 8
  %10 = alloca %struct.b43_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %11)
  store %struct.b43_wl* %12, %struct.b43_wl** %9, align 8
  %13 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %14 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %17 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %16, i32 0, i32 3
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %17, align 8
  store %struct.b43_wldev* %18, %struct.b43_wldev** %10, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %20 = icmp ne %struct.b43_wldev* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %23 = call i64 @b43_status(%struct.b43_wldev* %22)
  %24 = load i64, i64* @B43_STAT_STARTED, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  br label %161

27:                                               ; preds = %21
  %28 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %29 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %28, i32 0, i32 2
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %29, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = icmp ne %struct.ieee80211_vif* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @B43_WARN_ON(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %27
  %40 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %46 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %47, i32 %50, i32 %51)
  br label %59

53:                                               ; preds = %39
  %54 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %55 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memset(i32 %56, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59, %27
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %62 = call i64 @b43_status(%struct.b43_wldev* %61)
  %63 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %72 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %73 = call i64 @b43_is_mode(%struct.b43_wl* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %77 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %78 = call i64 @b43_is_mode(%struct.b43_wl* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %82 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %83 = call i64 @b43_is_mode(%struct.b43_wl* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %75, %70
  %86 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %87 = call i32 @b43_update_templates(%struct.b43_wl* %86)
  br label %88

88:                                               ; preds = %85, %80, %65
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %95 = call i32 @b43_write_mac_bssid_templates(%struct.b43_wldev* %94)
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96, %60
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %99 = call i32 @b43_mac_suspend(%struct.b43_wldev* %98)
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %97
  %105 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %106 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %107 = call i64 @b43_is_mode(%struct.b43_wl* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %111 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %112 = call i64 @b43_is_mode(%struct.b43_wl* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %116 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %117 = call i64 @b43_is_mode(%struct.b43_wl* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114, %109, %104
  %120 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %126 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @b43_set_beacon_int(%struct.b43_wldev* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %119, %114, %97
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %137 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %138 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @b43_update_basic_rates(%struct.b43_wldev* %136, i32 %139)
  br label %141

141:                                              ; preds = %135, %130
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %148 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %153 = call i32 @b43_short_slot_timing_enable(%struct.b43_wldev* %152)
  br label %157

154:                                              ; preds = %146
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %156 = call i32 @b43_short_slot_timing_disable(%struct.b43_wldev* %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %141
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  %160 = call i32 @b43_mac_enable(%struct.b43_wldev* %159)
  br label %161

161:                                              ; preds = %158, %26
  %162 = load %struct.b43_wl*, %struct.b43_wl** %9, align 8
  %163 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @b43_is_mode(%struct.b43_wl*, i32) #1

declare dso_local i32 @b43_update_templates(%struct.b43_wl*) #1

declare dso_local i32 @b43_write_mac_bssid_templates(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_beacon_int(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_update_basic_rates(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_short_slot_timing_enable(%struct.b43_wldev*) #1

declare dso_local i32 @b43_short_slot_timing_disable(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
