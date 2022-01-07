; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_6__, %struct.ar9170* }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ar9170 = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IEEE80211_CONF_CHANGE_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_SMPS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @carl9170_op_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  store %struct.ar9170* %10, %struct.ar9170** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %12 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IEEE80211_CONF_CHANGE_LISTEN_INTERVAL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %26 = call i32 @carl9170_ps_update(%struct.ar9170* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %109

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IEEE80211_CONF_CHANGE_SMPS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_10__* %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %48 = call i32 @carl9170_set_slot_time(%struct.ar9170* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %109

52:                                               ; preds = %42
  %53 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %54 = call i32 @carl9170_update_survey(%struct.ar9170* %53, i32 1, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %109

58:                                               ; preds = %52
  %59 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @carl9170_set_channel(%struct.ar9170* %59, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %109

70:                                               ; preds = %58
  %71 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %72 = call i32 @carl9170_update_survey(%struct.ar9170* %71, i32 0, i32 1)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %109

76:                                               ; preds = %70
  %77 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %78 = call i32 @carl9170_set_dyn_sifs_ack(%struct.ar9170* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %109

82:                                               ; preds = %76
  %83 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %84 = call i32 @carl9170_set_rts_cts_rate(%struct.ar9170* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %109

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %37
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %96 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %97 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @carl9170_set_mac_tpc(%struct.ar9170* %95, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %109

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %106, %87, %81, %75, %69, %57, %51, %29
  %110 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %111 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @carl9170_ps_update(%struct.ar9170*) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_10__*) #1

declare dso_local i32 @carl9170_set_slot_time(%struct.ar9170*) #1

declare dso_local i32 @carl9170_update_survey(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_set_channel(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_set_dyn_sifs_ack(%struct.ar9170*) #1

declare dso_local i32 @carl9170_set_rts_cts_rate(%struct.ar9170*) #1

declare dso_local i32 @carl9170_set_mac_tpc(%struct.ar9170*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
