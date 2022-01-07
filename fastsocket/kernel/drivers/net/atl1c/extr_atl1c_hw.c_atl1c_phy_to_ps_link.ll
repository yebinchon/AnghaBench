; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_phy_to_ps_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_phy_to_ps_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i32, i64 }
%struct.atl1c_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@LPA_10HALF = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"phy autoneg failed\0A\00", align 1
@AT_SUSPEND_LINK_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"get speed and duplex failed\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_phy_to_ps_link(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %13 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %14 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.atl1c_adapter*
  store %struct.atl1c_adapter* %16, %struct.atl1c_adapter** %3, align 8
  %17 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @SPEED_0, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @FULL_DUPLEX, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %24 = load i32, i32* @MII_BMSR, align 4
  %25 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %23, i32 %24, i32* %8)
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %27 = load i32, i32* @MII_BMSR, align 4
  %28 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %26, i32 %27, i32* %8)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BMSR_LSTATUS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %121

33:                                               ; preds = %1
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %35 = load i32, i32* @MII_LPA, align 4
  %36 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %34, i32 %35, i32* %9)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @LPA_10FULL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  store i32 %42, i32* %6, align 4
  br label %67

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LPA_10HALF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  store i32 %49, i32* %6, align 4
  br label %66

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @LPA_100HALF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  store i32 %56, i32* %6, align 4
  br label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @LPA_100FULL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %69 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %72 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %75 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %77 = call i64 @atl1c_restart_autoneg(%struct.atl1c_hw* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = call i32 @dev_dbg(i32* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %67
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %86 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %116, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @AT_SUSPEND_LINK_TIMEOUT, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = call i32 @mdelay(i32 100)
  %96 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %97 = load i32, i32* @MII_BMSR, align 4
  %98 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %96, i32 %97, i32* %8)
  %99 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %100 = load i32, i32* @MII_BMSR, align 4
  %101 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %99, i32 %100, i32* %8)
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @BMSR_LSTATUS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %94
  %107 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %108 = call i64 @atl1c_get_speed_and_duplex(%struct.atl1c_hw* %107, i32* %10, i32* %11)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 @dev_dbg(i32* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %106
  br label %119

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %90

119:                                              ; preds = %114, %90
  br label %120

120:                                              ; preds = %119, %83
  br label %124

121:                                              ; preds = %1
  %122 = load i32, i32* @SPEED_10, align 4
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* @HALF_DUPLEX, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %121, %120
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i64 @atl1c_restart_autoneg(%struct.atl1c_hw*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @atl1c_get_speed_and_duplex(%struct.atl1c_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
