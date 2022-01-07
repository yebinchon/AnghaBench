; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_mh_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_mh_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, %struct.nes_adapter*, i64, i32, i32, i64* }
%struct.nes_adapter = type { i64*, %struct.TYPE_2__, i64, i32, i64* }
%struct.TYPE_2__ = type { i64 }
%struct.nes_vnic = type { i32* }

@NES_MAC_SW_IDLE = common dso_local global i64 0, align 8
@NES_MAC_SW_MH = common dso_local global i64 0, align 8
@NES_IDX_MAC_TX_FRAMES_LOW = common dso_local global i32 0, align 4
@NES_IDX_MAC_TX_FRAMES_HIGH = common dso_local global i32 0, align 4
@NES_IDX_MAC_TX_PAUSE_FRAMES = common dso_local global i32 0, align 4
@NES_IDX_USED_CHUNKS_TX = common dso_local global i32 0, align 4
@NES_IDX_MAC_TX_CONTROL = common dso_local global i32 0, align 4
@mh_pauses_sent = common dso_local global i32 0, align 4
@NES_IDX_MAC_TX_CONFIG = common dso_local global i32 0, align 4
@NES_IDX_MAC_TX_PAUSE_QUANTA = common dso_local global i32 0, align 4
@NES_IDX_MAC_RX_CONTROL = common dso_local global i32 0, align 4
@NES_IDX_MAC_RX_CONFIG = common dso_local global i32 0, align 4
@NES_IDX_MAC_EXACT_MATCH_BOTTOM = common dso_local global i32 0, align 4
@NES_IDX_MPP_DEBUG = common dso_local global i32 0, align 4
@NES_DBG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failsafe caught slow outbound pause\0A\00", align 1
@mh_detected = common dso_local global i32 0, align 4
@NES_SOFTWARE_RESET = common dso_local global i64 0, align 8
@NES_IDX_ETH_SERDES_COMMON_CONTROL0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_COMMON_STATUS0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_TX_EMP0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_TX_DRIVE0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_RX_MODE0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_RX_SIGDET0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_BYPASS0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_LOOPBACK_CONTROL0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_RX_EQ_CONTROL0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_RX_EQ_STATUS0 = common dso_local global i32 0, align 4
@NES_IDX_ETH_SERDES_CDR_CONTROL0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_mh_fix(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca %struct.nes_adapter*, align 8
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = inttoptr i64 %25 to %struct.nes_device*
  store %struct.nes_device* %26, %struct.nes_device** %4, align 8
  %27 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %28 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %27, i32 0, i32 1
  %29 = load %struct.nes_adapter*, %struct.nes_adapter** %28, align 8
  store %struct.nes_adapter* %29, %struct.nes_adapter** %5, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %30 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %30, i32 0, i32 3
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NES_MAC_SW_IDLE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %1
  %42 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41, %1
  %49 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %49, i32 0, i32 3
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %330

53:                                               ; preds = %41
  %54 = load i64, i64* @NES_MAC_SW_MH, align 8
  %55 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 %54, i64* %58, align 8
  %59 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %59, i32 0, i32 3
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %65 = load i32, i32* @NES_IDX_MAC_TX_FRAMES_LOW, align 4
  %66 = call i32 @nes_read_indexed(%struct.nes_device* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %68 = load i32, i32* @NES_IDX_MAC_TX_FRAMES_HIGH, align 4
  %69 = call i32 @nes_read_indexed(%struct.nes_device* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %71 = load i32, i32* @NES_IDX_MAC_TX_PAUSE_FRAMES, align 4
  %72 = call i32 @nes_read_indexed(%struct.nes_device* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %74 = load i32, i32* @NES_IDX_USED_CHUNKS_TX, align 4
  %75 = call i32 @nes_read_indexed(%struct.nes_device* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %78 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  store i32 0, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %8, align 4
  %82 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %83 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %9, align 4
  %85 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %86 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %85, i32 0, i32 5
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %63
  %92 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %93 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %92, i32 0, i32 5
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.nes_vnic* @netdev_priv(i64 %96)
  store %struct.nes_vnic* %97, %struct.nes_vnic** %6, align 8
  br label %99

98:                                               ; preds = %63
  br label %324

99:                                               ; preds = %91
  store i32 0, i32* %23, align 4
  br label %100

100:                                              ; preds = %129, %99
  %101 = load i32, i32* %23, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %132

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 %104, 8
  store i32 %105, i32* %10, align 4
  %106 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %107 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %23, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 255
  br i1 %113, label %114, label %124

114:                                              ; preds = %103
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, 255
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, 255
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 255
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 1, i32* %24, align 4
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %103
  %125 = load i32, i32* %8, align 4
  %126 = ashr i32 %125, 8
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = ashr i32 %127, 8
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %23, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %23, align 4
  br label %100

132:                                              ; preds = %100
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %153, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %145 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32, i32* %24, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150, %143, %138, %135, %132
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %156 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %324

157:                                              ; preds = %150
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %160 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = call i32 (...) @barrier()
  %162 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %163 = load i32, i32* @NES_IDX_MAC_TX_CONTROL, align 4
  %164 = call i32 @nes_write_indexed(%struct.nes_device* %162, i32 %163, i32 5)
  %165 = load i32, i32* @mh_pauses_sent, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @mh_pauses_sent, align 4
  %167 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %168 = load i32, i32* @NES_IDX_MAC_TX_PAUSE_FRAMES, align 4
  %169 = call i32 @nes_read_indexed(%struct.nes_device* %167, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %157
  %173 = load i32, i32* %13, align 4
  %174 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %175 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %324

178:                                              ; preds = %157
  %179 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %180 = load i32, i32* @NES_IDX_MAC_TX_CONTROL, align 4
  %181 = call i32 @nes_read_indexed(%struct.nes_device* %179, i32 %180)
  store i32 %181, i32* %16, align 4
  %182 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %183 = load i32, i32* @NES_IDX_MAC_TX_CONFIG, align 4
  %184 = call i32 @nes_read_indexed(%struct.nes_device* %182, i32 %183)
  store i32 %184, i32* %17, align 4
  %185 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %186 = load i32, i32* @NES_IDX_MAC_TX_PAUSE_QUANTA, align 4
  %187 = call i32 @nes_read_indexed(%struct.nes_device* %185, i32 %186)
  store i32 %187, i32* %18, align 4
  %188 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %189 = load i32, i32* @NES_IDX_MAC_RX_CONTROL, align 4
  %190 = call i32 @nes_read_indexed(%struct.nes_device* %188, i32 %189)
  store i32 %190, i32* %19, align 4
  %191 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %192 = load i32, i32* @NES_IDX_MAC_RX_CONFIG, align 4
  %193 = call i32 @nes_read_indexed(%struct.nes_device* %191, i32 %192)
  store i32 %193, i32* %20, align 4
  %194 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %195 = load i32, i32* @NES_IDX_MAC_EXACT_MATCH_BOTTOM, align 4
  %196 = call i32 @nes_read_indexed(%struct.nes_device* %194, i32 %195)
  store i32 %196, i32* %21, align 4
  %197 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %198 = load i32, i32* @NES_IDX_MPP_DEBUG, align 4
  %199 = call i32 @nes_read_indexed(%struct.nes_device* %197, i32 %198)
  store i32 %199, i32* %22, align 4
  %200 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %201 = load i32, i32* @NES_IDX_MAC_TX_PAUSE_FRAMES, align 4
  %202 = call i32 @nes_read_indexed(%struct.nes_device* %200, i32 %201)
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %178
  %206 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %207 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %210 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* @NES_DBG_HW, align 4
  %212 = call i32 @nes_debug(i32 %211, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %324

213:                                              ; preds = %178
  %214 = load i32, i32* @mh_detected, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @mh_detected, align 4
  %216 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %217 = load i32, i32* @NES_IDX_MAC_TX_CONTROL, align 4
  %218 = call i32 @nes_write_indexed(%struct.nes_device* %216, i32 %217, i32 0)
  %219 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %220 = load i32, i32* @NES_IDX_MAC_TX_CONFIG, align 4
  %221 = call i32 @nes_write_indexed(%struct.nes_device* %219, i32 %220, i32 0)
  %222 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %223 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @nes_read32(i64 %226)
  store i32 %227, i32* %15, align 4
  %228 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %229 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %232 = add nsw i64 %230, %231
  %233 = load i32, i32* %15, align 4
  %234 = or i32 %233, 29
  %235 = call i32 @nes_write32(i64 %232, i32 %234)
  br label %236

236:                                              ; preds = %251, %213
  %237 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %238 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @nes_read32(i64 %241)
  %243 = and i32 %242, 64
  %244 = icmp ne i32 %243, 64
  br i1 %244, label %245, label %249

245:                                              ; preds = %236
  %246 = load i32, i32* %23, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %23, align 4
  %248 = icmp slt i32 %246, 5000
  br label %249

249:                                              ; preds = %245, %236
  %250 = phi i1 [ false, %236 ], [ %248, %245 ]
  br i1 %250, label %251, label %252

251:                                              ; preds = %249
  br label %236

252:                                              ; preds = %249
  %253 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %254 = load i32, i32* @NES_IDX_ETH_SERDES_COMMON_CONTROL0, align 4
  %255 = call i32 @nes_write_indexed(%struct.nes_device* %253, i32 %254, i32 8)
  %256 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %257 = load i32, i32* @NES_IDX_ETH_SERDES_COMMON_STATUS0, align 4
  %258 = call i32 @nes_read_indexed(%struct.nes_device* %256, i32 %257)
  store i32 %258, i32* %14, align 4
  %259 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %260 = load i32, i32* @NES_IDX_ETH_SERDES_TX_EMP0, align 4
  %261 = call i32 @nes_write_indexed(%struct.nes_device* %259, i32 %260, i32 777975)
  %262 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %263 = load i32, i32* @NES_IDX_ETH_SERDES_TX_DRIVE0, align 4
  %264 = call i32 @nes_write_indexed(%struct.nes_device* %262, i32 %263, i32 -1662570496)
  %265 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %266 = load i32, i32* @NES_IDX_ETH_SERDES_RX_MODE0, align 4
  %267 = call i32 @nes_write_indexed(%struct.nes_device* %265, i32 %266, i32 267386880)
  %268 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %269 = load i32, i32* @NES_IDX_ETH_SERDES_RX_SIGDET0, align 4
  %270 = call i32 @nes_write_indexed(%struct.nes_device* %268, i32 %269, i32 0)
  %271 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %272 = load i32, i32* @NES_IDX_ETH_SERDES_BYPASS0, align 4
  %273 = call i32 @nes_write_indexed(%struct.nes_device* %271, i32 %272, i32 0)
  %274 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %275 = load i32, i32* @NES_IDX_ETH_SERDES_LOOPBACK_CONTROL0, align 4
  %276 = call i32 @nes_write_indexed(%struct.nes_device* %274, i32 %275, i32 0)
  %277 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %278 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %252
  %282 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %283 = load i32, i32* @NES_IDX_ETH_SERDES_RX_EQ_CONTROL0, align 4
  %284 = call i32 @nes_write_indexed(%struct.nes_device* %282, i32 %283, i32 -266853854)
  br label %289

285:                                              ; preds = %252
  %286 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %287 = load i32, i32* @NES_IDX_ETH_SERDES_RX_EQ_CONTROL0, align 4
  %288 = call i32 @nes_write_indexed(%struct.nes_device* %286, i32 %287, i32 -268164574)
  br label %289

289:                                              ; preds = %285, %281
  %290 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %291 = load i32, i32* @NES_IDX_ETH_SERDES_RX_EQ_STATUS0, align 4
  %292 = call i32 @nes_read_indexed(%struct.nes_device* %290, i32 %291)
  store i32 %292, i32* %14, align 4
  %293 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %294 = load i32, i32* @NES_IDX_ETH_SERDES_CDR_CONTROL0, align 4
  %295 = call i32 @nes_write_indexed(%struct.nes_device* %293, i32 %294, i32 255)
  %296 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %297 = load i32, i32* @NES_IDX_MAC_TX_CONTROL, align 4
  %298 = load i32, i32* %16, align 4
  %299 = call i32 @nes_write_indexed(%struct.nes_device* %296, i32 %297, i32 %298)
  %300 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %301 = load i32, i32* @NES_IDX_MAC_TX_CONFIG, align 4
  %302 = load i32, i32* %17, align 4
  %303 = call i32 @nes_write_indexed(%struct.nes_device* %300, i32 %301, i32 %302)
  %304 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %305 = load i32, i32* @NES_IDX_MAC_TX_PAUSE_QUANTA, align 4
  %306 = load i32, i32* %18, align 4
  %307 = call i32 @nes_write_indexed(%struct.nes_device* %304, i32 %305, i32 %306)
  %308 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %309 = load i32, i32* @NES_IDX_MAC_RX_CONTROL, align 4
  %310 = load i32, i32* %19, align 4
  %311 = call i32 @nes_write_indexed(%struct.nes_device* %308, i32 %309, i32 %310)
  %312 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %313 = load i32, i32* @NES_IDX_MAC_RX_CONFIG, align 4
  %314 = load i32, i32* %20, align 4
  %315 = call i32 @nes_write_indexed(%struct.nes_device* %312, i32 %313, i32 %314)
  %316 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %317 = load i32, i32* @NES_IDX_MAC_EXACT_MATCH_BOTTOM, align 4
  %318 = load i32, i32* %21, align 4
  %319 = call i32 @nes_write_indexed(%struct.nes_device* %316, i32 %317, i32 %318)
  %320 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %321 = load i32, i32* @NES_IDX_MPP_DEBUG, align 4
  %322 = load i32, i32* %22, align 4
  %323 = call i32 @nes_write_indexed(%struct.nes_device* %320, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %289, %205, %172, %153, %98
  %325 = load i64, i64* @NES_MAC_SW_IDLE, align 8
  %326 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %327 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %326, i32 0, i32 0
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  store i64 %325, i64* %329, align 8
  br label %330

330:                                              ; preds = %324, %48
  %331 = load i64, i64* @jiffies, align 8
  %332 = load i32, i32* @HZ, align 4
  %333 = sdiv i32 %332, 5
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %331, %334
  %336 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %337 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %336, i32 0, i32 1
  %338 = load %struct.nes_adapter*, %struct.nes_adapter** %337, align 8
  %339 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 0
  store i64 %335, i64* %340, align 8
  %341 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %342 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %341, i32 0, i32 1
  %343 = load %struct.nes_adapter*, %struct.nes_adapter** %342, align 8
  %344 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %343, i32 0, i32 1
  %345 = call i32 @add_timer(%struct.TYPE_2__* %344)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_read_indexed(%struct.nes_device*, i32) #1

declare dso_local %struct.nes_vnic* @netdev_priv(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i32, i32) #1

declare dso_local i32 @nes_debug(i32, i8*) #1

declare dso_local i32 @nes_read32(i64) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
