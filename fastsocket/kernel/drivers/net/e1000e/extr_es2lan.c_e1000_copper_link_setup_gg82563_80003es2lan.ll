; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_copper_link_setup_gg82563_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_copper_link_setup_gg82563_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.e1000_phy_info }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_phy_info = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.1 = type opaque

@GG82563_PHY_MAC_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_MSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_1000MBPS_25 = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MASK = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MDI = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MDIX = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_AUTO = common dso_local global i32 0, align 4
@GG82563_PSCR_POLARITY_REVERSAL_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@E1000_KMRNCTRLSTA_OFFSET_FIFO_CTRL = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_FIFO_CTRL_RX_BYPASS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_FIFO_CTRL_TX_BYPASS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_MAC2PHY_OPMODE = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OPMODE_E_IDLE = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL_2 = common dso_local global i32 0, align 4
@GG82563_PSCR2_REVERSE_AUTO_NEG = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@GG82563_PHY_PWR_MGMT_CTRL = common dso_local global i32 0, align 4
@GG82563_PMCR_ENABLE_ELECTRICAL_IDLE = common dso_local global i32 0, align 4
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@GG82563_KMCR_PASS_FALSE_CARRIER = common dso_local global i32 0, align 4
@GG82563_PHY_INBAND_CTRL = common dso_local global i32 0, align 4
@GG82563_ICR_DIS_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_setup_gg82563_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_setup_gg82563_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %12 = call i64 @e1e_rphy(%struct.e1000_hw* %10, i32 %11, i32* %7)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %231

17:                                               ; preds = %1
  %18 = load i32, i32* @GG82563_MSCR_ASSERT_CRS_ON_TX, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @GG82563_MSCR_TX_CLK_1000MBPS_25, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @e1e_wphy(%struct.e1000_hw* %24, i32 %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %231

32:                                               ; preds = %17
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %35 = call i64 @e1e_rphy(%struct.e1000_hw* %33, i32 %34, i32* %7)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %231

40:                                               ; preds = %32
  %41 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %57 [
    i32 1, label %48
    i32 2, label %52
    i32 0, label %56
  ]

48:                                               ; preds = %40
  %49 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MDI, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %61

52:                                               ; preds = %40
  %53 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MDIX, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %61

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %40, %56
  %58 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_AUTO, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %52, %48
  %62 = load i32, i32* @GG82563_PSCR_POLARITY_REVERSAL_DISABLE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @GG82563_PSCR_POLARITY_REVERSAL_DISABLE, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %61
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @e1e_wphy(%struct.e1000_hw* %75, i32 %76, i32 %77)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %2, align 8
  br label %231

83:                                               ; preds = %74
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %87, align 8
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = bitcast %struct.e1000_hw* %89 to %struct.e1000_hw.1*
  %91 = call i64 %88(%struct.e1000_hw.1* %90)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %96 = load i64, i64* %5, align 8
  store i64 %96, i64* %2, align 8
  br label %231

97:                                               ; preds = %83
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_FIFO_CTRL, align 4
  %100 = load i32, i32* @E1000_KMRNCTRLSTA_FIFO_CTRL_RX_BYPASS, align 4
  %101 = load i32, i32* @E1000_KMRNCTRLSTA_FIFO_CTRL_TX_BYPASS, align 4
  %102 = or i32 %100, %101
  %103 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %98, i32 %99, i32 %102)
  store i64 %103, i64* %5, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i64, i64* %5, align 8
  store i64 %107, i64* %2, align 8
  br label %231

108:                                              ; preds = %97
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_MAC2PHY_OPMODE, align 4
  %111 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %109, i32 %110, i32* %7)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i64, i64* %5, align 8
  store i64 %115, i64* %2, align 8
  br label %231

116:                                              ; preds = %108
  %117 = load i32, i32* @E1000_KMRNCTRLSTA_OPMODE_E_IDLE, align 4
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_MAC2PHY_OPMODE, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %120, i32 %121, i32 %122)
  store i64 %123, i64* %5, align 8
  %124 = load i64, i64* %5, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i64, i64* %5, align 8
  store i64 %127, i64* %2, align 8
  br label %231

128:                                              ; preds = %116
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = load i32, i32* @GG82563_PHY_SPEC_CTRL_2, align 4
  %131 = call i64 @e1e_rphy(%struct.e1000_hw* %129, i32 %130, i32* %7)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i64, i64* %5, align 8
  store i64 %135, i64* %2, align 8
  br label %231

136:                                              ; preds = %128
  %137 = load i32, i32* @GG82563_PSCR2_REVERSE_AUTO_NEG, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = load i32, i32* @GG82563_PHY_SPEC_CTRL_2, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i64 @e1e_wphy(%struct.e1000_hw* %141, i32 %142, i32 %143)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load i64, i64* %5, align 8
  store i64 %148, i64* %2, align 8
  br label %231

149:                                              ; preds = %136
  %150 = load i32, i32* @CTRL_EXT, align 4
  %151 = call i32 @er32(i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* @CTRL_EXT, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @ew32(i32 %156, i32 %157)
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %160 = load i32, i32* @GG82563_PHY_PWR_MGMT_CTRL, align 4
  %161 = call i64 @e1e_rphy(%struct.e1000_hw* %159, i32 %160, i32* %7)
  store i64 %161, i64* %5, align 8
  %162 = load i64, i64* %5, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %149
  %165 = load i64, i64* %5, align 8
  store i64 %165, i64* %2, align 8
  br label %231

166:                                              ; preds = %149
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %168 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %170, align 8
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %173 = bitcast %struct.e1000_hw* %172 to %struct.e1000_hw.0*
  %174 = call i32 %171(%struct.e1000_hw.0* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %210, label %176

176:                                              ; preds = %166
  %177 = load i32, i32* @GG82563_PMCR_ENABLE_ELECTRICAL_IDLE, align 4
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %181 = load i32, i32* @GG82563_PHY_PWR_MGMT_CTRL, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i64 @e1e_wphy(%struct.e1000_hw* %180, i32 %181, i32 %182)
  store i64 %183, i64* %5, align 8
  %184 = load i64, i64* %5, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i64, i64* %5, align 8
  store i64 %187, i64* %2, align 8
  br label %231

188:                                              ; preds = %176
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %190 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %191 = call i64 @e1e_rphy(%struct.e1000_hw* %189, i32 %190, i32* %7)
  store i64 %191, i64* %5, align 8
  %192 = load i64, i64* %5, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i64, i64* %5, align 8
  store i64 %195, i64* %2, align 8
  br label %231

196:                                              ; preds = %188
  %197 = load i32, i32* @GG82563_KMCR_PASS_FALSE_CARRIER, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %7, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %7, align 4
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %202 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i64 @e1e_wphy(%struct.e1000_hw* %201, i32 %202, i32 %203)
  store i64 %204, i64* %5, align 8
  %205 = load i64, i64* %5, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %196
  %208 = load i64, i64* %5, align 8
  store i64 %208, i64* %2, align 8
  br label %231

209:                                              ; preds = %196
  br label %210

210:                                              ; preds = %209, %166
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %212 = load i32, i32* @GG82563_PHY_INBAND_CTRL, align 4
  %213 = call i64 @e1e_rphy(%struct.e1000_hw* %211, i32 %212, i32* %7)
  store i64 %213, i64* %5, align 8
  %214 = load i64, i64* %5, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i64, i64* %5, align 8
  store i64 %217, i64* %2, align 8
  br label %231

218:                                              ; preds = %210
  %219 = load i32, i32* @GG82563_ICR_DIS_PADDING, align 4
  %220 = load i32, i32* %7, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %7, align 4
  %222 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %223 = load i32, i32* @GG82563_PHY_INBAND_CTRL, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i64 @e1e_wphy(%struct.e1000_hw* %222, i32 %223, i32 %224)
  store i64 %225, i64* %5, align 8
  %226 = load i64, i64* %5, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %218
  %229 = load i64, i64* %5, align 8
  store i64 %229, i64* %2, align 8
  br label %231

230:                                              ; preds = %218
  store i64 0, i64* %2, align 8
  br label %231

231:                                              ; preds = %230, %228, %216, %207, %194, %186, %164, %147, %134, %126, %114, %106, %94, %81, %38, %30, %15
  %232 = load i64, i64* %2, align 8
  ret i64 %232
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
