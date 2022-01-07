; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_afe_set_unset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_afe_set_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_PHY_LCN_AFE_CTL2 = common dso_local global i32 0, align 4
@B43_PHY_LCN_AFE_CTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_lcn_afe_set_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_afe_set_unset(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = load i32, i32* @B43_PHY_LCN_AFE_CTL2, align 4
  %7 = call i32 @b43_phy_read(%struct.b43_wldev* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load i32, i32* @B43_PHY_LCN_AFE_CTL1, align 4
  %10 = call i32 @b43_phy_read(%struct.b43_wldev* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_PHY_LCN_AFE_CTL2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, 1
  %15 = call i32 @b43_phy_write(%struct.b43_wldev* %11, i32 %12, i32 %14)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B43_PHY_LCN_AFE_CTL1, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, 1
  %20 = call i32 @b43_phy_write(%struct.b43_wldev* %16, i32 %17, i32 %19)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* @B43_PHY_LCN_AFE_CTL2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, -2
  %25 = call i32 @b43_phy_write(%struct.b43_wldev* %21, i32 %22, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i32, i32* @B43_PHY_LCN_AFE_CTL1, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, -2
  %30 = call i32 @b43_phy_write(%struct.b43_wldev* %26, i32 %27, i32 %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load i32, i32* @B43_PHY_LCN_AFE_CTL2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @b43_phy_write(%struct.b43_wldev* %31, i32 %32, i32 %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = load i32, i32* @B43_PHY_LCN_AFE_CTL1, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @b43_phy_write(%struct.b43_wldev* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
