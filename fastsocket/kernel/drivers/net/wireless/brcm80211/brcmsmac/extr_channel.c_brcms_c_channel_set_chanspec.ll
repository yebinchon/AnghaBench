; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_set_chanspec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_set_chanspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_cm_info = type { %struct.brcms_c_info* }
%struct.brcms_c_info = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_reg_rule = type { i32 }
%struct.txpwr_limits = type { i32 }

@NL80211_RRF_NO_OFDM = common dso_local global i32 0, align 4
@GMODE_LEGACY_B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_channel_set_chanspec(%struct.brcms_cm_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_cm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcms_c_info*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.ieee80211_reg_rule*, align 8
  %10 = alloca %struct.txpwr_limits, align 4
  store %struct.brcms_cm_info* %0, %struct.brcms_cm_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %12 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %11, i32 0, i32 0
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %12, align 8
  store %struct.brcms_c_info* %13, %struct.brcms_c_info** %7, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  store %struct.ieee80211_channel* %22, %struct.ieee80211_channel** %8, align 8
  %23 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @brcms_c_channel_reg_limits(%struct.brcms_cm_info* %23, i32 %24, %struct.txpwr_limits* %10)
  %26 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @brcms_c_channel_min_txpower_limits_with_local_constraint(%struct.brcms_cm_info* %26, %struct.txpwr_limits* %10, i32 %27)
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %30 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.ieee80211_reg_rule* @freq_reg_info(i32 %31, i32 %34)
  store %struct.ieee80211_reg_rule* %35, %struct.ieee80211_reg_rule** %9, align 8
  %36 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %37 = call i32 @IS_ERR(%struct.ieee80211_reg_rule* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %3
  %40 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NL80211_RRF_NO_OFDM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %48 = load i32, i32* @GMODE_LEGACY_B, align 4
  %49 = call i32 @brcms_c_set_gmode(%struct.brcms_c_info* %47, i32 %48, i32 0)
  br label %58

50:                                               ; preds = %39, %3
  %51 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %52 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %53 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @brcms_c_set_gmode(%struct.brcms_c_info* %51, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %60 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @brcms_b_set_chanspec(i32 %61, i32 %62, i32 %71, %struct.txpwr_limits* %10)
  ret void
}

declare dso_local i32 @brcms_c_channel_reg_limits(%struct.brcms_cm_info*, i32, %struct.txpwr_limits*) #1

declare dso_local i32 @brcms_c_channel_min_txpower_limits_with_local_constraint(%struct.brcms_cm_info*, %struct.txpwr_limits*, i32) #1

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_reg_rule*) #1

declare dso_local i32 @brcms_c_set_gmode(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i32 @brcms_b_set_chanspec(i32, i32, i32, %struct.txpwr_limits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
