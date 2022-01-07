; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_rxon_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_rxon_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iwl_rxon_context = type { i64, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.iwl_rxon_cmd = type { i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to send timing (%d)!\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Error sending required beacon (%d)!\0A\00", align 1
@CMD_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Error setting new RXON (%d)\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Error sending IBSS beacon\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error sending TX power (%d)\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwlagn_rxon_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rxon_connect(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 4
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.iwl_rxon_cmd*
  store %struct.iwl_rxon_cmd* %11, %struct.iwl_rxon_cmd** %7, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %19 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %20 = call i32 @iwl_send_rxon_timing(%struct.iwl_priv* %18, %struct.iwl_rxon_context* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %162

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %32 = call i32 @iwlagn_update_qos(%struct.iwl_priv* %30, %struct.iwl_rxon_context* %31)
  %33 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %47 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @iwlagn_update_beacon(%struct.iwl_priv* %46, %struct.TYPE_7__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %162

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %37, %29
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %63 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CMD_SYNC, align 4
  %67 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %67, i32 0, i32 2
  %69 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %62, i32 %65, i32 %66, i32 4, i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %162

77:                                               ; preds = %59
  %78 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %79 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %80 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %79, i32 0, i32 2
  %81 = call i32 @memcpy(%struct.iwl_rxon_cmd* %78, i32* %80, i32 4)
  %82 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %83 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = icmp ne %struct.TYPE_7__* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %77
  %87 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %88 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %96 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %97 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = call i32 @iwlagn_update_beacon(%struct.iwl_priv* %95, %struct.TYPE_7__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %103 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  br label %105

105:                                              ; preds = %104, %86, %77
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %107 = call i32 @iwl_init_sensitivity(%struct.iwl_priv* %106)
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %109 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %110 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @iwl_set_tx_power(%struct.iwl_priv* %108, i32 %111, i32 1)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %162

120:                                              ; preds = %105
  %121 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %122 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = icmp ne %struct.TYPE_7__* %123, null
  br i1 %124, label %125, label %161

125:                                              ; preds = %120
  %126 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %127 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %125
  %134 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %135 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = icmp ne %struct.TYPE_5__* %138, null
  br i1 %139, label %140, label %161

140:                                              ; preds = %133
  %141 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %142 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %140
  %150 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %151 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %154 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @ieee80211_request_smps(%struct.TYPE_7__* %152, i64 %159)
  br label %161

161:                                              ; preds = %149, %140, %133, %125, %120
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %115, %72, %53, %23
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @iwl_send_rxon_timing(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @iwlagn_update_qos(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwlagn_update_beacon(%struct.iwl_priv*, %struct.TYPE_7__*) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.iwl_rxon_cmd*, i32*, i32) #1

declare dso_local i32 @iwl_init_sensitivity(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_set_tx_power(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @ieee80211_request_smps(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
