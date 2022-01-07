; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32, i32, i32, i32, i8, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@B0_CTST = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@CS_RST_CLR = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@B2_TST_CTRL2 = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_ERROR_BITS = common dso_local global i32 0, align 4
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@CS_MRST_CLR = common dso_local global i32 0, align 4
@CS_CLK_RUN_HOT = common dso_local global i32 0, align 4
@CS_CLK_RUN_RST = common dso_local global i32 0, align 4
@CS_CLK_RUN_ENA = common dso_local global i32 0, align 4
@B2_CHIP_ID = common dso_local global i32 0, align 4
@B2_E_1 = common dso_local global i32 0, align 4
@B2_PMD_TYP = common dso_local global i32 0, align 4
@PHY_ADDR_XMAC = common dso_local global i32 0, align 4
@PHY_ADDR_BCOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unsupported phy type 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SK_PHY_MARV_COPPER = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported chip type 0x%x\0A\00", align 1
@B2_MAC_CFG = common dso_local global i32 0, align 4
@CFG_SNG_MAC = common dso_local global i8 0, align 1
@CFG_CHIP_R_MSK = common dso_local global i8 0, align 1
@B2_E_0 = common dso_local global i32 0, align 4
@IS_HW_ERR = common dso_local global i32 0, align 4
@IS_EXT_REG = common dso_local global i32 0, align 4
@B0_POWER_CTRL = common dso_local global i32 0, align 4
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_OFF = common dso_local global i32 0, align 4
@PC_VCC_ON = common dso_local global i32 0, align 4
@B0_ISRC = common dso_local global i32 0, align 4
@B0_HWE_ISRC = common dso_local global i32 0, align 4
@IS_IRQ_SENSOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"stuck hardware sensor bit\0A\00", align 1
@PCI_DEV_REG1 = common dso_local global i32 0, align 4
@PCI_PHY_COMA = common dso_local global i32 0, align 4
@GMAC_LINK_CTRL = common dso_local global i32 0, align 4
@GMLC_RST_SET = common dso_local global i32 0, align 4
@GMLC_RST_CLR = common dso_local global i32 0, align 4
@B2_TI_CTRL = common dso_local global i32 0, align 4
@TIM_STOP = common dso_local global i32 0, align 4
@TIM_CLR_IRQ = common dso_local global i32 0, align 4
@B0_LED = common dso_local global i32 0, align 4
@LED_STAT_ON = common dso_local global i32 0, align 4
@TXA_CTRL = common dso_local global i32 0, align 4
@TXA_ENA_ARB = common dso_local global i32 0, align 4
@B3_RI_CTRL = common dso_local global i32 0, align 4
@RI_RST_CLR = common dso_local global i32 0, align 4
@B3_RI_WTO_R1 = common dso_local global i32 0, align 4
@SK_RI_TO_53 = common dso_local global i32 0, align 4
@B3_RI_WTO_XA1 = common dso_local global i32 0, align 4
@B3_RI_WTO_XS1 = common dso_local global i32 0, align 4
@B3_RI_RTO_R1 = common dso_local global i32 0, align 4
@B3_RI_RTO_XA1 = common dso_local global i32 0, align 4
@B3_RI_RTO_XS1 = common dso_local global i32 0, align 4
@B3_RI_WTO_R2 = common dso_local global i32 0, align 4
@B3_RI_WTO_XA2 = common dso_local global i32 0, align 4
@B3_RI_WTO_XS2 = common dso_local global i32 0, align 4
@B3_RI_RTO_R2 = common dso_local global i32 0, align 4
@B3_RI_RTO_XA2 = common dso_local global i32 0, align 4
@B3_RI_RTO_XS2 = common dso_local global i32 0, align 4
@B0_HWE_IMSK = common dso_local global i32 0, align 4
@IS_ERR_MSK = common dso_local global i32 0, align 4
@B2_IRQM_MSK = common dso_local global i32 0, align 4
@IS_XA1_F = common dso_local global i32 0, align 4
@IS_XA2_F = common dso_local global i32 0, align 4
@B2_IRQM_INI = common dso_local global i32 0, align 4
@B2_IRQM_CTRL = common dso_local global i32 0, align 4
@TIM_START = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*)* @skge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_reset(%struct.skge_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  %11 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %12 = load i32, i32* @B0_CTST, align 4
  %13 = call i32 @skge_read16(%struct.skge_hw* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %15 = load i32, i32* @B0_CTST, align 4
  %16 = load i32, i32* @CS_RST_SET, align 4
  %17 = call i32 @skge_write8(%struct.skge_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %19 = load i32, i32* @B0_CTST, align 4
  %20 = load i32, i32* @CS_RST_CLR, align 4
  %21 = call i32 @skge_write8(%struct.skge_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %23 = load i32, i32* @B2_TST_CTRL1, align 4
  %24 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %25 = call i32 @skge_write8(%struct.skge_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %27 = load i32, i32* @B2_TST_CTRL2, align 4
  %28 = call i32 @skge_write8(%struct.skge_hw* %26, i32 %27, i32 0)
  %29 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %30 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %29, i32 0, i32 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* @PCI_STATUS, align 4
  %33 = call i32 @pci_read_config_word(%struct.TYPE_5__* %31, i32 %32, i32* %6)
  %34 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %35 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %34, i32 0, i32 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* @PCI_STATUS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PCI_STATUS_ERROR_BITS, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @pci_write_config_word(%struct.TYPE_5__* %36, i32 %37, i32 %40)
  %42 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %43 = load i32, i32* @B2_TST_CTRL1, align 4
  %44 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %45 = call i32 @skge_write8(%struct.skge_hw* %42, i32 %43, i32 %44)
  %46 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %47 = load i32, i32* @B0_CTST, align 4
  %48 = load i32, i32* @CS_MRST_CLR, align 4
  %49 = call i32 @skge_write8(%struct.skge_hw* %46, i32 %47, i32 %48)
  %50 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %51 = load i32, i32* @B0_CTST, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @CS_CLK_RUN_HOT, align 4
  %54 = load i32, i32* @CS_CLK_RUN_RST, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CS_CLK_RUN_ENA, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = call i32 @skge_write16(%struct.skge_hw* %50, i32 %51, i32 %58)
  %60 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %61 = load i32, i32* @B2_CHIP_ID, align 4
  %62 = call i32 @skge_read8(%struct.skge_hw* %60, i32 %61)
  %63 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %64 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %66 = load i32, i32* @B2_E_1, align 4
  %67 = call i32 @skge_read8(%struct.skge_hw* %65, i32 %66)
  %68 = and i32 %67, 15
  %69 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %70 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %72 = load i32, i32* @B2_PMD_TYP, align 4
  %73 = call i32 @skge_read8(%struct.skge_hw* %71, i32 %72)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %9, align 1
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 84
  br i1 %77, label %82, label %78

78:                                               ; preds = %1
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 49
  br label %82

82:                                               ; preds = %78, %1
  %83 = phi i1 [ true, %1 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  %85 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %86 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %88 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %131 [
    i32 133, label %90
    i32 132, label %114
    i32 131, label %114
    i32 130, label %114
  ]

90:                                               ; preds = %82
  %91 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %92 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %102 [
    i32 128, label %94
    i32 129, label %98
  ]

94:                                               ; preds = %90
  %95 = load i32, i32* @PHY_ADDR_XMAC, align 4
  %96 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %97 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 8
  br label %113

98:                                               ; preds = %90
  %99 = load i32, i32* @PHY_ADDR_BCOM, align 4
  %100 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %101 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 8
  br label %113

102:                                              ; preds = %90
  %103 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %104 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %103, i32 0, i32 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %108 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %445

113:                                              ; preds = %98, %94
  br label %142

114:                                              ; preds = %82, %82, %82
  %115 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %116 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SK_PHY_MARV_COPPER, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i8, i8* %9, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 83
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %126 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %120, %114
  %128 = load i32, i32* @PHY_ADDR_MARV, align 4
  %129 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %130 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 8
  br label %142

131:                                              ; preds = %82
  %132 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %133 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %132, i32 0, i32 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %137 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EOPNOTSUPP, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %445

142:                                              ; preds = %127, %113
  %143 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %144 = load i32, i32* @B2_MAC_CFG, align 4
  %145 = call i32 @skge_read8(%struct.skge_hw* %143, i32 %144)
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %8, align 1
  %147 = load i8, i8* %8, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @CFG_SNG_MAC, align 1
  %150 = sext i8 %149 to i32
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 2
  %155 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %156 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i8, i8* %8, align 1
  %158 = sext i8 %157 to i32
  %159 = load i8, i8* @CFG_CHIP_R_MSK, align 1
  %160 = sext i8 %159 to i32
  %161 = and i32 %158, %160
  %162 = ashr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %165 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %164, i32 0, i32 4
  store i8 %163, i8* %165, align 8
  %166 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %167 = load i32, i32* @B2_E_0, align 4
  %168 = call i32 @skge_read8(%struct.skge_hw* %166, i32 %167)
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %7, align 1
  %170 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %171 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 133
  br i1 %173, label %174, label %190

174:                                              ; preds = %142
  %175 = load i8, i8* %7, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %180 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %179, i32 0, i32 5
  store i32 1048576, i32* %180, align 4
  %181 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %182 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %181, i32 0, i32 6
  store i32 524288, i32* %182, align 8
  br label %189

183:                                              ; preds = %174
  %184 = load i8, i8* %7, align 1
  %185 = sext i8 %184 to i32
  %186 = mul nsw i32 %185, 512
  %187 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %188 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %187, i32 0, i32 5
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %183, %178
  br label %204

190:                                              ; preds = %142
  %191 = load i8, i8* %7, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %196 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %195, i32 0, i32 5
  store i32 131072, i32* %196, align 4
  br label %203

197:                                              ; preds = %190
  %198 = load i8, i8* %7, align 1
  %199 = sext i8 %198 to i32
  %200 = mul nsw i32 %199, 4096
  %201 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %202 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %197, %194
  br label %204

204:                                              ; preds = %203, %189
  %205 = load i32, i32* @IS_HW_ERR, align 4
  %206 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %207 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %209 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 133
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %214 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 128
  br i1 %216, label %223, label %217

217:                                              ; preds = %212, %204
  %218 = load i32, i32* @IS_EXT_REG, align 4
  %219 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %220 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %212
  %224 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %225 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 133
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %230 = call i32 @genesis_init(%struct.skge_hw* %229)
  br label %314

231:                                              ; preds = %223
  %232 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %233 = load i32, i32* @B0_POWER_CTRL, align 4
  %234 = load i32, i32* @PC_VAUX_ENA, align 4
  %235 = load i32, i32* @PC_VCC_ENA, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @PC_VAUX_OFF, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @PC_VCC_ON, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @skge_write8(%struct.skge_hw* %232, i32 %233, i32 %240)
  %242 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %243 = load i32, i32* @B0_ISRC, align 4
  %244 = call i32 @skge_read32(%struct.skge_hw* %242, i32 %243)
  %245 = load i32, i32* @IS_HW_ERR, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %231
  %249 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %250 = load i32, i32* @B0_HWE_ISRC, align 4
  %251 = call i32 @skge_read32(%struct.skge_hw* %249, i32 %250)
  %252 = load i32, i32* @IS_IRQ_SENSOR, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %248
  %256 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %257 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %256, i32 0, i32 8
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = call i32 @dev_warn(i32* %259, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %261 = load i32, i32* @IS_HW_ERR, align 4
  %262 = xor i32 %261, -1
  %263 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %264 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, %262
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %255, %248, %231
  %268 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %269 = load i32, i32* @B2_TST_CTRL1, align 4
  %270 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %271 = call i32 @skge_write8(%struct.skge_hw* %268, i32 %269, i32 %270)
  %272 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %273 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %272, i32 0, i32 8
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  %275 = load i32, i32* @PCI_DEV_REG1, align 4
  %276 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %274, i32 %275, i32* %4)
  %277 = load i32, i32* @PCI_PHY_COMA, align 4
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %4, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %4, align 4
  %281 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %282 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %281, i32 0, i32 8
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %282, align 8
  %284 = load i32, i32* @PCI_DEV_REG1, align 4
  %285 = load i32, i32* %4, align 4
  %286 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %283, i32 %284, i32 %285)
  %287 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %288 = load i32, i32* @B2_TST_CTRL1, align 4
  %289 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %290 = call i32 @skge_write8(%struct.skge_hw* %287, i32 %288, i32 %289)
  store i32 0, i32* %10, align 4
  br label %291

291:                                              ; preds = %310, %267
  %292 = load i32, i32* %10, align 4
  %293 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %294 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %313

297:                                              ; preds = %291
  %298 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %301 = call i32 @SK_REG(i32 %299, i32 %300)
  %302 = load i32, i32* @GMLC_RST_SET, align 4
  %303 = call i32 @skge_write16(%struct.skge_hw* %298, i32 %301, i32 %302)
  %304 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %307 = call i32 @SK_REG(i32 %305, i32 %306)
  %308 = load i32, i32* @GMLC_RST_CLR, align 4
  %309 = call i32 @skge_write16(%struct.skge_hw* %304, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %297
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %10, align 4
  br label %291

313:                                              ; preds = %291
  br label %314

314:                                              ; preds = %313, %228
  %315 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %316 = load i32, i32* @B2_TI_CTRL, align 4
  %317 = load i32, i32* @TIM_STOP, align 4
  %318 = call i32 @skge_write8(%struct.skge_hw* %315, i32 %316, i32 %317)
  %319 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %320 = load i32, i32* @B2_TI_CTRL, align 4
  %321 = load i32, i32* @TIM_CLR_IRQ, align 4
  %322 = call i32 @skge_write8(%struct.skge_hw* %319, i32 %320, i32 %321)
  %323 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %324 = load i32, i32* @B0_LED, align 4
  %325 = load i32, i32* @LED_STAT_ON, align 4
  %326 = call i32 @skge_write8(%struct.skge_hw* %323, i32 %324, i32 %325)
  store i32 0, i32* %10, align 4
  br label %327

327:                                              ; preds = %340, %314
  %328 = load i32, i32* %10, align 4
  %329 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %330 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = icmp slt i32 %328, %331
  br i1 %332, label %333, label %343

333:                                              ; preds = %327
  %334 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %335 = load i32, i32* %10, align 4
  %336 = load i32, i32* @TXA_CTRL, align 4
  %337 = call i32 @SK_REG(i32 %335, i32 %336)
  %338 = load i32, i32* @TXA_ENA_ARB, align 4
  %339 = call i32 @skge_write8(%struct.skge_hw* %334, i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %333
  %341 = load i32, i32* %10, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %10, align 4
  br label %327

343:                                              ; preds = %327
  %344 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %345 = load i32, i32* @B3_RI_CTRL, align 4
  %346 = load i32, i32* @RI_RST_CLR, align 4
  %347 = call i32 @skge_write16(%struct.skge_hw* %344, i32 %345, i32 %346)
  %348 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %349 = load i32, i32* @B3_RI_WTO_R1, align 4
  %350 = load i32, i32* @SK_RI_TO_53, align 4
  %351 = call i32 @skge_write8(%struct.skge_hw* %348, i32 %349, i32 %350)
  %352 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %353 = load i32, i32* @B3_RI_WTO_XA1, align 4
  %354 = load i32, i32* @SK_RI_TO_53, align 4
  %355 = call i32 @skge_write8(%struct.skge_hw* %352, i32 %353, i32 %354)
  %356 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %357 = load i32, i32* @B3_RI_WTO_XS1, align 4
  %358 = load i32, i32* @SK_RI_TO_53, align 4
  %359 = call i32 @skge_write8(%struct.skge_hw* %356, i32 %357, i32 %358)
  %360 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %361 = load i32, i32* @B3_RI_RTO_R1, align 4
  %362 = load i32, i32* @SK_RI_TO_53, align 4
  %363 = call i32 @skge_write8(%struct.skge_hw* %360, i32 %361, i32 %362)
  %364 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %365 = load i32, i32* @B3_RI_RTO_XA1, align 4
  %366 = load i32, i32* @SK_RI_TO_53, align 4
  %367 = call i32 @skge_write8(%struct.skge_hw* %364, i32 %365, i32 %366)
  %368 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %369 = load i32, i32* @B3_RI_RTO_XS1, align 4
  %370 = load i32, i32* @SK_RI_TO_53, align 4
  %371 = call i32 @skge_write8(%struct.skge_hw* %368, i32 %369, i32 %370)
  %372 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %373 = load i32, i32* @B3_RI_WTO_R2, align 4
  %374 = load i32, i32* @SK_RI_TO_53, align 4
  %375 = call i32 @skge_write8(%struct.skge_hw* %372, i32 %373, i32 %374)
  %376 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %377 = load i32, i32* @B3_RI_WTO_XA2, align 4
  %378 = load i32, i32* @SK_RI_TO_53, align 4
  %379 = call i32 @skge_write8(%struct.skge_hw* %376, i32 %377, i32 %378)
  %380 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %381 = load i32, i32* @B3_RI_WTO_XS2, align 4
  %382 = load i32, i32* @SK_RI_TO_53, align 4
  %383 = call i32 @skge_write8(%struct.skge_hw* %380, i32 %381, i32 %382)
  %384 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %385 = load i32, i32* @B3_RI_RTO_R2, align 4
  %386 = load i32, i32* @SK_RI_TO_53, align 4
  %387 = call i32 @skge_write8(%struct.skge_hw* %384, i32 %385, i32 %386)
  %388 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %389 = load i32, i32* @B3_RI_RTO_XA2, align 4
  %390 = load i32, i32* @SK_RI_TO_53, align 4
  %391 = call i32 @skge_write8(%struct.skge_hw* %388, i32 %389, i32 %390)
  %392 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %393 = load i32, i32* @B3_RI_RTO_XS2, align 4
  %394 = load i32, i32* @SK_RI_TO_53, align 4
  %395 = call i32 @skge_write8(%struct.skge_hw* %392, i32 %393, i32 %394)
  %396 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %397 = load i32, i32* @B0_HWE_IMSK, align 4
  %398 = load i32, i32* @IS_ERR_MSK, align 4
  %399 = call i32 @skge_write32(%struct.skge_hw* %396, i32 %397, i32 %398)
  %400 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %401 = load i32, i32* @B2_IRQM_MSK, align 4
  %402 = load i32, i32* @IS_XA1_F, align 4
  %403 = load i32, i32* @IS_XA2_F, align 4
  %404 = or i32 %402, %403
  %405 = call i32 @skge_write32(%struct.skge_hw* %400, i32 %401, i32 %404)
  %406 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %407 = load i32, i32* @B2_IRQM_INI, align 4
  %408 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %409 = call i32 @skge_usecs2clk(%struct.skge_hw* %408, i32 100)
  %410 = call i32 @skge_write32(%struct.skge_hw* %406, i32 %407, i32 %409)
  %411 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %412 = load i32, i32* @B2_IRQM_CTRL, align 4
  %413 = load i32, i32* @TIM_START, align 4
  %414 = call i32 @skge_write32(%struct.skge_hw* %411, i32 %412, i32 %413)
  %415 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %416 = load i32, i32* @B0_IMSK, align 4
  %417 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %418 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @skge_write32(%struct.skge_hw* %415, i32 %416, i32 %419)
  store i32 0, i32* %10, align 4
  br label %421

421:                                              ; preds = %441, %343
  %422 = load i32, i32* %10, align 4
  %423 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %424 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = icmp slt i32 %422, %425
  br i1 %426, label %427, label %444

427:                                              ; preds = %421
  %428 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %429 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 133
  br i1 %431, label %432, label %436

432:                                              ; preds = %427
  %433 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %434 = load i32, i32* %10, align 4
  %435 = call i32 @genesis_reset(%struct.skge_hw* %433, i32 %434)
  br label %440

436:                                              ; preds = %427
  %437 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %438 = load i32, i32* %10, align 4
  %439 = call i32 @yukon_reset(%struct.skge_hw* %437, i32 %438)
  br label %440

440:                                              ; preds = %436, %432
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %10, align 4
  br label %421

444:                                              ; preds = %421
  store i32 0, i32* %2, align 4
  br label %445

445:                                              ; preds = %444, %131, %102
  %446 = load i32, i32* %2, align 4
  ret i32 %446
}

declare dso_local i32 @skge_read16(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_read8(%struct.skge_hw*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @genesis_init(%struct.skge_hw*) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_usecs2clk(%struct.skge_hw*, i32) #1

declare dso_local i32 @genesis_reset(%struct.skge_hw*, i32) #1

declare dso_local i32 @yukon_reset(%struct.skge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
