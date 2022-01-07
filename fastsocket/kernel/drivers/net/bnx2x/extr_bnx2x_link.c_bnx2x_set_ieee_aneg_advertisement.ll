; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_ieee_aneg_advertisement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_ieee_aneg_advertisement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_REG_BANK_COMBO_IEEE0 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_IEEEB1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_set_ieee_aneg_advertisement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_ieee_aneg_advertisement(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %14 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %15 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %12, %struct.bnx2x_phy* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %20 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %21 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV1, align 4
  %22 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %18, %struct.bnx2x_phy* %19, i32 %20, i32 %21, i32* %8)
  %23 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 3
  %29 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %35 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %36 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV1, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
