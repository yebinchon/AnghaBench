; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"station %pM state change %d->%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"AP %pM beacon interval is %d, refusing due to firmware bug!\0A\00", align 1
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32)* @iwl_mvm_mac_sta_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_sta_state(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm*, align 8
  %13 = alloca %struct.iwl_mvm_vif*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %15)
  store %struct.iwl_mvm* %16, %struct.iwl_mvm** %12, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %18 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %17)
  store %struct.iwl_mvm_vif* %18, %struct.iwl_mvm_vif** %13, align 8
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %181

37:                                               ; preds = %5
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 1
  %40 = call i32 @flush_work(i32* %39)
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 16
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @IWL_ERR(%struct.iwl_mvm* %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %176

75:                                               ; preds = %57, %51
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %78 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %79 = call i32 @iwl_mvm_add_sta(%struct.iwl_mvm* %76, %struct.ieee80211_vif* %77, %struct.ieee80211_sta* %78)
  store i32 %79, i32* %14, align 4
  br label %175

80:                                               ; preds = %47, %37
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %174

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %101 = call i32 @iwl_mvm_update_sta(%struct.iwl_mvm* %98, %struct.ieee80211_vif* %99, %struct.ieee80211_sta* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %106 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %107 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @iwl_mvm_rs_rate_init(%struct.iwl_mvm* %105, %struct.ieee80211_sta* %106, i32 %113)
  br label %115

115:                                              ; preds = %104, %97
  br label %173

116:                                              ; preds = %93, %89
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 0, i32* %14, align 4
  br label %172

125:                                              ; preds = %120, %116
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 0, i32* %14, align 4
  br label %171

134:                                              ; preds = %129, %125
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  br label %170

143:                                              ; preds = %138, %134
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  br label %169

152:                                              ; preds = %147, %143
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %162 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %163 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %164 = call i32 @iwl_mvm_rm_sta(%struct.iwl_mvm* %161, %struct.ieee80211_vif* %162, %struct.ieee80211_sta* %163)
  store i32 %164, i32* %14, align 4
  br label %168

165:                                              ; preds = %156, %152
  %166 = load i32, i32* @EIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %165, %160
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169, %142
  br label %171

171:                                              ; preds = %170, %133
  br label %172

172:                                              ; preds = %171, %124
  br label %173

173:                                              ; preds = %172, %115
  br label %174

174:                                              ; preds = %173, %88
  br label %175

175:                                              ; preds = %174, %75
  br label %176

176:                                              ; preds = %175, %63
  %177 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %178 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %176, %34
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, i32, i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i32 @iwl_mvm_add_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_update_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_rs_rate_init(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_mvm_rm_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
