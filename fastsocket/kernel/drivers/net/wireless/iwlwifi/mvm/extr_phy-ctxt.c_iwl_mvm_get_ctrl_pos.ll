; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_get_ctrl_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_get_ctrl_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHY_VHT_CTRL_POS_4_BELOW = common dso_local global i32 0, align 4
@PHY_VHT_CTRL_POS_3_BELOW = common dso_local global i32 0, align 4
@PHY_VHT_CTRL_POS_2_BELOW = common dso_local global i32 0, align 4
@PHY_VHT_CTRL_POS_1_BELOW = common dso_local global i32 0, align 4
@PHY_VHT_CTRL_POS_1_ABOVE = common dso_local global i32 0, align 4
@PHY_VHT_CTRL_POS_2_ABOVE = common dso_local global i32 0, align 4
@PHY_VHT_CTRL_POS_3_ABOVE = common dso_local global i32 0, align 4
@PHY_VHT_CTRL_POS_4_ABOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid channel definition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_chan_def*)* @iwl_mvm_get_ctrl_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_ctrl_pos(%struct.cfg80211_chan_def* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %3, align 8
  %4 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %5 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %8, %11
  switch i32 %12, label %29 [
    i32 -70, label %13
    i32 -50, label %15
    i32 -30, label %17
    i32 -10, label %19
    i32 10, label %21
    i32 30, label %23
    i32 50, label %25
    i32 70, label %27
    i32 0, label %31
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @PHY_VHT_CTRL_POS_4_BELOW, align 4
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load i32, i32* @PHY_VHT_CTRL_POS_3_BELOW, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @PHY_VHT_CTRL_POS_2_BELOW, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load i32, i32* @PHY_VHT_CTRL_POS_1_BELOW, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* @PHY_VHT_CTRL_POS_1_ABOVE, align 4
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load i32, i32* @PHY_VHT_CTRL_POS_2_ABOVE, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @PHY_VHT_CTRL_POS_3_ABOVE, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @PHY_VHT_CTRL_POS_4_ABOVE, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %1
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %1, %29
  %32 = load i32, i32* @PHY_VHT_CTRL_POS_1_BELOW, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %27, %25, %23, %21, %19, %17, %15, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
