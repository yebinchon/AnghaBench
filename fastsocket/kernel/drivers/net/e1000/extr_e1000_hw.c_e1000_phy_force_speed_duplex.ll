; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_force_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_force_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_phy_force_speed_duplex\00", align 1
@E1000_FC_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hw->fc = %d\0A\00", align 1
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@DEVICE_SPEED_MASK = common dso_local global i32 0, align 4
@E1000_CTRL_ASDE = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i64 0, align 8
@e1000_100_full = common dso_local global i64 0, align 8
@e1000_10_full = common dso_local global i64 0, align 8
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@MII_CR_FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Half Duplex\0A\00", align 1
@e1000_100_half = common dso_local global i64 0, align 8
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_100 = common dso_local global i64 0, align 8
@MII_CR_SPEED_1000 = common dso_local global i64 0, align 8
@MII_CR_SPEED_10 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Forcing 100mb \00", align 1
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Forcing 10mb \00", align 1
@e1000_phy_m88 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"M88E1000 PSCR: %x\0A\00", align 1
@MII_CR_RESET = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i64 0, align 8
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"Waiting for forced speed/duplex link.\0A\00", align 1
@PHY_FORCE_TIME = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Error Resetting PHY DSP\0A\00", align 1
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i64 0, align 8
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i64 0, align 8
@e1000_82544 = common dso_local global i64 0, align 8
@e1000_82543 = common dso_local global i64 0, align 8
@e1000_10_half = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_force_speed_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_force_speed_duplex(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @E1000_FC_NONE, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @CTRL, align 4
  %19 = call i32 @er32(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %21 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @DEVICE_SPEED_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @E1000_CTRL_ASDE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @PHY_CTRL, align 4
  %35 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %33, i32 %34, i64* %6)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %366

40:                                               ; preds = %1
  %41 = load i64, i64* @MII_CR_AUTO_NEG_EN, align 8
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @e1000_100_full, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @e1000_10_full, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50, %40
  %57 = load i32, i32* @E1000_CTRL_FD, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i64, i64* @MII_CR_FULL_DUPLEX, align 8
  %61 = load i64, i64* %6, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %6, align 8
  %63 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %74

64:                                               ; preds = %50
  %65 = load i32, i32* @E1000_CTRL_FD, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i64, i64* @MII_CR_FULL_DUPLEX, align 8
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %6, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %6, align 8
  %73 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %64, %56
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @e1000_100_full, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @e1000_100_half, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load i64, i64* @MII_CR_SPEED_100, align 8
  %91 = load i64, i64* %6, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* @MII_CR_SPEED_1000, align 8
  %94 = load i64, i64* @MII_CR_SPEED_10, align 8
  %95 = or i64 %93, %94
  %96 = xor i64 %95, -1
  %97 = load i64, i64* %6, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* %6, align 8
  %99 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %117

100:                                              ; preds = %80
  %101 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %102 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i64, i64* @MII_CR_SPEED_10, align 8
  %108 = load i64, i64* %6, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* @MII_CR_SPEED_1000, align 8
  %111 = load i64, i64* @MII_CR_SPEED_100, align 8
  %112 = or i64 %110, %111
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %6, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %6, align 8
  %116 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %100, %86
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %118)
  %120 = load i32, i32* @CTRL, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @ew32(i32 %120, i32 %121)
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @e1000_phy_m88, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %117
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %131 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %129, i32 %130, i64* %8)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i64, i64* %5, align 8
  store i64 %135, i64* %2, align 8
  br label %366

136:                                              ; preds = %128
  %137 = load i64, i64* @M88E1000_PSCR_AUTO_X_MODE, align 8
  %138 = xor i64 %137, -1
  %139 = load i64, i64* %8, align 8
  %140 = and i64 %139, %138
  store i64 %140, i64* %8, align 8
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %143 = load i64, i64* %8, align 8
  %144 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %141, i32 %142, i64 %143)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load i64, i64* %5, align 8
  store i64 %148, i64* %2, align 8
  br label %366

149:                                              ; preds = %136
  %150 = load i64, i64* %8, align 8
  %151 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %150)
  %152 = load i64, i64* @MII_CR_RESET, align 8
  %153 = load i64, i64* %6, align 8
  %154 = or i64 %153, %152
  store i64 %154, i64* %6, align 8
  br label %181

155:                                              ; preds = %117
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %158 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %156, i32 %157, i64* %8)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i64, i64* %5, align 8
  store i64 %162, i64* %2, align 8
  br label %366

163:                                              ; preds = %155
  %164 = load i64, i64* @IGP01E1000_PSCR_AUTO_MDIX, align 8
  %165 = xor i64 %164, -1
  %166 = load i64, i64* %8, align 8
  %167 = and i64 %166, %165
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 8
  %169 = xor i64 %168, -1
  %170 = load i64, i64* %8, align 8
  %171 = and i64 %170, %169
  store i64 %171, i64* %8, align 8
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %173 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %174 = load i64, i64* %8, align 8
  %175 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %172, i32 %173, i64 %174)
  store i64 %175, i64* %5, align 8
  %176 = load i64, i64* %5, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %163
  %179 = load i64, i64* %5, align 8
  store i64 %179, i64* %2, align 8
  br label %366

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180, %149
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %183 = load i32, i32* @PHY_CTRL, align 4
  %184 = load i64, i64* %6, align 8
  %185 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %182, i32 %183, i64 %184)
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* %5, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i64, i64* %5, align 8
  store i64 %189, i64* %2, align 8
  br label %366

190:                                              ; preds = %181
  %191 = call i32 @udelay(i32 1)
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %193 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %280

196:                                              ; preds = %190
  %197 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  %198 = load i64, i64* @PHY_FORCE_TIME, align 8
  store i64 %198, i64* %9, align 8
  br label %199

199:                                              ; preds = %226, %196
  %200 = load i64, i64* %9, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %229

202:                                              ; preds = %199
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %204 = load i32, i32* @PHY_STATUS, align 4
  %205 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %203, i32 %204, i64* %7)
  store i64 %205, i64* %5, align 8
  %206 = load i64, i64* %5, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i64, i64* %5, align 8
  store i64 %209, i64* %2, align 8
  br label %366

210:                                              ; preds = %202
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %212 = load i32, i32* @PHY_STATUS, align 4
  %213 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %211, i32 %212, i64* %7)
  store i64 %213, i64* %5, align 8
  %214 = load i64, i64* %5, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i64, i64* %5, align 8
  store i64 %217, i64* %2, align 8
  br label %366

218:                                              ; preds = %210
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %221 = and i64 %219, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %229

224:                                              ; preds = %218
  %225 = call i32 @msleep(i32 100)
  br label %226

226:                                              ; preds = %224
  %227 = load i64, i64* %9, align 8
  %228 = add nsw i64 %227, -1
  store i64 %228, i64* %9, align 8
  br label %199

229:                                              ; preds = %223, %199
  %230 = load i64, i64* %9, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %234 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @e1000_phy_m88, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %232
  %239 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %240 = call i64 @e1000_phy_reset_dsp(%struct.e1000_hw* %239)
  store i64 %240, i64* %5, align 8
  %241 = load i64, i64* %5, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %245 = load i64, i64* %5, align 8
  store i64 %245, i64* %2, align 8
  br label %366

246:                                              ; preds = %238
  br label %247

247:                                              ; preds = %246, %232, %229
  %248 = load i64, i64* @PHY_FORCE_TIME, align 8
  store i64 %248, i64* %9, align 8
  br label %249

249:                                              ; preds = %276, %247
  %250 = load i64, i64* %9, align 8
  %251 = icmp sgt i64 %250, 0
  br i1 %251, label %252, label %279

252:                                              ; preds = %249
  %253 = load i64, i64* %7, align 8
  %254 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %255 = and i64 %253, %254
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  br label %279

258:                                              ; preds = %252
  %259 = call i32 @msleep(i32 100)
  %260 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %261 = load i32, i32* @PHY_STATUS, align 4
  %262 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %260, i32 %261, i64* %7)
  store i64 %262, i64* %5, align 8
  %263 = load i64, i64* %5, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load i64, i64* %5, align 8
  store i64 %266, i64* %2, align 8
  br label %366

267:                                              ; preds = %258
  %268 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %269 = load i32, i32* @PHY_STATUS, align 4
  %270 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %268, i32 %269, i64* %7)
  store i64 %270, i64* %5, align 8
  %271 = load i64, i64* %5, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i64, i64* %5, align 8
  store i64 %274, i64* %2, align 8
  br label %366

275:                                              ; preds = %267
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %9, align 8
  %278 = add nsw i64 %277, -1
  store i64 %278, i64* %9, align 8
  br label %249

279:                                              ; preds = %257, %249
  br label %280

280:                                              ; preds = %279, %190
  %281 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %282 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @e1000_phy_m88, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %364

286:                                              ; preds = %280
  %287 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %288 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %289 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %287, i32 %288, i64* %8)
  store i64 %289, i64* %5, align 8
  %290 = load i64, i64* %5, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %286
  %293 = load i64, i64* %5, align 8
  store i64 %293, i64* %2, align 8
  br label %366

294:                                              ; preds = %286
  %295 = load i64, i64* @M88E1000_EPSCR_TX_CLK_25, align 8
  %296 = load i64, i64* %8, align 8
  %297 = or i64 %296, %295
  store i64 %297, i64* %8, align 8
  %298 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %299 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %300 = load i64, i64* %8, align 8
  %301 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %298, i32 %299, i64 %300)
  store i64 %301, i64* %5, align 8
  %302 = load i64, i64* %5, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %294
  %305 = load i64, i64* %5, align 8
  store i64 %305, i64* %2, align 8
  br label %366

306:                                              ; preds = %294
  %307 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %308 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %309 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %307, i32 %308, i64* %8)
  store i64 %309, i64* %5, align 8
  %310 = load i64, i64* %5, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %306
  %313 = load i64, i64* %5, align 8
  store i64 %313, i64* %2, align 8
  br label %366

314:                                              ; preds = %306
  %315 = load i64, i64* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 8
  %316 = load i64, i64* %8, align 8
  %317 = or i64 %316, %315
  store i64 %317, i64* %8, align 8
  %318 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %319 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %320 = load i64, i64* %8, align 8
  %321 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %318, i32 %319, i64 %320)
  store i64 %321, i64* %5, align 8
  %322 = load i64, i64* %5, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %314
  %325 = load i64, i64* %5, align 8
  store i64 %325, i64* %2, align 8
  br label %366

326:                                              ; preds = %314
  %327 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %328 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @e1000_82544, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %334 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @e1000_82543, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %363

338:                                              ; preds = %332, %326
  %339 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %340 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %363, label %343

343:                                              ; preds = %338
  %344 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %345 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @e1000_10_full, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %355, label %349

349:                                              ; preds = %343
  %350 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %351 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @e1000_10_half, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %363

355:                                              ; preds = %349, %343
  %356 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %357 = call i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw* %356)
  store i64 %357, i64* %5, align 8
  %358 = load i64, i64* %5, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = load i64, i64* %5, align 8
  store i64 %361, i64* %2, align 8
  br label %366

362:                                              ; preds = %355
  br label %363

363:                                              ; preds = %362, %349, %338, %332
  br label %364

364:                                              ; preds = %363, %280
  %365 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %365, i64* %2, align 8
  br label %366

366:                                              ; preds = %364, %360, %324, %312, %304, %292, %273, %265, %243, %216, %208, %188, %178, %161, %147, %134, %38
  %367 = load i64, i64* %2, align 8
  ret i64 %367
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1000_phy_reset_dsp(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
