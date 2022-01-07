; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.iwl_tx_cmd = type { i32, i32, i8*, i64, i8*, i8*, i64, i8* }
%struct.ieee80211_tx_info = type { i32, i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@FCS_LEN = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@TX_CMD_FLG_ACK = common dso_local global i64 0, align 8
@TX_CMD_FLG_TSF = common dso_local global i64 0, align 8
@TX_CMD_FLG_BAR = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ETH_P_PAE = common dso_local global i32 0, align 4
@TX_CMD_FLG_BT_DIS = common dso_local global i64 0, align 8
@TX_CMD_FLG_MORE_FRAG = common dso_local global i64 0, align 8
@TX_CMD_FLG_SEQ_CTL = common dso_local global i64 0, align 8
@IWL_TID_NON_QOS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@TX_CMD_FLG_PROT_REQUIRE = common dso_local global i64 0, align 8
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.sk_buff*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, i32)* @iwl_mvm_set_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_tx_cmd(%struct.iwl_mvm* %0, %struct.sk_buff* %1, %struct.iwl_tx_cmd* %2, %struct.ieee80211_tx_info* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iwl_tx_cmd*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.iwl_tx_cmd* %2, %struct.iwl_tx_cmd** %8, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %20, %struct.ieee80211_hdr** %11, align 8
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %24, i32 0, i32 5
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @le32_to_cpu(i8* %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FCS_LEN, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %14, align 8
  %33 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %5
  %40 = load i64, i64* @TX_CMD_FLG_ACK, align 8
  %41 = load i64, i64* %13, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %13, align 8
  br label %48

43:                                               ; preds = %5
  %44 = load i64, i64* @TX_CMD_FLG_ACK, align 8
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %13, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @ieee80211_is_probe_resp(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @TX_CMD_FLG_TSF, align 8
  %54 = load i64, i64* %13, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %13, align 8
  br label %67

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @ieee80211_is_back_req(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i64, i64* @TX_CMD_FLG_ACK, align 8
  %62 = load i64, i64* @TX_CMD_FLG_BAR, align 8
  %63 = or i64 %61, %62
  %64 = load i64, i64* %13, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %60, %56
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @ETH_P_PAE, align 4
  %78 = call i64 @cpu_to_be16(i32 %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %73
  %81 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %82 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @is_multicast_ether_addr(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @ieee80211_is_back_req(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @ieee80211_is_mgmt(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90, %86, %80, %73
  %95 = load i64, i64* @TX_CMD_FLG_BT_DIS, align 8
  %96 = load i64, i64* %13, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %94, %90, %67
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @ieee80211_has_morefrags(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, i64* @TX_CMD_FLG_MORE_FRAG, align 8
  %104 = load i64, i64* %13, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @ieee80211_is_data_qos(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %112 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %111)
  store i32* %112, i32** %15, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 15
  %117 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %118 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i64, i64* @TX_CMD_FLG_SEQ_CTL, align 8
  %120 = xor i64 %119, -1
  %121 = load i64, i64* %13, align 8
  %122 = and i64 %121, %120
  store i64 %122, i64* %13, align 8
  br label %143

123:                                              ; preds = %106
  %124 = load i32, i32* @IWL_TID_NON_QOS, align 4
  %125 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %126 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load i64, i64* @TX_CMD_FLG_SEQ_CTL, align 8
  %135 = load i64, i64* %13, align 8
  %136 = or i64 %135, %134
  store i64 %136, i64* %13, align 8
  br label %142

137:                                              ; preds = %123
  %138 = load i64, i64* @TX_CMD_FLG_SEQ_CTL, align 8
  %139 = xor i64 %138, -1
  %140 = load i64, i64* %13, align 8
  %141 = and i64 %140, %139
  store i64 %141, i64* %13, align 8
  br label %142

142:                                              ; preds = %137, %133
  br label %143

143:                                              ; preds = %142, %110
  %144 = load i32, i32* %12, align 4
  %145 = call i64 @ieee80211_is_mgmt(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = call i64 @ieee80211_is_assoc_req(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %12, align 4
  %153 = call i64 @ieee80211_is_reassoc_req(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151, %147
  %156 = call i8* @cpu_to_le16(i32 3)
  %157 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %158 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  br label %163

159:                                              ; preds = %151
  %160 = call i8* @cpu_to_le16(i32 2)
  %161 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %162 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %161, i32 0, i32 7
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %165 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %168 = and i32 %166, %167
  %169 = call i32 @WARN_ON_ONCE(i32 %168)
  br label %173

170:                                              ; preds = %143
  %171 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %172 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %171, i32 0, i32 7
  store i8* null, i8** %172, align 8
  br label %173

173:                                              ; preds = %170, %163
  %174 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %175 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i64, i64* @TX_CMD_FLG_PROT_REQUIRE, align 8
  %182 = load i64, i64* %13, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %13, align 8
  br label %184

184:                                              ; preds = %180, %173
  %185 = load i32, i32* %12, align 4
  %186 = call i64 @ieee80211_is_data(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %184
  %189 = load i64, i64* %14, align 8
  %190 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %191 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %189, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  %195 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %196 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %195)
  %197 = call i64 @is_multicast_ether_addr(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load i64, i64* @TX_CMD_FLG_PROT_REQUIRE, align 8
  %201 = load i64, i64* %13, align 8
  %202 = or i64 %201, %200
  store i64 %202, i64* %13, align 8
  br label %203

203:                                              ; preds = %199, %194, %188, %184
  %204 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %205 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %204, i32 0, i32 6
  store i64 0, i64* %205, align 8
  %206 = load i64, i64* %13, align 8
  %207 = call i8* @cpu_to_le32(i64 %206)
  %208 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %209 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i8* @cpu_to_le16(i32 %213)
  %215 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %216 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %215, i32 0, i32 4
  store i8* %214, i8** %216, align 8
  %217 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %218 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %217, i32 0, i32 3
  store i64 0, i64* %218, align 8
  %219 = load i64, i64* @TX_CMD_LIFE_TIME_INFINITE, align 8
  %220 = call i8* @cpu_to_le32(i64 %219)
  %221 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %222 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %225 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  ret void
}

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @ieee80211_is_assoc_req(i32) #1

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
