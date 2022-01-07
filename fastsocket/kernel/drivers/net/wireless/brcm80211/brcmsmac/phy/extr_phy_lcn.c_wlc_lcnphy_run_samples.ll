; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_run_samples.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_run_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@RADIO_2064_REG112 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32, i32)* @wlc_lcnphy_run_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_run_samples(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %12 = call i32 @or_phy_reg(%struct.brcms_phy* %11, i32 1754, i32 32896)
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 1
  %16 = shl i32 %15, 0
  %17 = call i32 @mod_phy_reg(%struct.brcms_phy* %13, i32 1602, i32 127, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 65535
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 0
  %27 = call i32 @mod_phy_reg(%struct.brcms_phy* %24, i32 1600, i32 65535, i32 %26)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 0
  %31 = call i32 @mod_phy_reg(%struct.brcms_phy* %28, i32 1601, i32 65535, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %36 = call i32 @and_phy_reg(%struct.brcms_phy* %35, i32 1107, i32 -32769)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %38 = call i32 @or_phy_reg(%struct.brcms_phy* %37, i32 1107, i32 32768)
  br label %44

39:                                               ; preds = %23
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %41 = call i32 @write_phy_reg(%struct.brcms_phy* %40, i32 1599, i32 1)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %43 = call i32 @wlc_lcnphy_tx_pu(%struct.brcms_phy* %42, i32 1)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %46 = load i32, i32* @RADIO_2064_REG112, align 4
  %47 = call i32 @or_radio_reg(%struct.brcms_phy* %45, i32 %46, i32 6)
  ret void
}

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_pu(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
