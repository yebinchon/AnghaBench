; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_power_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i32, i32 }

@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCI_DEV_REG1 = common dso_local global i32 0, align 4
@phy_power = common dso_local global i32* null, align 8
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@coma_mode = common dso_local global i32* null, align 8
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_FE = common dso_local global i64 0, align 8
@PHY_MARV_CTRL = common dso_local global i32 0, align 4
@PHY_CT_ANE = common dso_local global i32 0, align 4
@SKY2_HW_ADV_POWER_CTL = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_phy_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_phy_power_up(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %7 = load i32, i32* @B2_TST_CTRL1, align 4
  %8 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %9 = call i32 @sky2_write8(%struct.sky2_hw* %6, i32 %7, i32 %8)
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %11 = load i32, i32* @PCI_DEV_REG1, align 4
  %12 = call i32 @sky2_pci_read32(%struct.sky2_hw* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** @phy_power, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %22 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %28 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32*, i32** @coma_mode, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %26, %2
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %41 = load i32, i32* @PCI_DEV_REG1, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @sky2_pci_write32(%struct.sky2_hw* %40, i32 %41, i32 %42)
  %44 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %45 = load i32, i32* @B2_TST_CTRL1, align 4
  %46 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %47 = call i32 @sky2_write8(%struct.sky2_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %49 = load i32, i32* @PCI_DEV_REG1, align 4
  %50 = call i32 @sky2_pci_read32(%struct.sky2_hw* %48, i32 %49)
  %51 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %52 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CHIP_ID_YUKON_FE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PHY_MARV_CTRL, align 4
  %60 = load i32, i32* @PHY_CT_ANE, align 4
  %61 = call i32 @gm_phy_write(%struct.sky2_hw* %57, i32 %58, i32 %59, i32 %60)
  br label %77

62:                                               ; preds = %39
  %63 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %64 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SKY2_HW_ADV_POWER_CTL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @GPHY_CTRL, align 4
  %73 = call i32 @SK_REG(i32 %71, i32 %72)
  %74 = load i32, i32* @GPC_RST_CLR, align 4
  %75 = call i32 @sky2_write8(%struct.sky2_hw* %70, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %62
  br label %77

77:                                               ; preds = %76, %56
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
