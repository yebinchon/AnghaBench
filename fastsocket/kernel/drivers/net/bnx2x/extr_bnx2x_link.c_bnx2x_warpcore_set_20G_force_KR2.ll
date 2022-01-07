; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_20G_force_KR2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_20G_force_KR2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_REG_BANK_AER_BLOCK = common dso_local global i32 0, align 4
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK0_XGXSCONTROL = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_PMD_KR_CONTROL = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_WC_REG_CL73_USERB0_CTRL = common dso_local global i32 0, align 4
@MDIO_WC_REG_SERDESDIGITAL_MISC1 = common dso_local global i32 0, align 4
@MDIO_WC_REG_DIGITAL4_MISC3 = common dso_local global i32 0, align 4
@MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL = common dso_local global i32 0, align 4
@MDIO_WC_REG_CL72_USERB0_CL72_TX_FIR_TAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_warpcore_set_20G_force_KR2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_set_20G_force_KR2(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %7 = load %struct.link_params*, %struct.link_params** %4, align 8
  %8 = getelementptr inbounds %struct.link_params, %struct.link_params* %7, i32 0, i32 0
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %11 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %12 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %13 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %14 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %10, %struct.bnx2x_phy* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %16 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %17 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %18 = load i32, i32* @MDIO_WC_REG_XGXSBLK0_XGXSCONTROL, align 4
  %19 = call i32 @bnx2x_cl45_read_and_write(%struct.bnx2x* %15, %struct.bnx2x_phy* %16, i32 %17, i32 %18, i32 -8193)
  %20 = load %struct.link_params*, %struct.link_params** %4, align 8
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %22 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %20, %struct.bnx2x_phy* %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %25 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %26 = load i32, i32* @MDIO_WC_REG_PMD_KR_CONTROL, align 4
  %27 = call i32 @bnx2x_cl45_read_and_write(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %25, i32 %26, i32 -3)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %30 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %31 = load i32, i32* @MDIO_AN_REG_CTRL, align 4
  %32 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %35 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %36 = load i32, i32* @MDIO_WC_REG_CL73_USERB0_CTRL, align 4
  %37 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 %35, i32 %36, i32* %5)
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, -33
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 64
  store i32 %41, i32* %5, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %44 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %45 = load i32, i32* @MDIO_WC_REG_CL73_USERB0_CTRL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %42, %struct.bnx2x_phy* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %49 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %50 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %51 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_MISC1, align 4
  %52 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %48, %struct.bnx2x_phy* %49, i32 %50, i32 %51, i32 31)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %55 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %56 = load i32, i32* @MDIO_WC_REG_DIGITAL4_MISC3, align 4
  %57 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %53, %struct.bnx2x_phy* %54, i32 %55, i32 %56, i32 128)
  %58 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %59 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %60 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %61 = load i32, i32* @MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL, align 4
  %62 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %58, %struct.bnx2x_phy* %59, i32 %60, i32 %61, i32* %5)
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, -49153
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, 32768
  store i32 %66, i32* %5, align 4
  %67 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %68 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %69 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %70 = load i32, i32* @MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %67, %struct.bnx2x_phy* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %74 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %75 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %76 = load i32, i32* @MDIO_WC_REG_CL72_USERB0_CL72_TX_FIR_TAP, align 4
  %77 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %73, %struct.bnx2x_phy* %74, i32 %75, i32 %76, i32 33626)
  %78 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %79 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %80 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %81 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %82 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %78, %struct.bnx2x_phy* %79, i32 %80, i32 %81, i32 0)
  %83 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %84 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %85 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %86 = load i32, i32* @MDIO_WC_REG_XGXSBLK0_XGXSCONTROL, align 4
  %87 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %83, %struct.bnx2x_phy* %84, i32 %85, i32 %86, i32 8192)
  %88 = load %struct.link_params*, %struct.link_params** %4, align 8
  %89 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %90 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %88, %struct.bnx2x_phy* %89)
  ret void
}

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read_and_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
