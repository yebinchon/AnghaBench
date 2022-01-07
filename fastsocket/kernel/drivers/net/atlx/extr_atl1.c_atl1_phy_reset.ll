; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i32, i64, %struct.atl1_adapter* }
%struct.atl1_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MEDIA_TYPE_AUTO_SENSOR = common dso_local global i32 0, align 4
@MEDIA_TYPE_1000M_FULL = common dso_local global i32 0, align 4
@MII_CR_RESET = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_FULL_DUPLEX = common dso_local global i32 0, align 4
@MII_CR_SPEED_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_10 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pcie phy link down\0A\00", align 1
@REG_MDIO_CTRL = common dso_local global i64 0, align 8
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"pcie link down at least 25ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl1_hw*)* @atl1_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1_phy_reset(%struct.atl1_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atl1_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %3, align 8
  %10 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %11 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %10, i32 0, i32 2
  %12 = load %struct.atl1_adapter*, %struct.atl1_adapter** %11, align 8
  %13 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  %15 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %16 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %15, i32 0, i32 2
  %17 = load %struct.atl1_adapter*, %struct.atl1_adapter** %16, align 8
  store %struct.atl1_adapter* %17, %struct.atl1_adapter** %5, align 8
  %18 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %19 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MEDIA_TYPE_AUTO_SENSOR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %25 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MEDIA_TYPE_1000M_FULL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %1
  %30 = load i32, i32* @MII_CR_RESET, align 4
  %31 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %7, align 4
  br label %58

33:                                               ; preds = %23
  %34 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %35 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %53 [
    i32 130, label %37
    i32 129, label %43
    i32 128, label %47
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %39 = load i32, i32* @MII_CR_SPEED_100, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MII_CR_RESET, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %7, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load i32, i32* @MII_CR_SPEED_100, align 4
  %45 = load i32, i32* @MII_CR_RESET, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %7, align 4
  br label %57

47:                                               ; preds = %33
  %48 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %49 = load i32, i32* @MII_CR_SPEED_10, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MII_CR_RESET, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %33
  %54 = load i32, i32* @MII_CR_SPEED_10, align 4
  %55 = load i32, i32* @MII_CR_RESET, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %47, %43, %37
  br label %58

58:                                               ; preds = %57, %29
  %59 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %60 = load i32, i32* @MII_BMCR, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @atl1_write_phy_reg(%struct.atl1_hw* %59, i32 %60, i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %58
  %66 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %67 = call i64 @netif_msg_hw(%struct.atl1_adapter* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %65
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 25
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = call i32 @msleep(i32 1)
  %79 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %80 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @REG_MDIO_CTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @ioread32(i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @MDIO_START, align 4
  %87 = load i32, i32* @MDIO_BUSY, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %77
  br label %96

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %74

96:                                               ; preds = %91, %74
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @MDIO_START, align 4
  %99 = load i32, i32* @MDIO_BUSY, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %105 = call i64 @netif_msg_hw(%struct.atl1_adapter* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i64, i64* %6, align 8
  store i64 %112, i64* %2, align 8
  br label %115

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %58
  store i64 0, i64* %2, align 8
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i64, i64* %2, align 8
  ret i64 %116
}

declare dso_local i64 @atl1_write_phy_reg(%struct.atl1_hw*, i32, i32) #1

declare dso_local i64 @netif_msg_hw(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
