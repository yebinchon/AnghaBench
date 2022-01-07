; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_power_saving.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_power_saving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i64, i64, i64 }
%struct.atl1c_adapter = type { i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@MAC_CTRL_SPEED_1000 = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED_10_100 = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@REG_GPHY_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_CLK_SEL_DIS = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED = common dso_local global i32 0, align 4
@MAC_CTRL_DUPLX = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_TX_EN = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@GPHY_CTRL_EXT_RESET = common dso_local global i32 0, align 4
@GPHY_CTRL_CLS = common dso_local global i32 0, align 4
@GPHY_CTRL_SEL_ANA_RST = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_EN = common dso_local global i32 0, align 4
@GPHY_CTRL_PHY_IDDQ = common dso_local global i32 0, align 4
@GPHY_CTRL_PWDOWN_HW = common dso_local global i32 0, align 4
@REG_WOL_CTRL = common dso_local global i32 0, align 4
@AT_WUFC_MAG = common dso_local global i32 0, align 4
@MAC_CTRL_BC_EN = common dso_local global i32 0, align 4
@WOL_MAGIC_EN = common dso_local global i32 0, align 4
@WOL_MAGIC_PME_EN = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i64 0, align 8
@L2CB_V11 = common dso_local global i64 0, align 8
@WOL_PATTERN_EN = common dso_local global i32 0, align 4
@WOL_PATTERN_PME_EN = common dso_local global i32 0, align 4
@AT_WUFC_LNKC = common dso_local global i32 0, align 4
@WOL_LINK_CHG_EN = common dso_local global i32 0, align 4
@WOL_LINK_CHG_PME_EN = common dso_local global i32 0, align 4
@MII_IER = common dso_local global i32 0, align 4
@IER_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: write phy MII_IER faild.\0A\00", align 1
@atl1c_driver_name = common dso_local global i32 0, align 4
@MII_ISR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: suspend MAC=%x,MASTER=%x,PHY=0x%x,WOL=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_power_saving(%struct.atl1c_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atl1c_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atl1c_adapter*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %15 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.atl1c_adapter*
  store %struct.atl1c_adapter* %17, %struct.atl1c_adapter** %6, align 8
  %18 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %18, i32 0, i32 2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPEED_1000, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @MAC_CTRL_SPEED_1000, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @MAC_CTRL_SPEED_10_100, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %12, align 4
  %32 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %33 = load i32, i32* @REG_MASTER_CTRL, align 4
  %34 = call i32 @AT_READ_REG(%struct.atl1c_hw* %32, i32 %33, i32* %8)
  %35 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %36 = load i32, i32* @REG_MAC_CTRL, align 4
  %37 = call i32 @AT_READ_REG(%struct.atl1c_hw* %35, i32 %36, i32* %9)
  %38 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %39 = load i32, i32* @REG_GPHY_CTRL, align 4
  %40 = call i32 @AT_READ_REG(%struct.atl1c_hw* %38, i32 %39, i32* %10)
  %41 = load i32, i32* @MASTER_CTRL_CLK_SEL_DIS, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAC_CTRL_SPEED, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @FIELD_SETX(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %50 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MAC_CTRL_TX_EN, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FULL_DUPLEX, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %30
  %63 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %30
  %67 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %68 = load i32, i32* @GPHY_CTRL_CLS, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @GPHY_CTRL_SEL_ANA_RST, align 4
  %74 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %66
  %83 = load i32, i32* @MASTER_CTRL_CLK_SEL_DIS, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @GPHY_CTRL_PHY_IDDQ, align 4
  %87 = load i32, i32* @GPHY_CTRL_PWDOWN_HW, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %92 = load i32, i32* @REG_MASTER_CTRL, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %91, i32 %92, i32 %93)
  %95 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %96 = load i32, i32* @REG_MAC_CTRL, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %95, i32 %96, i32 %97)
  %99 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %100 = load i32, i32* @REG_GPHY_CTRL, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %104 = load i32, i32* @REG_WOL_CTRL, align 4
  %105 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %103, i32 %104, i32 0)
  %106 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %107 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  store i32 0, i32* %3, align 4
  br label %195

108:                                              ; preds = %66
  %109 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @AT_WUFC_MAG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %108
  %117 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %118 = load i32, i32* @MAC_CTRL_BC_EN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @WOL_MAGIC_EN, align 4
  %123 = load i32, i32* @WOL_MAGIC_PME_EN, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %11, align 4
  %127 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %128 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @athr_l2c_b, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %116
  %133 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %134 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @L2CB_V11, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32, i32* @WOL_PATTERN_EN, align 4
  %140 = load i32, i32* @WOL_PATTERN_PME_EN, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %138, %132, %116
  br label %145

145:                                              ; preds = %144, %108
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @AT_WUFC_LNKC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = load i32, i32* @WOL_LINK_CHG_EN, align 4
  %152 = load i32, i32* @WOL_LINK_CHG_PME_EN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %11, align 4
  %156 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %157 = load i32, i32* @MII_IER, align 4
  %158 = load i32, i32* @IER_LINK_UP, align 4
  %159 = call i64 @atl1c_write_phy_reg(%struct.atl1c_hw* %156, i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %150
  %162 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %162, i32 0, i32 0
  %164 = load i32, i32* @atl1c_driver_name, align 4
  %165 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %161, %150
  br label %167

167:                                              ; preds = %166, %145
  %168 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %169 = load i32, i32* @MII_ISR, align 4
  %170 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %168, i32 %169, i32* %13)
  %171 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 0
  %173 = load i32, i32* @atl1c_driver_name, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %172, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %180 = load i32, i32* @REG_MASTER_CTRL, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %179, i32 %180, i32 %181)
  %183 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %184 = load i32, i32* @REG_MAC_CTRL, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %183, i32 %184, i32 %185)
  %187 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %188 = load i32, i32* @REG_GPHY_CTRL, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %187, i32 %188, i32 %189)
  %191 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %192 = load i32, i32* @REG_WOL_CTRL, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %191, i32 %192, i32 %193)
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %167, %82
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @FIELD_SETX(i32, i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i64 @atl1c_write_phy_reg(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
