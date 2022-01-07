; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_bphy_init_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_bphy_init_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@NPHY_TO_BPHY_OFF = common dso_local global i64 0, align 8
@BPHY_RSSI_LUT = common dso_local global i64 0, align 8
@BPHY_RSSI_LUT_END = common dso_local global i64 0, align 8
@BPHY_STEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_bphy_init_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_bphy_init_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i64 7711, i64* %4, align 8
  %5 = load i64, i64* @NPHY_TO_BPHY_OFF, align 8
  %6 = load i64, i64* @BPHY_RSSI_LUT, align 8
  %7 = add nsw i64 %5, %6
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @NPHY_TO_BPHY_OFF, align 8
  %11 = load i64, i64* @BPHY_RSSI_LUT_END, align 8
  %12 = add nsw i64 %10, %11
  %13 = icmp sle i64 %9, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @write_phy_reg(%struct.brcms_phy* %15, i64 %16, i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @NPHY_TO_BPHY_OFF, align 8
  %22 = add nsw i64 %21, 151
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i64 15935, i64* %4, align 8
  br label %28

25:                                               ; preds = %14
  %26 = load i64, i64* %4, align 8
  %27 = sub nsw i64 %26, 514
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %25, %24
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = load i64, i64* @NPHY_TO_BPHY_OFF, align 8
  %35 = load i64, i64* @BPHY_STEP, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @write_phy_reg(%struct.brcms_phy* %33, i64 %36, i32 1640)
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
