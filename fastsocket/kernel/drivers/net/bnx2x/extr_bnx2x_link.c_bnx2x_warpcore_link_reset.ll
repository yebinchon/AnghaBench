; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_COMBO_IEEE0_MIICTRL = common dso_local global i32 0, align 4
@MDIO_WC_REG_IEEE0BLK_MIICNTL = common dso_local global i32 0, align 4
@MDIO_REG_BANK_AER_BLOCK = common dso_local global i32 0, align 4
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK0_XGXSCONTROL = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK1_LANECTRL2 = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK1_LANECTRL0 = common dso_local global i32 0, align 4
@FLAGS_WC_DUAL_MODE = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK1_LANECTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_warpcore_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_link_reset(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 0
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %13 = call i32 @bnx2x_sfp_e3_set_transmitter(%struct.link_params* %11, %struct.bnx2x_phy* %12, i32 0)
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = load %struct.link_params*, %struct.link_params** %4, align 8
  %16 = call i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x* %14, %struct.link_params* %15)
  %17 = load %struct.link_params*, %struct.link_params** %4, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %19 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %17, %struct.bnx2x_phy* %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %22 = call i32 @bnx2x_warpcore_reset_lane(%struct.bnx2x* %20, %struct.bnx2x_phy* %21, i32 1)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %25 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %26 = load i32, i32* @MDIO_WC_REG_COMBO_IEEE0_MIICTRL, align 4
  %27 = call i32 @bnx2x_cl45_read_and_write(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %25, i32 %26, i32 49151)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %30 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %31 = load i32, i32* @MDIO_WC_REG_IEEE0BLK_MIICNTL, align 4
  %32 = call i32 @bnx2x_cl45_read_and_write(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, i32 %30, i32 %31, i32 65534)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %35 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %36 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %37 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %39 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %40 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %41 = load i32, i32* @MDIO_WC_REG_XGXSBLK0_XGXSCONTROL, align 4
  %42 = call i32 @bnx2x_cl45_read_and_write(%struct.bnx2x* %38, %struct.bnx2x_phy* %39, i32 %40, i32 %41, i32 -17)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %45 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %46 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL2, align 4
  %47 = call i32 @bnx2x_cl45_read_and_write(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 %45, i32 %46, i32 65280)
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %49 = load %struct.link_params*, %struct.link_params** %4, align 8
  %50 = call i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %48, %struct.link_params* %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %52 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %53 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %54 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL0, align 4
  %55 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %51, %struct.bnx2x_phy* %52, i32 %53, i32 %54, i32* %6)
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 17, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %61 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FLAGS_WC_DUAL_MODE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %2
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 34, %67
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %2
  %72 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %73 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %74 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %75 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL0, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %72, %struct.bnx2x_phy* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %79 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %80 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %81 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL1, align 4
  %82 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %78, %struct.bnx2x_phy* %79, i32 %80, i32 %81, i32* %6)
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 1
  %85 = shl i32 771, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 1
  %91 = shl i32 257, %90
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FLAGS_WC_DUAL_MODE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %71
  %101 = load i32, i32* %7, align 4
  %102 = shl i32 %101, 1
  %103 = shl i32 3084, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = shl i32 %107, 1
  %109 = shl i32 1028, %108
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %100, %71
  %113 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %114 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %115 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %116 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL1, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %113, %struct.bnx2x_phy* %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.link_params*, %struct.link_params** %4, align 8
  %120 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %121 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %119, %struct.bnx2x_phy* %120)
  ret void
}

declare dso_local i32 @bnx2x_sfp_e3_set_transmitter(%struct.link_params*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_warpcore_reset_lane(%struct.bnx2x*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_cl45_read_and_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
