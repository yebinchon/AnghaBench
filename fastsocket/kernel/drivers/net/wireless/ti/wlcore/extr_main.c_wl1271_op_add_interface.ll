; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32, %struct.wl1271* }
%struct.vif_counter_data = type { i32 }

@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mac80211 add interface type %d mac %pM\00", align 1
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WL12XX_INVALID_ROLE_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WL1271_FLAG_INTENDED_FW_RECOVERY = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @wl1271_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.vif_counter_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  store %struct.wl1271* %13, %struct.wl1271** %6, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %14)
  store %struct.wl12xx_vif* %15, %struct.wl12xx_vif** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %17 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @DEBUG_MAC80211, align 4
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %25 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %24)
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wl1271_debug(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = call i32 @wl12xx_get_vif_count(%struct.ieee80211_hw* %30, %struct.ieee80211_vif* %31, %struct.vif_counter_data* %8)
  %33 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %37 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %174

41:                                               ; preds = %2
  %42 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %43 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 7
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %49 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %50 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %171

56:                                               ; preds = %47
  %57 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %59 = call i32 @wl12xx_init_vif_data(%struct.wl1271* %57, %struct.ieee80211_vif* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %171

63:                                               ; preds = %56
  %64 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %65 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %66 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %65, i32 0, i32 4
  store %struct.wl1271* %64, %struct.wl1271** %66, align 8
  %67 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %68 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %69 = call i64 @wl12xx_get_role_type(%struct.wl1271* %67, %struct.wl12xx_vif* %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @WL12XX_INVALID_ROLE_TYPE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %171

76:                                               ; preds = %63
  %77 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %78 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %79 = call i32 @wlcore_allocate_hw_queue_base(%struct.wl1271* %77, %struct.wl12xx_vif* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %171

83:                                               ; preds = %76
  %84 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %85 = getelementptr inbounds %struct.vif_counter_data, %struct.vif_counter_data* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @wl12xx_need_fw_change(%struct.wl1271* %84, i32 %86, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %91 = call i32 @wl12xx_force_active_psm(%struct.wl1271* %90)
  %92 = load i32, i32* @WL1271_FLAG_INTENDED_FW_RECOVERY, align 4
  %93 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %94 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %93, i32 0, i32 7
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %97 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %100 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %99, i32 0, i32 6
  %101 = call i32 @wl1271_recovery_work(i32* %100)
  store i32 0, i32* %3, align 4
  br label %179

102:                                              ; preds = %83
  %103 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %104 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %110 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %109, i32 0, i32 5
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ETH_ALEN, align 4
  %119 = call i32 @memcpy(i32 %114, i32 %117, i32 %118)
  %120 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %121 = call i32 @wl12xx_init_fw(%struct.wl1271* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  br label %171

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %102
  %127 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %128 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %129 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %133 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %132, i32 0, i32 3
  %134 = call i32 @wl12xx_cmd_role_enable(%struct.wl1271* %127, i32 %130, i64 %131, i32* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %171

138:                                              ; preds = %126
  %139 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %141 = call i32 @wl1271_init_vif_specific(%struct.wl1271* %139, %struct.ieee80211_vif* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %171

145:                                              ; preds = %138
  %146 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %147 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %146, i32 0, i32 2
  %148 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %149 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %148, i32 0, i32 4
  %150 = call i32 @list_add(i32* %147, i32* %149)
  %151 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %152 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %153 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %152, i32 0, i32 1
  %154 = call i32 @set_bit(i32 %151, i32* %153)
  %155 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %156 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %145
  %161 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %162 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  br label %170

165:                                              ; preds = %145
  %166 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %167 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %165, %160
  br label %171

171:                                              ; preds = %170, %144, %137, %124, %82, %73, %62, %53
  %172 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %173 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %172)
  br label %174

174:                                              ; preds = %171, %40
  %175 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %176 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %175, i32 0, i32 1
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %174, %89
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl12xx_get_vif_count(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.vif_counter_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_init_vif_data(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i64 @wl12xx_get_role_type(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_allocate_hw_queue_base(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i64 @wl12xx_need_fw_change(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wl12xx_force_active_psm(%struct.wl1271*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wl1271_recovery_work(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl12xx_init_fw(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_cmd_role_enable(%struct.wl1271*, i32, i64, i32*) #1

declare dso_local i32 @wl1271_init_vif_specific(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
