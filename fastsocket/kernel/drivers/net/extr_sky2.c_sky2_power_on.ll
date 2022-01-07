; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_power_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i32, i32 }

@B0_POWER_CTRL = common dso_local global i32 0, align 4
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_OFF = common dso_local global i32 0, align 4
@PC_VCC_ON = common dso_local global i32 0, align 4
@B2_Y2_CLK_CTRL = common dso_local global i32 0, align 4
@Y2_CLK_DIV_DIS = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@B2_Y2_CLK_GATE = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK2_DIS = common dso_local global i32 0, align 4
@SKY2_HW_ADV_POWER_CTL = common dso_local global i32 0, align 4
@PCI_DEV_REG3 = common dso_local global i32 0, align 4
@PCI_DEV_REG4 = common dso_local global i32 0, align 4
@P_ASPM_CONTROL_MSK = common dso_local global i32 0, align 4
@PCI_DEV_REG5 = common dso_local global i32 0, align 4
@P_CTL_TIM_VMAIN_AV_MSK = common dso_local global i32 0, align 4
@PCI_CFG_REG_1 = common dso_local global i32 0, align 4
@B2_GP_IO = common dso_local global i32 0, align 4
@GLB_GPIO_STAT_RACE_DIS = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@Y2_LED_STAT_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_power_on(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %4 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %5 = load i32, i32* @B0_POWER_CTRL, align 4
  %6 = load i32, i32* @PC_VAUX_ENA, align 4
  %7 = load i32, i32* @PC_VCC_ENA, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PC_VAUX_OFF, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PC_VCC_ON, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @sky2_write8(%struct.sky2_hw* %4, i32 %5, i32 %12)
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %15 = load i32, i32* @B2_Y2_CLK_CTRL, align 4
  %16 = load i32, i32* @Y2_CLK_DIV_DIS, align 4
  %17 = call i32 @sky2_write32(%struct.sky2_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %19 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %25 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %30 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %31 = load i32, i32* @Y2_PCI_CLK_LNK1_DIS, align 4
  %32 = load i32, i32* @Y2_COR_CLK_LNK1_DIS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @Y2_CLK_GAT_LNK1_DIS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @Y2_PCI_CLK_LNK2_DIS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @Y2_COR_CLK_LNK2_DIS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @Y2_CLK_GAT_LNK2_DIS, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @sky2_write8(%struct.sky2_hw* %29, i32 %30, i32 %41)
  br label %47

43:                                               ; preds = %23, %1
  %44 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %45 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %46 = call i32 @sky2_write8(%struct.sky2_hw* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %43, %28
  %48 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %49 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SKY2_HW_ADV_POWER_CTL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %47
  %55 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %56 = load i32, i32* @PCI_DEV_REG3, align 4
  %57 = call i32 @sky2_pci_write32(%struct.sky2_hw* %55, i32 %56, i32 0)
  %58 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %59 = load i32, i32* @PCI_DEV_REG4, align 4
  %60 = call i32 @sky2_pci_read32(%struct.sky2_hw* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @P_ASPM_CONTROL_MSK, align 4
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %65 = load i32, i32* @PCI_DEV_REG4, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @sky2_pci_write32(%struct.sky2_hw* %64, i32 %65, i32 %66)
  %68 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %69 = load i32, i32* @PCI_DEV_REG5, align 4
  %70 = call i32 @sky2_pci_read32(%struct.sky2_hw* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @P_CTL_TIM_VMAIN_AV_MSK, align 4
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %75 = load i32, i32* @PCI_DEV_REG5, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @sky2_pci_write32(%struct.sky2_hw* %74, i32 %75, i32 %76)
  %78 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %79 = load i32, i32* @PCI_CFG_REG_1, align 4
  %80 = call i32 @sky2_pci_write32(%struct.sky2_hw* %78, i32 %79, i32 0)
  %81 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %82 = load i32, i32* @B2_GP_IO, align 4
  %83 = call i32 @sky2_read32(%struct.sky2_hw* %81, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* @GLB_GPIO_STAT_RACE_DIS, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %88 = load i32, i32* @B2_GP_IO, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @sky2_write32(%struct.sky2_hw* %87, i32 %88, i32 %89)
  %91 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %92 = load i32, i32* @B2_GP_IO, align 4
  %93 = call i32 @sky2_read32(%struct.sky2_hw* %91, i32 %92)
  br label %94

94:                                               ; preds = %54, %47
  %95 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %96 = load i32, i32* @B0_CTST, align 4
  %97 = load i32, i32* @Y2_LED_STAT_ON, align 4
  %98 = call i32 @sky2_write16(%struct.sky2_hw* %95, i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
