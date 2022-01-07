; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_cmd_build_basic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_cmd_build_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.il_tx_cmd = type { i32, i32, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@TX_CMD_FLG_ACK_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_IMM_BA_RSP_MASK = common dso_local global i32 0, align 4
@TX_CMD_FLG_MORE_FRAG_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_ANT_SEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.sk_buff*, %struct.il_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_hdr*, i32)* @il4965_tx_cmd_build_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_tx_cmd_build_basic(%struct.il_priv* %0, %struct.sk_buff* %1, %struct.il_tx_cmd* %2, %struct.ieee80211_tx_info* %3, %struct.ieee80211_hdr* %4, i32 %5) #0 {
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.il_tx_cmd*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.il_tx_cmd* %2, %struct.il_tx_cmd** %9, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %10, align 8
  store %struct.ieee80211_hdr* %4, %struct.ieee80211_hdr** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %23 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %24 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @ieee80211_is_mgmt(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @ieee80211_is_probe_resp(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = and i32 %51, 15
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %54, %47, %43
  br label %67

59:                                               ; preds = %6
  %60 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %59, %58
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @ieee80211_is_back_req(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %73 = load i32, i32* @TX_CMD_FLG_IMM_BA_RSP_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %80 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @ieee80211_has_morefrags(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @TX_CMD_FLG_MORE_FRAG_MSK, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i32, i32* %13, align 4
  %90 = call i64 @ieee80211_is_data_qos(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %94 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %93)
  store i32* %94, i32** %15, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 15
  %99 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %100 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %14, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %109

105:                                              ; preds = %88
  %106 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %105, %92
  %110 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %111 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @il_tx_cmd_protection(%struct.il_priv* %110, %struct.ieee80211_tx_info* %111, i32 %112, i32* %14)
  %114 = load i32, i32* @TX_CMD_FLG_ANT_SEL_MSK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %14, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i64 @ieee80211_is_mgmt(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %109
  %122 = load i32, i32* %13, align 4
  %123 = call i64 @ieee80211_is_assoc_req(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  %127 = call i64 @ieee80211_is_reassoc_req(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125, %121
  %130 = call i8* @cpu_to_le16(i32 3)
  %131 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %132 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  br label %139

134:                                              ; preds = %125
  %135 = call i8* @cpu_to_le16(i32 2)
  %136 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %137 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %134, %129
  br label %144

140:                                              ; preds = %109
  %141 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %142 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i8* null, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %139
  %145 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %146 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %149 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %9, align 8
  %151 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  ret void
}

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @il_tx_cmd_protection(%struct.il_priv*, %struct.ieee80211_tx_info*, i32, i32*) #1

declare dso_local i64 @ieee80211_is_assoc_req(i32) #1

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
