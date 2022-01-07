; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm = type { i32, i32, %struct.TYPE_7__*, %struct.ieee80211_vif*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.iwl_mvm_vif = type { i32*, i32 }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate bcast sta\0A\00", align 1
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Disable power on existing interfaces\0A\00", align 1
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_pm_disable_iterator = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Currently %d interfaces active\0A\00", align 1
@iwl_mvm_power_update_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_mac_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.cfg80211_chan_def, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %6, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %20 = call i32 @iwl_mvm_mac_ctxt_init(%struct.iwl_mvm* %18, %struct.ieee80211_vif* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %189

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %33 = call i32 @iwl_mvm_mac_get_queues_mask(%struct.iwl_mvm* %31, %struct.ieee80211_vif* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %35 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %35, i32 0, i32 1
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm* %34, i32* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %43 = call i32 @IWL_ERR(%struct.iwl_mvm* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %156

44:                                               ; preds = %30
  br label %189

45:                                               ; preds = %24
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %63 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %68 = load i32, i32* @iwl_mvm_pm_disable_iterator, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %70 = call i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_7__* %66, i32 %67, i32 %68, %struct.iwl_mvm* %69)
  br label %71

71:                                               ; preds = %61, %56
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %74 = call i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm* %72, %struct.ieee80211_vif* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %156

78:                                               ; preds = %71
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %80 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %81 = call i32 @iwl_mvm_power_update_mode(%struct.iwl_mvm* %79, %struct.ieee80211_vif* %80)
  %82 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %136

87:                                               ; preds = %78
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 4
  %90 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %97, align 8
  %99 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %98, i64 %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %102, align 8
  %104 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %103, i64 0
  store %struct.ieee80211_channel* %104, %struct.ieee80211_channel** %9, align 8
  %105 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %106 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %107 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %10, %struct.ieee80211_channel* %105, i32 %106)
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %109 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm* %108, i32* %111, %struct.cfg80211_chan_def* %10, i32 1, i32 1)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %87
  br label %150

116:                                              ; preds = %87
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %119 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %117, %struct.ieee80211_vif* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %144

123:                                              ; preds = %116
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %125 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %126 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %126, i32 0, i32 1
  %128 = call i32 @iwl_mvm_add_bcast_sta(%struct.iwl_mvm* %124, %struct.ieee80211_vif* %125, i32* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %140

132:                                              ; preds = %123
  %133 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %134, i32 0, i32 3
  store %struct.ieee80211_vif* %133, %struct.ieee80211_vif** %135, align 8
  br label %136

136:                                              ; preds = %132, %78
  %137 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %138 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %139 = call i32 @iwl_mvm_vif_dbgfs_register(%struct.iwl_mvm* %137, %struct.ieee80211_vif* %138)
  br label %189

140:                                              ; preds = %131
  %141 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %142 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %143 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %141, %struct.ieee80211_vif* %142)
  br label %144

144:                                              ; preds = %140, %122
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %146 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @iwl_mvm_phy_ctxt_remove(%struct.iwl_mvm* %145, i32* %148)
  br label %150

150:                                              ; preds = %144, %115
  %151 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %152 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %151, i32 0, i32 0
  store i32* null, i32** %152, align 8
  %153 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %154 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %155 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %153, %struct.ieee80211_vif* %154)
  br label %156

156:                                              ; preds = %150, %77, %41
  %157 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %158 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %164 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %162, %156
  %168 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %169 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  %173 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %185

177:                                              ; preds = %167
  %178 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %179 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %178, i32 0, i32 2
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %182 = load i32, i32* @iwl_mvm_power_update_iterator, align 4
  %183 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %184 = call i32 @ieee80211_iterate_active_interfaces(%struct.TYPE_7__* %180, i32 %181, i32 %182, %struct.iwl_mvm* %183)
  br label %185

185:                                              ; preds = %177, %167
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %187 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %188 = call i32 @iwl_mvm_mac_ctxt_release(%struct.iwl_mvm* %186, %struct.ieee80211_vif* %187)
  br label %189

189:                                              ; preds = %185, %136, %44, %23
  %190 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %191 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %190, i32 0, i32 1
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_init(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_get_queues_mask(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm*, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_7__*, i32, i32, %struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_power_update_mode(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm*, i32*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_add_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @iwl_mvm_vif_dbgfs_register(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_remove(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces(%struct.TYPE_7__*, i32, i32, %struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_release(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
