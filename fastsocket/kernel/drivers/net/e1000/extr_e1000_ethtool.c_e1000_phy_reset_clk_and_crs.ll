; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_phy_reset_clk_and_crs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_phy_reset_clk_and_crs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_phy_reset_clk_and_crs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_phy_reset_clk_and_crs(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %5, i32 0, i32 0
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %9 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %7, i32 %8, i32* %4)
  %10 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %19 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %17, i32 %18, i32* %4)
  %20 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
