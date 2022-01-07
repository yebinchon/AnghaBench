; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_gmii_tx_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_gmii_tx_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x_phy*, %struct.bnx2x* }
%struct.bnx2x_phy = type { i32 }
%struct.bnx2x = type { i32 }

@INT_PHY = common dso_local global i64 0, align 8
@MDIO_REG_BANK_OVER_1G = common dso_local global i64 0, align 8
@MDIO_OVER_1G_LP_UP2 = common dso_local global i32 0, align 4
@MDIO_OVER_1G_LP_UP2_PREEMPHASIS_MASK = common dso_local global i64 0, align 8
@MDIO_OVER_1G_LP_UP2_PREEMPHASIS_SHIFT = common dso_local global i64 0, align 8
@MDIO_TX0_TX_DRIVER_PREEMPHASIS_SHIFT = common dso_local global i64 0, align 8
@MDIO_REG_BANK_TX0 = common dso_local global i64 0, align 8
@MDIO_REG_BANK_TX3 = common dso_local global i64 0, align 8
@MDIO_TX0_TX_DRIVER = common dso_local global i32 0, align 4
@MDIO_TX0_TX_DRIVER_PREEMPHASIS_MASK = common dso_local global i64 0, align 8
@MDIO_REG_BANK_TX1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*)* @bnx2x_set_gmii_tx_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_gmii_tx_driver(%struct.link_params* %0) #0 {
  %2 = alloca %struct.link_params*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %2, align 8
  %8 = load %struct.link_params*, %struct.link_params** %2, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %3, align 8
  %11 = load %struct.link_params*, %struct.link_params** %2, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %12, align 8
  %14 = load i64, i64* @INT_PHY, align 8
  %15 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %13, i64 %14
  store %struct.bnx2x_phy* %15, %struct.bnx2x_phy** %4, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %18 = load i64, i64* @MDIO_REG_BANK_OVER_1G, align 8
  %19 = load i32, i32* @MDIO_OVER_1G_LP_UP2, align 4
  %20 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %16, %struct.bnx2x_phy* %17, i64 %18, i32 %19, i64* %5)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @MDIO_OVER_1G_LP_UP2_PREEMPHASIS_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @MDIO_OVER_1G_LP_UP2_PREEMPHASIS_SHIFT, align 8
  %25 = ashr i64 %23, %24
  %26 = load i64, i64* @MDIO_TX0_TX_DRIVER_PREEMPHASIS_SHIFT, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %69

31:                                               ; preds = %1
  %32 = load i64, i64* @MDIO_REG_BANK_TX0, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %63, %31
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @MDIO_REG_BANK_TX3, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @MDIO_TX0_TX_DRIVER, align 4
  %42 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %38, %struct.bnx2x_phy* %39, i64 %40, i32 %41, i64* %6)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @MDIO_TX0_TX_DRIVER_PREEMPHASIS_MASK, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %37
  %49 = load i64, i64* @MDIO_TX0_TX_DRIVER_PREEMPHASIS_MASK, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %6, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %57 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @MDIO_TX0_TX_DRIVER, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %56, %struct.bnx2x_phy* %57, i64 %58, i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %48, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* @MDIO_REG_BANK_TX1, align 8
  %65 = load i64, i64* @MDIO_REG_BANK_TX0, align 8
  %66 = sub nsw i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %33

69:                                               ; preds = %30, %33
  ret void
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i64, i32, i64*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
