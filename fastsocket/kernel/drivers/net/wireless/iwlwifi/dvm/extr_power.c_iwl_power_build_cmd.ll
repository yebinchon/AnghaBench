; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_power.c_iwl_power_build_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_power.c_iwl_power_build_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.iwl_priv = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.iwl_powertable_cmd = type { i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IWL_POWER_INDEX_5 = common dso_local global i64 0, align 8
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@IWL_POWER_INDEX_1 = common dso_local global i64 0, align 8
@IWL_POWER_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_powertable_cmd*)* @iwl_power_build_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_power_build_cmd(%struct.iwl_priv* %0, %struct.iwl_powertable_cmd* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_powertable_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_powertable_cmd* %1, %struct.iwl_powertable_cmd** %4, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %22
  %25 = phi i64 [ %20, %22 ], [ 1, %23 ]
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %34 = load i64, i64* @IWL_POWER_INDEX_5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %32, %struct.iwl_powertable_cmd* %33, i64 %34, i32 %35)
  br label %120

37:                                               ; preds = %24
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %37
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %58 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %59 = load i64, i64* @IWL_POWER_INDEX_5, align 8
  %60 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %57, %struct.iwl_powertable_cmd* %58, i64 %59, i32 20)
  br label %119

61:                                               ; preds = %46, %37
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %63 = call i64 @iwl_tt_is_low_power_state(%struct.iwl_priv* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %67 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %69 = call i64 @iwl_tt_current_power_mode(%struct.iwl_priv* %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %66, %struct.iwl_powertable_cmd* %67, i64 %69, i32 %70)
  br label %118

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %77 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %78 = call i32 @iwl_power_sleep_cam_cmd(%struct.iwl_priv* %76, %struct.iwl_powertable_cmd* %77)
  br label %117

79:                                               ; preds = %72
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %81 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %87 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %88 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %86, %struct.iwl_powertable_cmd* %87, i64 %91, i32 %92)
  br label %116

94:                                               ; preds = %79
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %96 = load i64, i64* @IWL_POWER_INDEX_1, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %100 = load i64, i64* @IWL_POWER_NUM, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %104 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %106 = sub nsw i64 %105, 1
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %103, %struct.iwl_powertable_cmd* %104, i64 %106, i32 %107)
  br label %115

109:                                              ; preds = %98, %94
  %110 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %111 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %112 = load i64, i64* @IWL_POWER_INDEX_1, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %110, %struct.iwl_powertable_cmd* %111, i64 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %102
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %75
  br label %118

118:                                              ; preds = %117, %65
  br label %119

119:                                              ; preds = %118, %56
  br label %120

120:                                              ; preds = %119, %31
  ret void
}

declare dso_local i32 @iwl_static_sleep_cmd(%struct.iwl_priv*, %struct.iwl_powertable_cmd*, i64, i32) #1

declare dso_local i64 @iwl_tt_is_low_power_state(%struct.iwl_priv*) #1

declare dso_local i64 @iwl_tt_current_power_mode(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_power_sleep_cam_cmd(%struct.iwl_priv*, %struct.iwl_powertable_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
