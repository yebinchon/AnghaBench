; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32 }
%struct.b43legacy_wl = type { i32, i32, i32, %struct.b43legacy_wldev*, %struct.ieee80211_vif* }
%struct.b43legacy_wldev = type { i32 }

@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @b43legacy_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43legacy_wl*, align 8
  %10 = alloca %struct.b43legacy_wldev*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %12)
  store %struct.b43legacy_wl* %13, %struct.b43legacy_wl** %9, align 8
  %14 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %18 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %17, i32 0, i32 4
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %18, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = icmp ne %struct.ieee80211_vif* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @B43legacy_WARN_ON(i32 %22)
  %24 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %25 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %24, i32 0, i32 3
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %25, align 8
  store %struct.b43legacy_wldev* %26, %struct.b43legacy_wldev** %10, align 8
  %27 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %28 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %27, i32 0, i32 1
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %32 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %31)
  %33 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %37 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %36, i32 0, i32 1
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %176

40:                                               ; preds = %4
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %42 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %43 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %41, i32 %42, i32 0)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %40
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %50 = call i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev* %49)
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %57 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  br label %70

64:                                               ; preds = %48
  %65 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %66 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memset(i32 %67, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %64, %55
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %73 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %72)
  %74 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %83 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %84 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %88 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %89 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %81
  %92 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %93 = call i32 @b43legacy_update_templates(%struct.b43legacy_wl* %92)
  br label %94

94:                                               ; preds = %91, %86, %76
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %101 = call i32 @b43legacy_write_mac_bssid_templates(%struct.b43legacy_wldev* %100)
  br label %102

102:                                              ; preds = %99, %94
  br label %103

103:                                              ; preds = %102, %71
  %104 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %105 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %104, i32 0, i32 1
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %109 = call i32 @b43legacy_mac_suspend(%struct.b43legacy_wldev* %108)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %103
  %115 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %116 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %117 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %121 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %122 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119, %114
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %126 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @b43legacy_set_beacon_int(%struct.b43legacy_wldev* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %119, %103
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %137 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %138 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @b43legacy_update_basic_rates(%struct.b43legacy_wldev* %136, i32 %139)
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
  %152 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %153 = call i32 @b43legacy_short_slot_timing_enable(%struct.b43legacy_wldev* %152)
  br label %157

154:                                              ; preds = %146
  %155 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %156 = call i32 @b43legacy_short_slot_timing_disable(%struct.b43legacy_wldev* %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %141
  %159 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %160 = call i32 @b43legacy_mac_enable(%struct.b43legacy_wldev* %159)
  %161 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %162 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %161, i32 0, i32 1
  %163 = load i64, i64* %11, align 8
  %164 = call i32 @spin_lock_irqsave(i32* %162, i64 %163)
  %165 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %166 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %167 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %168 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %165, i32 %166, i32 %169)
  %171 = call i32 (...) @mmiowb()
  %172 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %173 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %172, i32 0, i32 1
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  br label %176

176:                                              ; preds = %158, %35
  %177 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %178 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  ret void
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @b43legacy_is_mode(%struct.b43legacy_wl*, i32) #1

declare dso_local i32 @b43legacy_update_templates(%struct.b43legacy_wl*) #1

declare dso_local i32 @b43legacy_write_mac_bssid_templates(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_mac_suspend(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_beacon_int(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_update_basic_rates(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_short_slot_timing_enable(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_short_slot_timing_disable(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_mac_enable(%struct.b43legacy_wldev*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
