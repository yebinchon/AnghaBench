; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_clear_tx_power_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_clear_tx_power_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_PHY_LCN_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATAHI = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATALO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_lcn_clear_tx_power_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_clear_tx_power_offsets(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %6 = call i32 @b43_phy_write(%struct.b43_wldev* %4, i32 %5, i32 8000)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 30
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_PHY_LCN_TABLE_DATAHI, align 4
  %13 = call i32 @b43_phy_write(%struct.b43_wldev* %11, i32 %12, i32 0)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %16 = call i32 @b43_phy_write(%struct.b43_wldev* %14, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %23 = call i32 @b43_phy_write(%struct.b43_wldev* %21, i32 %22, i32 7296)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %34, %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B43_PHY_LCN_TABLE_DATAHI, align 4
  %30 = call i32 @b43_phy_write(%struct.b43_wldev* %28, i32 %29, i32 0)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %33 = call i32 @b43_phy_write(%struct.b43_wldev* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %24

37:                                               ; preds = %24
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
