; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_freq2bandrange_lpssn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_freq2bandrange_lpssn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WL_CHAN_FREQ_RANGE_2G = common dso_local global i32 0, align 4
@WL_CHAN_FREQ_RANGE_5GL = common dso_local global i32 0, align 4
@WL_CHAN_FREQ_RANGE_5GM = common dso_local global i32 0, align 4
@WL_CHAN_FREQ_RANGE_5GH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_chanspec_freq2bandrange_lpssn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 2500
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @WL_CHAN_FREQ_RANGE_2G, align 4
  store i32 %7, i32* %3, align 4
  br label %22

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %9, 5320
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @WL_CHAN_FREQ_RANGE_5GL, align 4
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 %14, 5700
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @WL_CHAN_FREQ_RANGE_5GM, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @WL_CHAN_FREQ_RANGE_5GH, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %16
  br label %21

21:                                               ; preds = %20, %11
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
