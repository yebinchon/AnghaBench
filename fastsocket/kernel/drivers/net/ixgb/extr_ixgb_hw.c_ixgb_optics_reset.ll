; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_optics_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_optics_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i64 }

@ixgb_phy_type_txn17401 = common dso_local global i64 0, align 8
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@IXGB_PHY_ADDRESS = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_hw*)* @ixgb_optics_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_optics_reset(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %4 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ixgb_phy_type_txn17401, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %11 = load i32, i32* @MDIO_CTRL1, align 4
  %12 = load i32, i32* @IXGB_PHY_ADDRESS, align 4
  %13 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %14 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %15 = call i32 @ixgb_write_phy_reg(%struct.ixgb_hw* %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %17 = load i32, i32* @MDIO_CTRL1, align 4
  %18 = load i32, i32* @IXGB_PHY_ADDRESS, align 4
  %19 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %20 = call i32 @ixgb_read_phy_reg(%struct.ixgb_hw* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @ixgb_write_phy_reg(%struct.ixgb_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ixgb_read_phy_reg(%struct.ixgb_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
