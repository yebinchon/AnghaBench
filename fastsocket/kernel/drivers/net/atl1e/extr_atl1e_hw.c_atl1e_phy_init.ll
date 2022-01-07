; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { i32, i32, %struct.atl1e_adapter* }
%struct.atl1e_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@REG_GPHY_CTRL = common dso_local global i32 0, align 4
@GPHY_CTRL_DEFAULT = common dso_local global i32 0, align 4
@GPHY_CTRL_EXT_RESET = common dso_local global i32 0, align 4
@MII_DBG_ADDR = common dso_local global i32 0, align 4
@MII_DBG_DATA = common dso_local global i32 0, align 4
@MII_INT_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error enable PHY linkChange Interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Restarting Auto-Neg\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error Resetting the phy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_phy_init(%struct.atl1e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca %struct.atl1e_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %3, align 8
  %8 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %9 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %8, i32 0, i32 2
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %9, align 8
  store %struct.atl1e_adapter* %10, %struct.atl1e_adapter** %4, align 8
  %11 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %20 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %25 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %27 = call i32 @atl1e_restart_autoneg(%struct.atl1e_hw* %26)
  store i32 %27, i32* %2, align 4
  br label %160

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %160

29:                                               ; preds = %1
  %30 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %31 = load i32, i32* @REG_GPHY_CTRL, align 4
  %32 = load i32, i32* @GPHY_CTRL_DEFAULT, align 4
  %33 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %30, i32 %31, i32 %32)
  %34 = call i32 @msleep(i32 2)
  %35 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %36 = load i32, i32* @REG_GPHY_CTRL, align 4
  %37 = load i32, i32* @GPHY_CTRL_DEFAULT, align 4
  %38 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %35, i32 %36, i32 %39)
  %41 = call i32 @msleep(i32 2)
  %42 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %43 = load i32, i32* @MII_DBG_ADDR, align 4
  %44 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %42, i32 %43, i32 11)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %160

49:                                               ; preds = %29
  %50 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %51 = load i32, i32* @MII_DBG_DATA, align 4
  %52 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %50, i32 %51, i32 48128)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %160

57:                                               ; preds = %49
  %58 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %59 = load i32, i32* @MII_DBG_ADDR, align 4
  %60 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %58, i32 %59, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %160

65:                                               ; preds = %57
  store i32 751, i32* %7, align 4
  %66 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %67 = load i32, i32* @MII_DBG_DATA, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %160

74:                                               ; preds = %65
  %75 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %76 = load i32, i32* @MII_DBG_ADDR, align 4
  %77 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %75, i32 %76, i32 18)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %160

82:                                               ; preds = %74
  %83 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %84 = load i32, i32* @MII_DBG_DATA, align 4
  %85 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %83, i32 %84, i32 19460)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %160

90:                                               ; preds = %82
  %91 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %92 = load i32, i32* @MII_DBG_ADDR, align 4
  %93 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %91, i32 %92, i32 4)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %160

98:                                               ; preds = %90
  %99 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %100 = load i32, i32* @MII_DBG_DATA, align 4
  %101 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %99, i32 %100, i32 35771)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %160

106:                                              ; preds = %98
  %107 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %108 = load i32, i32* @MII_DBG_ADDR, align 4
  %109 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %107, i32 %108, i32 5)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %160

114:                                              ; preds = %106
  %115 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %116 = load i32, i32* @MII_DBG_DATA, align 4
  %117 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %115, i32 %116, i32 11334)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %160

122:                                              ; preds = %114
  %123 = call i32 @msleep(i32 1)
  %124 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %125 = load i32, i32* @MII_INT_CTRL, align 4
  %126 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %124, i32 %125, i32 3072)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %160

134:                                              ; preds = %122
  %135 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %136 = call i32 @atl1e_phy_setup_autoneg_adv(%struct.atl1e_hw* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %160

144:                                              ; preds = %134
  %145 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = call i32 @dev_dbg(i32* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %148 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %149 = call i32 @atl1e_phy_commit(%struct.atl1e_hw* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %160

157:                                              ; preds = %144
  %158 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %159 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %157, %152, %139, %129, %120, %112, %104, %96, %88, %80, %72, %63, %55, %47, %28, %23
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @atl1e_restart_autoneg(%struct.atl1e_hw*) #1

declare dso_local i32 @AT_WRITE_REGW(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1e_write_phy_reg(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @atl1e_phy_setup_autoneg_adv(%struct.atl1e_hw*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atl1e_phy_commit(%struct.atl1e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
