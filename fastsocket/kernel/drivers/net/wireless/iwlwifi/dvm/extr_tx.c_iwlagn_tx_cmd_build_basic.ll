; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_basic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.iwl_tx_cmd = type { i32, i32, i32, i64, i64, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_tx_info = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@TX_CMD_FLG_ACK_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_IMM_BA_RSP_MASK = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ETH_P_PAE = common dso_local global i32 0, align 4
@TX_CMD_FLG_IGNORE_BT = common dso_local global i32 0, align 4
@TX_CMD_FLG_MORE_FRAG_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@IWL_TID_NON_QOS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@TX_CMD_FLG_ANT_SEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.sk_buff*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_hdr*, i32)* @iwlagn_tx_cmd_build_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_tx_cmd_build_basic(%struct.iwl_priv* %0, %struct.sk_buff* %1, %struct.iwl_tx_cmd* %2, %struct.ieee80211_tx_info* %3, %struct.ieee80211_hdr* %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iwl_tx_cmd*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.iwl_tx_cmd* %2, %struct.iwl_tx_cmd** %9, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %10, align 8
  store %struct.ieee80211_hdr* %4, %struct.ieee80211_hdr** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %23 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %24 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %41

36:                                               ; preds = %6
  %37 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @ieee80211_is_probe_resp(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %106

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @ieee80211_is_back_req(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %55 = load i32, i32* @TX_CMD_FLG_IMM_BA_RSP_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  br label %105

59:                                               ; preds = %49
  %60 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %59
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %67 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %104

72:                                               ; preds = %65
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %72
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @ieee80211_is_auth(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @ieee80211_is_assoc_req(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @ieee80211_is_reassoc_req(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @ETH_P_PAE, align 4
  %98 = call i64 @cpu_to_be16(i32 %97)
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93, %89, %85, %81
  %101 = load i32, i32* @TX_CMD_FLG_IGNORE_BT, align 4
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %100, %93, %72, %65, %59
  br label %105

105:                                              ; preds = %104, %53
  br label %106

106:                                              ; preds = %105, %45
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %109 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @ieee80211_has_morefrags(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @TX_CMD_FLG_MORE_FRAG_MSK, align 4
  %115 = load i32, i32* %14, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %113, %106
  %118 = load i32, i32* %13, align 4
  %119 = call i64 @ieee80211_is_data_qos(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %123 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %122)
  store i32* %123, i32** %15, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 15
  %128 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %129 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %14, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %14, align 4
  br label %154

134:                                              ; preds = %117
  %135 = load i32, i32* @IWL_TID_NON_QOS, align 4
  %136 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %137 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %139 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %146 = load i32, i32* %14, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %14, align 4
  br label %153

148:                                              ; preds = %134
  %149 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %14, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %14, align 4
  br label %153

153:                                              ; preds = %148, %144
  br label %154

154:                                              ; preds = %153, %121
  %155 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %156 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @iwlagn_tx_cmd_protection(%struct.iwl_priv* %155, %struct.ieee80211_tx_info* %156, i32 %157, i32* %14)
  %159 = load i32, i32* @TX_CMD_FLG_ANT_SEL_MSK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i64 @ieee80211_is_mgmt(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %154
  %167 = load i32, i32* %13, align 4
  %168 = call i64 @ieee80211_is_assoc_req(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = call i64 @ieee80211_is_reassoc_req(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170, %166
  %175 = call i8* @cpu_to_le16(i32 3)
  %176 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %177 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i8* %175, i8** %178, align 8
  br label %184

179:                                              ; preds = %170
  %180 = call i8* @cpu_to_le16(i32 2)
  %181 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %182 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i8* %180, i8** %183, align 8
  br label %184

184:                                              ; preds = %179, %174
  br label %189

185:                                              ; preds = %154
  %186 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %187 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i8* null, i8** %188, align 8
  br label %189

189:                                              ; preds = %185, %184
  %190 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %191 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %190, i32 0, i32 4
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %194 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %196 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %195, i32 0, i32 3
  store i64 0, i64* %196, align 8
  ret void
}

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i64 @ieee80211_is_assoc_req(i32) #1

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @iwlagn_tx_cmd_protection(%struct.iwl_priv*, %struct.ieee80211_tx_info*, i32, i32*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
