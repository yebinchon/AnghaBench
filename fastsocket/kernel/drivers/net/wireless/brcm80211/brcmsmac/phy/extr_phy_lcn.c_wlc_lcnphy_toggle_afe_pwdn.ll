; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_toggle_afe_pwdn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_toggle_afe_pwdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_toggle_afe_pwdn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_toggle_afe_pwdn(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = call i32 @read_phy_reg(%struct.brcms_phy* %5, i32 1084)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = call i32 @read_phy_reg(%struct.brcms_phy* %7, i32 1083)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 1
  %12 = call i32 @write_phy_reg(%struct.brcms_phy* %9, i32 1084, i32 %11)
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, 1
  %16 = call i32 @write_phy_reg(%struct.brcms_phy* %13, i32 1083, i32 %15)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 65534
  %20 = call i32 @write_phy_reg(%struct.brcms_phy* %17, i32 1084, i32 %19)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 65534
  %24 = call i32 @write_phy_reg(%struct.brcms_phy* %21, i32 1083, i32 %23)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @write_phy_reg(%struct.brcms_phy* %25, i32 1084, i32 %26)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @write_phy_reg(%struct.brcms_phy* %28, i32 1083, i32 %29)
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
