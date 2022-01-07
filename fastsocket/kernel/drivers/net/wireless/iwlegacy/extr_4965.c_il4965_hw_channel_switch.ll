; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_hw_channel_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_hw_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.ieee80211_vif*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ieee80211_vif = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_channel_switch = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.il4965_channel_switch_cmd = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.il_channel_info = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK = common dso_local global i32 0, align 4
@TIME_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"uCode time for the switch is 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid channel switch from %u to %u\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"error:%d  fill txpower_tbl\0A\00", align 1
@C_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_channel_switch*)* @il4965_hw_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_hw_channel_switch(%struct.il_priv* %0, %struct.ieee80211_channel_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_channel_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.il4965_channel_switch_cmd, align 8
  %11 = alloca %struct.il_channel_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_vif*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_channel_switch* %1, %struct.ieee80211_channel_switch** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %25, align 8
  store %struct.ieee80211_vif* %26, %struct.ieee80211_vif** %18, align 8
  %27 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %18, align 8
  %34 = icmp eq %struct.ieee80211_vif* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %190

41:                                               ; preds = %2
  %42 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @iw4965_is_ht40_channel(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %49, %41
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @cpu_to_le16(i32 %68)
  %70 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 6
  store i32 %69, i32* %70, align 4
  %71 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %72 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %77 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 5
  store i32 %79, i32* %80, align 8
  %81 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  %84 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  %87 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %58
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %17, align 4
  %103 = sdiv i32 %101, %102
  %104 = icmp sgt i32 %96, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %95
  %106 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %107 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %17, align 4
  %112 = sdiv i32 %110, %111
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %16, align 4
  br label %116

115:                                              ; preds = %95
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %115, %105
  br label %117

117:                                              ; preds = %116, %92, %58
  %118 = load i32, i32* %16, align 4
  %119 = icmp sle i32 %118, 1
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %122 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @cpu_to_le32(i32 %123)
  %125 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 2
  store i32 %124, i32* %125, align 8
  br label %147

126:                                              ; preds = %117
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %18, align 8
  %128 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %16, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* @TIME_UNIT, align 4
  %134 = mul nsw i32 %132, %133
  store i32 %134, i32* %12, align 4
  %135 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @il_usecs_to_beacons(%struct.il_priv* %135, i32 %136, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %140 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %141 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @il_add_beacon_time(%struct.il_priv* %139, i32 %142, i32 %143, i32 %144)
  %146 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 2
  store i32 %145, i32* %146, align 8
  br label %147

147:                                              ; preds = %126, %120
  %148 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @D_11H(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %152 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %153 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call %struct.il_channel_info* @il_get_channel_info(%struct.il_priv* %151, i64 %154, i32 %155)
  store %struct.il_channel_info* %156, %struct.il_channel_info** %11, align 8
  %157 = load %struct.il_channel_info*, %struct.il_channel_info** %11, align 8
  %158 = icmp ne %struct.il_channel_info* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %147
  %160 = load %struct.il_channel_info*, %struct.il_channel_info** %11, align 8
  %161 = call i64 @il_is_channel_radar(%struct.il_channel_info* %160)
  %162 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 4
  store i64 %161, i64* %162, align 8
  br label %172

163:                                              ; preds = %147
  %164 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %165 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @IL_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load i32, i32* @EFAULT, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %190

172:                                              ; preds = %159
  %173 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = getelementptr inbounds %struct.il4965_channel_switch_cmd, %struct.il4965_channel_switch_cmd* %10, i32 0, i32 3
  %179 = call i32 @il4965_fill_txpower_tbl(%struct.il_priv* %173, i32 %174, i32 %175, i32 %176, i32 %177, i32* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %172
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @D_11H(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %3, align 4
  br label %190

186:                                              ; preds = %172
  %187 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %188 = load i32, i32* @C_CHANNEL_SWITCH, align 4
  %189 = call i32 @il_send_cmd_pdu(%struct.il_priv* %187, i32 %188, i32 32, %struct.il4965_channel_switch_cmd* %10)
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %186, %182, %163, %38
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iw4965_is_ht40_channel(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @il_usecs_to_beacons(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_add_beacon_time(%struct.il_priv*, i32, i32, i32) #1

declare dso_local i32 @D_11H(i8*, i32) #1

declare dso_local %struct.il_channel_info* @il_get_channel_info(%struct.il_priv*, i64, i32) #1

declare dso_local i64 @il_is_channel_radar(%struct.il_channel_info*) #1

declare dso_local i32 @IL_ERR(i8*, i32, i32) #1

declare dso_local i32 @il4965_fill_txpower_tbl(%struct.il_priv*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il4965_channel_switch_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
