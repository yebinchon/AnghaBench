; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_phy_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_phy_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { %struct.atl1e_adapter* }
%struct.atl1e_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MII_CR_RESET = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pcie linkdown at least for 25ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pcie linkup after %d ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_phy_commit(%struct.atl1e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca %struct.atl1e_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %3, align 8
  %10 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %11 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %10, i32 0, i32 0
  %12 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %11, align 8
  store %struct.atl1e_adapter* %12, %struct.atl1e_adapter** %4, align 8
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load i32, i32* @MII_CR_RESET, align 4
  %17 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %22 = load i32, i32* @MII_BMCR, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 25
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = call i32 @msleep(i32 1)
  %33 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %34 = load i32, i32* @REG_MDIO_CTRL, align 4
  %35 = call i32 @AT_READ_REG(%struct.atl1e_hw* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MDIO_START, align 4
  %38 = load i32, i32* @MDIO_BUSY, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %28

47:                                               ; preds = %42, %28
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MDIO_START, align 4
  %50 = load i32, i32* @MDIO_BUSY, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 0, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %47
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %1
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @atl1e_write_phy_reg(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
