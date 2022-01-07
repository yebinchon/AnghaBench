; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_op_switch_analog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_op_switch_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_PHY_HT_AFE_C1 = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C1_OVER = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C2 = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C2_OVER = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C3 = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C3_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_ht_op_switch_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_op_switch_analog(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = load i32, i32* @B43_PHY_HT_AFE_C1, align 4
  %10 = call i32 @b43_phy_write(%struct.b43_wldev* %8, i32 %9, i32 205)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = load i32, i32* @B43_PHY_HT_AFE_C1_OVER, align 4
  %13 = call i32 @b43_phy_write(%struct.b43_wldev* %11, i32 %12, i32 0)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = load i32, i32* @B43_PHY_HT_AFE_C2, align 4
  %16 = call i32 @b43_phy_write(%struct.b43_wldev* %14, i32 %15, i32 205)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = load i32, i32* @B43_PHY_HT_AFE_C2_OVER, align 4
  %19 = call i32 @b43_phy_write(%struct.b43_wldev* %17, i32 %18, i32 0)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_PHY_HT_AFE_C3, align 4
  %22 = call i32 @b43_phy_write(%struct.b43_wldev* %20, i32 %21, i32 205)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_PHY_HT_AFE_C3_OVER, align 4
  %25 = call i32 @b43_phy_write(%struct.b43_wldev* %23, i32 %24, i32 0)
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load i32, i32* @B43_PHY_HT_AFE_C1_OVER, align 4
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %27, i32 %28, i32 2047)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = load i32, i32* @B43_PHY_HT_AFE_C1, align 4
  %32 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %31, i32 253)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_PHY_HT_AFE_C2_OVER, align 4
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %33, i32 %34, i32 2047)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @B43_PHY_HT_AFE_C2, align 4
  %38 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 253)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* @B43_PHY_HT_AFE_C3_OVER, align 4
  %41 = call i32 @b43_phy_write(%struct.b43_wldev* %39, i32 %40, i32 2047)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @B43_PHY_HT_AFE_C3, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %42, i32 %43, i32 253)
  br label %45

45:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
