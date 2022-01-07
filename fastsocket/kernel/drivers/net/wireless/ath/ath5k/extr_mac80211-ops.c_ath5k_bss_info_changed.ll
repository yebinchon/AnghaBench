; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i32, i64, i64, i32, i32, i32 }
%struct.ath5k_vif = type { i64 }
%struct.ath_common = type { i64, i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@AR5K_LED_ASSOC = common dso_local global i32 0, align 4
@AR5K_LED_INIT = common dso_local global i32 0, align 4
@ATH5K_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bss Info ASSOC %d, bssid: %pM\0A\00", align 1
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ath5k_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath5k_vif*, align 8
  %10 = alloca %struct.ath5k_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath5k_vif*
  store %struct.ath5k_vif* %17, %struct.ath5k_vif** %9, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %19, align 8
  store %struct.ath5k_hw* %20, %struct.ath5k_hw** %10, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %22 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %21)
  store %struct.ath_common* %22, %struct.ath_common** %11, align 8
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %4
  %31 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %32 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %40 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %42 = call i32 @ath5k_hw_set_bssid(%struct.ath5k_hw* %41)
  %43 = call i32 (...) @mmiowb()
  br label %44

44:                                               ; preds = %30, %4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %54 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %67 = call i32 @ath5k_hw_get_default_slottime(%struct.ath5k_hw* %66)
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %69 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 3, %70
  %72 = add nsw i32 %67, %71
  store i32 %72, i32* %12, align 4
  %73 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw* %73, i32 %74)
  br label %76

76:                                               ; preds = %60, %55
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %76
  %82 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ath5k_vif*, %struct.ath5k_vif** %9, align 8
  %86 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %96 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  br label %102

97:                                               ; preds = %81
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %99 = call i64 @ath5k_any_vif_assoc(%struct.ath5k_hw* %98)
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %101 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %104 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %111 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ath5k_set_beacon_filter(%struct.ieee80211_hw* %109, i64 %112)
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %116 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %117 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @AR5K_LED_ASSOC, align 4
  br label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @AR5K_LED_INIT, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = call i32 @ath5k_hw_set_ledstate(%struct.ath5k_hw* %115, i32 %125)
  %127 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %128 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %124
  %132 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %133 = load i32, i32* @ATH5K_DEBUG_ANY, align 4
  %134 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %138 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %132, i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %136, i32 %139)
  %141 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %142 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %145 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %147 = call i32 @ath5k_hw_set_bssid(%struct.ath5k_hw* %146)
  br label %148

148:                                              ; preds = %131, %124
  br label %149

149:                                              ; preds = %148, %76
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %156 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %155, i32 0, i32 4
  %157 = call i32 @spin_lock_bh(i32* %156)
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %159 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %160 = call i32 @ath5k_beacon_update(%struct.ieee80211_hw* %158, %struct.ieee80211_vif* %159)
  %161 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %162 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %161, i32 0, i32 4
  %163 = call i32 @spin_unlock_bh(i32* %162)
  br label %164

164:                                              ; preds = %154, %149
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %171 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %174 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %169, %164
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %178 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %176, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %186 = call i32 @ath5k_beacon_config(%struct.ath5k_hw* %185)
  br label %187

187:                                              ; preds = %184, %175
  %188 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %189 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %188, i32 0, i32 2
  %190 = call i32 @mutex_unlock(i32* %189)
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_bssid(%struct.ath5k_hw*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @ath5k_hw_get_default_slottime(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @ath5k_any_vif_assoc(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_set_beacon_filter(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @ath5k_hw_set_ledstate(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath5k_beacon_update(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath5k_beacon_config(%struct.ath5k_hw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
