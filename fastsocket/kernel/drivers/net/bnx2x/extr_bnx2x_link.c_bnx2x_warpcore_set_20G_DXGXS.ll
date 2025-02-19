; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_20G_DXGXS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_20G_DXGXS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_RX0_ANARXCONTROL1G = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX2_ANARXCONTROL1G = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW0 = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW1 = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW2 = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW3 = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW0_MASK = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW1_MASK = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW2_MASK = common dso_local global i64 0, align 8
@MDIO_WC_REG_RX66_SCW3_MASK = common dso_local global i64 0, align 8
@MDIO_WC_REG_SERDESDIGITAL_MISC1 = common dso_local global i64 0, align 8
@MDIO_WC_REG_DIGITAL4_MISC3 = common dso_local global i64 0, align 8
@MDIO_WC_REG_TX_FIR_TAP = common dso_local global i64 0, align 8
@MDIO_WC_REG_TX_FIR_TAP_ENABLE = common dso_local global i32 0, align 4
@MDIO_WC_REG_TX0_TX_DRIVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_phy*, i32)* @bnx2x_warpcore_set_20G_DXGXS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_set_20G_DXGXS(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %9 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %10 = load i64, i64* @MDIO_WC_REG_RX0_ANARXCONTROL1G, align 8
  %11 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %7, %struct.bnx2x_phy* %8, i32 %9, i64 %10, i32 144)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %14 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %15 = load i64, i64* @MDIO_WC_REG_RX2_ANARXCONTROL1G, align 8
  %16 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %12, %struct.bnx2x_phy* %13, i32 %14, i64 %15, i32 144)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %19 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %20 = load i64, i64* @MDIO_WC_REG_RX66_SCW0, align 8
  %21 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %17, %struct.bnx2x_phy* %18, i32 %19, i64 %20, i32 57456)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %24 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %25 = load i64, i64* @MDIO_WC_REG_RX66_SCW1, align 8
  %26 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %22, %struct.bnx2x_phy* %23, i32 %24, i64 %25, i32 49360)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %29 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %30 = load i64, i64* @MDIO_WC_REG_RX66_SCW2, align 8
  %31 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %27, %struct.bnx2x_phy* %28, i32 %29, i64 %30, i32 41136)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %34 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %35 = load i64, i64* @MDIO_WC_REG_RX66_SCW3, align 8
  %36 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i64 %35, i32 32912)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %39 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %40 = load i64, i64* @MDIO_WC_REG_RX66_SCW0_MASK, align 8
  %41 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i64 %40, i32 61680)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %44 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %45 = load i64, i64* @MDIO_WC_REG_RX66_SCW1_MASK, align 8
  %46 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %42, %struct.bnx2x_phy* %43, i32 %44, i64 %45, i32 61680)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %49 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %50 = load i64, i64* @MDIO_WC_REG_RX66_SCW2_MASK, align 8
  %51 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %47, %struct.bnx2x_phy* %48, i32 %49, i64 %50, i32 61680)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %54 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %55 = load i64, i64* @MDIO_WC_REG_RX66_SCW3_MASK, align 8
  %56 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %52, %struct.bnx2x_phy* %53, i32 %54, i64 %55, i32 61680)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %58 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %59 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %60 = load i64, i64* @MDIO_WC_REG_SERDESDIGITAL_MISC1, align 8
  %61 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %57, %struct.bnx2x_phy* %58, i32 %59, i64 %60, i32 24584)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %63 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %64 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %65 = load i64, i64* @MDIO_WC_REG_DIGITAL4_MISC3, align 8
  %66 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %62, %struct.bnx2x_phy* %63, i32 %64, i64 %65, i32 32904)
  %67 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %68 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %69 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %70 = load i64, i64* @MDIO_WC_REG_TX_FIR_TAP, align 8
  %71 = call i32 @WC_TX_FIR(i32 18, i32 45, i32 0)
  %72 = load i32, i32* @MDIO_WC_REG_TX_FIR_TAP_ENABLE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %67, %struct.bnx2x_phy* %68, i32 %69, i64 %70, i32 %73)
  %75 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %76 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %77 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %78 = load i64, i64* @MDIO_WC_REG_TX0_TX_DRIVER, align 8
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 16, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = call i32 @WC_TX_DRIVER(i32 2, i32 2, i32 2)
  %84 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %75, %struct.bnx2x_phy* %76, i32 %77, i64 %82, i32 %83)
  ret void
}

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i32) #1

declare dso_local i32 @WC_TX_FIR(i32, i32, i32) #1

declare dso_local i32 @WC_TX_DRIVER(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
