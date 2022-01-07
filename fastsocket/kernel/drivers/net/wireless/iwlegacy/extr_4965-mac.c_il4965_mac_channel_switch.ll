; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_channel_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.il_priv* }
%struct.ieee80211_conf = type { i32 }
%struct.il_priv = type { i32, i32, i64, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.il_ht_config, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.il_ht_config = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_channel_switch = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.il_channel_info = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@S_SCANNING = common dso_local global i32 0, align 4
@S_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid channel\0A\00", align 1
@IEEE80211_HT_PARAM_CHA_SEC_NONE = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_BELOW = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_ABOVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_mac_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_channel_switch* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_channel_switch*, align 8
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.il_channel_info*, align 8
  %7 = alloca %struct.ieee80211_conf*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.il_ht_config*, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_channel_switch* %1, %struct.ieee80211_channel_switch** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  store %struct.il_priv* %13, %struct.il_priv** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  store %struct.ieee80211_conf* %15, %struct.ieee80211_conf** %7, align 8
  %16 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  store %struct.ieee80211_channel* %19, %struct.ieee80211_channel** %8, align 8
  %20 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 8
  store %struct.il_ht_config* %21, %struct.il_ht_config** %9, align 8
  %22 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %27 = call i64 @il_is_rfkill(%struct.il_priv* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %184

30:                                               ; preds = %2
  %31 = load i32, i32* @S_EXIT_PENDING, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 3
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @S_SCANNING, align 4
  %38 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 3
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %44 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %45 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %44, i32 0, i32 3
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36, %30
  br label %184

49:                                               ; preds = %42
  %50 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %51 = call i32 @il_is_associated(%struct.il_priv* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %184

54:                                               ; preds = %49
  %55 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)** %58, align 8
  %60 = icmp ne i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %184

62:                                               ; preds = %54
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le16_to_cpu(i32 %69)
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %184

74:                                               ; preds = %62
  %75 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call %struct.il_channel_info* @il_get_channel_info(%struct.il_priv* %75, i32 %78, i64 %79)
  store %struct.il_channel_info* %80, %struct.il_channel_info** %6, align 8
  %81 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %82 = call i32 @il_is_channel_valid(%struct.il_channel_info* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  %85 = call i32 @D_MAC80211(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %184

86:                                               ; preds = %74
  %87 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 5
  %89 = call i32 @spin_lock_irq(i32* %88)
  %90 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.il_ht_config, %struct.il_ht_config* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %96, i32 0, i32 0
  %98 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_10__* %97)
  switch i32 %98, label %123 [
    i32 128, label %99
    i32 131, label %99
    i32 130, label %107
    i32 129, label %115
  ]

99:                                               ; preds = %86, %86
  %100 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %101 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_NONE, align 4
  %104 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  br label %123

107:                                              ; preds = %86
  %108 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_BELOW, align 4
  %109 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %110 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %113 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %123

115:                                              ; preds = %86
  %116 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_ABOVE, align 4
  %117 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %118 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %121 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %86, %115, %107, %99
  %124 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %125 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @le16_to_cpu(i32 %127)
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %133 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %123
  %136 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %137 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %138 = call i32 @il_set_rxon_channel(%struct.il_priv* %136, %struct.ieee80211_channel* %137)
  %139 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %140 = load %struct.il_ht_config*, %struct.il_ht_config** %9, align 8
  %141 = call i32 @il_set_rxon_ht(%struct.il_priv* %139, %struct.il_ht_config* %140)
  %142 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %143 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %144 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %147 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @il_set_flags_for_band(%struct.il_priv* %142, i32 %145, i32 %148)
  %150 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %151 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %150, i32 0, i32 5
  %152 = call i32 @spin_unlock_irq(i32* %151)
  %153 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %154 = call i32 @il_set_rate(%struct.il_priv* %153)
  %155 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %156 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %157 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %156, i32 0, i32 3
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = load i64, i64* %10, align 8
  %160 = call i64 @cpu_to_le16(i64 %159)
  %161 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %162 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %164 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %163, i32 0, i32 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.il_priv*, %struct.ieee80211_channel_switch*)** %166, align 8
  %168 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %169 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %170 = call i64 %167(%struct.il_priv* %168, %struct.ieee80211_channel_switch* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %135
  %173 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %174 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %175 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %174, i32 0, i32 3
  %176 = call i32 @clear_bit(i32 %173, i32* %175)
  %177 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %178 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %177, i32 0, i32 2
  store i64 0, i64* %178, align 8
  %179 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %180 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ieee80211_chswitch_done(i32 %181, i32 0)
  br label %183

183:                                              ; preds = %172, %135
  br label %184

184:                                              ; preds = %183, %84, %73, %61, %53, %48, %29
  %185 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %186 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @D_MAC80211(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_is_associated(%struct.il_priv*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.il_channel_info* @il_get_channel_info(%struct.il_priv*, i32, i64) #1

declare dso_local i32 @il_is_channel_valid(%struct.il_channel_info*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_10__*) #1

declare dso_local i32 @il_set_rxon_channel(%struct.il_priv*, %struct.ieee80211_channel*) #1

declare dso_local i32 @il_set_rxon_ht(%struct.il_priv*, %struct.il_ht_config*) #1

declare dso_local i32 @il_set_flags_for_band(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @il_set_rate(%struct.il_priv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
