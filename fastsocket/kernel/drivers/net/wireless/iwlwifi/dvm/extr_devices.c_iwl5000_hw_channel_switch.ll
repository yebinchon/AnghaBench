; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_devices.c_iwl5000_hw_channel_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_devices.c_iwl5000_hw_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.ieee80211_vif*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_channel_switch = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.iwl5000_channel_switch_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@CMD_SYNC = common dso_local global i32 0, align 4
@REPLY_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"channel switch from %d to %d\0A\00", align 1
@TIME_UNIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"uCode time for the switch is 0x%x\0A\00", align 1
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)* @iwl5000_hw_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl5000_hw_channel_switch(%struct.iwl_priv* %0, %struct.ieee80211_channel_switch* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.ieee80211_channel_switch*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl5000_channel_switch_cmd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_vif*, align 8
  %14 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.ieee80211_channel_switch* %1, %struct.ieee80211_channel_switch** %4, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 2
  %17 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %16, align 8
  %18 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %19 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %17, i64 %18
  store %struct.iwl_rxon_context* %19, %struct.iwl_rxon_context** %5, align 8
  %20 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %25, i32 0, i32 2
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %26, align 8
  store %struct.ieee80211_vif* %27, %struct.ieee80211_vif** %13, align 8
  %28 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  %29 = ptrtoint %struct.iwl5000_channel_switch_cmd* %6 to i32
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 1
  %31 = load i32, i32* @CMD_SYNC, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 2
  store i32 24, i32* %32, align 4
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 3
  %34 = load i32, i32* @REPLY_CHANNEL_SWITCH, align 4
  store i32 %34, i32* %33, align 4
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %49 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_11H(%struct.iwl_priv* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %11, align 4
  %71 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %2
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %85 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %12, align 4
  %90 = sdiv i32 %88, %89
  %91 = icmp sgt i32 %83, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %82
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = sdiv i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %103

102:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %92
  br label %104

104:                                              ; preds = %103, %79, %2
  %105 = load i32, i32* %11, align 4
  %106 = icmp sle i32 %105, 1
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @cpu_to_le32(i32 %110)
  %112 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 2
  store i32 %111, i32* %112, align 4
  br label %134

113:                                              ; preds = %104
  %114 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %115 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* @TIME_UNIT, align 4
  %121 = mul nsw i32 %119, %120
  store i32 %121, i32* %7, align 4
  %122 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @iwl_usecs_to_beacons(%struct.iwl_priv* %122, i32 %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %127 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %128 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @iwl_add_beacon_time(%struct.iwl_priv* %126, i32 %129, i32 %130, i32 %131)
  %133 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 2
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %113, %107
  %135 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %136 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_11H(%struct.iwl_priv* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %140 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %146 = and i32 %144, %145
  %147 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, %struct.iwl5000_channel_switch_cmd* %6, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  %148 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %149 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %148, %struct.iwl_host_cmd* %14)
  ret i32 %149
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_11H(%struct.iwl_priv*, i8*, i32, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_usecs_to_beacons(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @iwl_add_beacon_time(%struct.iwl_priv*, i32, i32, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
