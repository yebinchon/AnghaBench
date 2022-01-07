; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_power_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_power_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i32, i32 }

@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@B2_Y2_CLK_GATE = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK2_DIS = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@Y2_VAUX_AVAIL = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@B0_POWER_CTRL = common dso_local global i32 0, align 4
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_ON = common dso_local global i32 0, align 4
@PC_VCC_OFF = common dso_local global i32 0, align 4
@Y2_LED_STAT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_power_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_power_aux(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %3 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %4 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %10 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %15 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %16 = call i32 @sky2_write8(%struct.sky2_hw* %14, i32 %15, i32 0)
  br label %32

17:                                               ; preds = %8, %1
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %19 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %20 = load i32, i32* @Y2_PCI_CLK_LNK1_DIS, align 4
  %21 = load i32, i32* @Y2_COR_CLK_LNK1_DIS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @Y2_CLK_GAT_LNK1_DIS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @Y2_PCI_CLK_LNK2_DIS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @Y2_COR_CLK_LNK2_DIS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @Y2_CLK_GAT_LNK2_DIS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @sky2_write8(%struct.sky2_hw* %18, i32 %19, i32 %30)
  br label %32

32:                                               ; preds = %17, %13
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %34 = load i32, i32* @B0_CTST, align 4
  %35 = call i32 @sky2_read32(%struct.sky2_hw* %33, i32 %34)
  %36 = load i32, i32* @Y2_VAUX_AVAIL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %41 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PCI_D3cold, align 4
  %44 = call i64 @pci_pme_capable(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %48 = load i32, i32* @B0_POWER_CTRL, align 4
  %49 = load i32, i32* @PC_VAUX_ENA, align 4
  %50 = load i32, i32* @PC_VCC_ENA, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PC_VAUX_ON, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PC_VCC_OFF, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @sky2_write8(%struct.sky2_hw* %47, i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %46, %39, %32
  %58 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %59 = load i32, i32* @B0_CTST, align 4
  %60 = load i32, i32* @Y2_LED_STAT_OFF, align 4
  %61 = call i32 @sky2_write16(%struct.sky2_hw* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i64 @pci_pme_capable(i32, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
