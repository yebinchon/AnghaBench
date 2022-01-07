; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.p54_common* }
%struct.ieee80211_conf = type { i32 }
%struct.p54_common = type { i32, i32, %struct.TYPE_6__*, %struct.ieee80211_channel* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@P54_SCAN_EXIT = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @p54_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.p54_common*, align 8
  %7 = alloca %struct.ieee80211_conf*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  store %struct.p54_common* %11, %struct.p54_common** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  store %struct.ieee80211_conf* %13, %struct.ieee80211_conf** %7, align 8
  %14 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %15 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 2
  %26 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %27 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = call i32 @p54_wait_for_stats(%struct.ieee80211_hw* %34)
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %38 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %37, i32 0, i32 3
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %38, align 8
  store %struct.ieee80211_channel* %39, %struct.ieee80211_channel** %8, align 8
  %40 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %41 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %40, i32 0, i32 3
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %41, align 8
  %42 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %43 = load i32, i32* @P54_SCAN_EXIT, align 4
  %44 = call i32 @p54_scan(%struct.p54_common* %42, i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %49 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %50 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %49, i32 0, i32 3
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %50, align 8
  br label %103

51:                                               ; preds = %33
  %52 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %53 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %57, align 8
  %59 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %60 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %59, i32 0, i32 3
  store %struct.ieee80211_channel* %58, %struct.ieee80211_channel** %60, align 8
  %61 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %62 = call i32 @p54_reset_stats(%struct.p54_common* %61)
  %63 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %64 = call i32 @p54_fetch_statistics(%struct.p54_common* %63)
  %65 = call i32 @WARN_ON(i32 %64)
  br label %66

66:                                               ; preds = %51, %28
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = call i32 @p54_wait_for_stats(%struct.ieee80211_hw* %72)
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %76 = call i32 @p54_set_ps(%struct.p54_common* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %103

80:                                               ; preds = %71
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %82 = call i32 @p54_wait_for_stats(%struct.ieee80211_hw* %81)
  %83 = call i32 @WARN_ON(i32 %82)
  br label %84

84:                                               ; preds = %80, %66
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %91 = call i32 @p54_wait_for_stats(%struct.ieee80211_hw* %90)
  %92 = call i32 @WARN_ON(i32 %91)
  %93 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %94 = call i32 @p54_setup_mac(%struct.p54_common* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %103

98:                                               ; preds = %89
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %100 = call i32 @p54_wait_for_stats(%struct.ieee80211_hw* %99)
  %101 = call i32 @WARN_ON(i32 %100)
  br label %102

102:                                              ; preds = %98, %84
  br label %103

103:                                              ; preds = %102, %97, %79, %47
  %104 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %105 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @p54_wait_for_stats(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54_scan(%struct.p54_common*, i32, i32) #1

declare dso_local i32 @p54_reset_stats(%struct.p54_common*) #1

declare dso_local i32 @p54_fetch_statistics(%struct.p54_common*) #1

declare dso_local i32 @p54_set_ps(%struct.p54_common*) #1

declare dso_local i32 @p54_setup_mac(%struct.p54_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
