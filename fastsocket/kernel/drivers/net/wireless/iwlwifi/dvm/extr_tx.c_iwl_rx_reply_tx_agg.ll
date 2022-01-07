; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwl_rx_reply_tx_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwl_rx_reply_tx_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.iwl_ht_agg }
%struct.iwl_ht_agg = type { i32, i32, i32 }
%struct.iwlagn_tx_resp = type { i32, i32, i32, i64, %struct.agg_tx_status }
%struct.agg_tx_status = type { i32 }

@IWLAGN_TX_RES_TID_MSK = common dso_local global i32 0, align 4
@IWLAGN_TX_RES_TID_POS = common dso_local global i32 0, align 4
@IWLAGN_TX_RES_RA_MSK = common dso_local global i32 0, align 4
@IWLAGN_TX_RES_RA_POS = common dso_local global i32 0, align 4
@IWL_TID_NON_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"got tx response w/o block-ack\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"receive reply tx w/ bt_kill\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"TXQ %d initial_rate 0x%x ssn %d frm_cnt %d\0A\00", align 1
@AGG_TX_TRY_MSK = common dso_local global i32 0, align 4
@AGG_TX_TRY_POS = common dso_local global i32 0, align 4
@AGG_TX_STATUS_MSK = common dso_local global i32 0, align 4
@AGG_TX_STATE_FEW_BYTES_MSK = common dso_local global i32 0, align 4
@AGG_TX_STATE_ABORT_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%d: status %s (0x%04x), try-count (0x%01x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwlagn_tx_resp*)* @iwl_rx_reply_tx_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_rx_reply_tx_agg(%struct.iwl_priv* %0, %struct.iwlagn_tx_resp* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwlagn_tx_resp*, align 8
  %5 = alloca %struct.agg_tx_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_ht_agg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwlagn_tx_resp* %1, %struct.iwlagn_tx_resp** %4, align 8
  %13 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %14 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %13, i32 0, i32 4
  store %struct.agg_tx_status* %14, %struct.agg_tx_status** %5, align 8
  %15 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %16 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IWLAGN_TX_RES_TID_MSK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @IWLAGN_TX_RES_TID_POS, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %23 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IWLAGN_TX_RES_RA_MSK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @IWLAGN_TX_RES_RA_POS, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.iwl_ht_agg* %39, %struct.iwl_ht_agg** %8, align 8
  %40 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %41 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @IWL_TID_NON_QOS, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.iwl_ht_agg*, %struct.iwl_ht_agg** %8, align 8
  %51 = getelementptr inbounds %struct.iwl_ht_agg, %struct.iwl_ht_agg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %2
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %56 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_priv* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %2
  %58 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %59 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load %struct.iwl_ht_agg*, %struct.iwl_ht_agg** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_ht_agg, %struct.iwl_ht_agg* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %65 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = load %struct.iwl_ht_agg*, %struct.iwl_ht_agg** %8, align 8
  %70 = getelementptr inbounds %struct.iwl_ht_agg, %struct.iwl_ht_agg* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %72 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %57
  %76 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %77 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %82 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %98 = call i32 @IWL_DEBUG_COEX(%struct.iwl_priv* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %87, %80, %75, %57
  %100 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %101 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %177

105:                                              ; preds = %99
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %107 = load %struct.iwl_ht_agg*, %struct.iwl_ht_agg** %8, align 8
  %108 = getelementptr inbounds %struct.iwl_ht_agg, %struct.iwl_ht_agg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %111 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %115 = call i32 @iwlagn_get_scd_ssn(%struct.iwlagn_tx_resp* %114)
  %116 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %117 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_priv* %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %113, i32 %115, i32 %118)
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %174, %105
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %4, align 8
  %123 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %177

126:                                              ; preds = %120
  %127 = load %struct.agg_tx_status*, %struct.agg_tx_status** %5, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %127, i64 %129
  %131 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @AGG_TX_TRY_MSK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @AGG_TX_TRY_POS, align 4
  %138 = ashr i32 %136, %137
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @AGG_TX_STATUS_MSK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %126
  %144 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @iwlagn_count_agg_tx_err_status(%struct.iwl_priv* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %126
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @AGG_TX_STATE_FEW_BYTES_MSK, align 4
  %150 = load i32, i32* @AGG_TX_STATE_ABORT_MSK, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %174

155:                                              ; preds = %147
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @AGG_TX_STATUS_MSK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = icmp sgt i32 %161, 1
  br i1 %162, label %163, label %173

163:                                              ; preds = %160, %155
  %164 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @iwl_get_agg_tx_fail_reason(i32 %166)
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @AGG_TX_STATUS_MSK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* %12, align 4
  %172 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_priv* %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 %167, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %163, %160
  br label %174

174:                                              ; preds = %173, %154
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %120

177:                                              ; preds = %104, %120
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwlagn_get_scd_ssn(%struct.iwlagn_tx_resp*) #1

declare dso_local i32 @iwlagn_count_agg_tx_err_status(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_get_agg_tx_fail_reason(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
