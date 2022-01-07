; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw*, %struct.ath_mci_coex }
%struct.ath_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32 }
%struct.ath_mci_coex = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ath_common = type { i32 }

@MCI_GPM_MORE = common dso_local global i32 0, align 4
@MCI_STATE_ENABLE = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE = common dso_local global i32 0, align 4
@__const.ath_mci_intr.payload = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -256], align 16
@MCI_REMOTE_RESET = common dso_local global i32 0, align 4
@MCI_SYS_WAKING = common dso_local global i32 0, align 4
@MCI_STATE_RESET_REQ_WAKE = common dso_local global i32 0, align 4
@MCI_STATE_SET_BT_AWAKE = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING = common dso_local global i32 0, align 4
@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@MCI_STATE_REMOTE_SLEEP = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING = common dso_local global i32 0, align 4
@MCI_BT_AWAKE = common dso_local global i64 0, align 8
@AR_MCI_INTERRUPT_RX_INVALID_HDR = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT = common dso_local global i32 0, align 4
@MCI_STATE_RECOVER_RX = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SCHD_INFO = common dso_local global i32 0, align 4
@MCI_STATE_LAST_SCHD_MSG_OFFSET = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_GPM = common dso_local global i32 0, align 4
@SC_OP_HW_RESET = common dso_local global i32 0, align 4
@MCI_GPM_INVALID = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_HW_MSG_MASK = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_LNA_CONTROL = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_LNA_INFO = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_INFO = common dso_local global i32 0, align 4
@AR_MCI_CONT_RSSI_POWER = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MCI CONT_INFO: (%s) pri = %d pwr = %d dBm\0A\00", align 1
@AR_MCI_CONT_TXRX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@AR_MCI_CONT_PRIORITY = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_NACK = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_RST = common dso_local global i32 0, align 4
@MCI_GPM_COEX_NOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_mci_intr(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_mci_coex*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_hw_mci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 2
  store %struct.ath_mci_coex* %18, %struct.ath_mci_coex** %3, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 1
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  store %struct.ath_hw* %21, %struct.ath_hw** %4, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %5, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.ath9k_hw_mci* %26, %struct.ath9k_hw_mci** %6, align 8
  %27 = load i32, i32* @MCI_GPM_MORE, align 4
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 1
  %30 = load %struct.ath_hw*, %struct.ath_hw** %29, align 8
  %31 = call i32 @ar9003_mci_get_interrupt(%struct.ath_hw* %30, i32* %7, i32* %8)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = load i32, i32* @MCI_STATE_ENABLE, align 4
  %34 = call i64 @ar9003_mci_state(%struct.ath_hw* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = call i32 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw* %37, i32 1, i32* null)
  br label %309

39:                                               ; preds = %1
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 bitcast ([4 x i32]* @__const.ath_mci_intr.payload to i8*), i64 16, i1 false)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = load i32, i32* @MCI_REMOTE_RESET, align 4
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %49 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %46, i32 %47, i32 0, i32* %48, i32 16, i32 1, i32 0)
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = load i32, i32* @MCI_SYS_WAKING, align 4
  %52 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %50, i32 %51, i32 0, i32* null, i32 0, i32 1, i32 0)
  %53 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %58 = load i32, i32* @MCI_STATE_RESET_REQ_WAKE, align 4
  %59 = call i64 @ar9003_mci_state(%struct.ath_hw* %57, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %61 = load i32, i32* @MCI_STATE_SET_BT_AWAKE, align 4
  %62 = call i64 @ar9003_mci_state(%struct.ath_hw* %60, i32 %61)
  br label %63

63:                                               ; preds = %44, %39
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %74 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MCI_BT_SLEEP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = load i32, i32* @MCI_STATE_REMOTE_SLEEP, align 4
  %81 = call i64 @ar9003_mci_state(%struct.ath_hw* %79, i32 %80)
  %82 = load i64, i64* @MCI_BT_SLEEP, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %86 = load i32, i32* @MCI_STATE_SET_BT_AWAKE, align 4
  %87 = call i64 @ar9003_mci_state(%struct.ath_hw* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78, %68
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %89
  %95 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %100 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MCI_BT_AWAKE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %94
  %105 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %106 = load i32, i32* @MCI_STATE_REMOTE_SLEEP, align 4
  %107 = call i64 @ar9003_mci_state(%struct.ath_hw* %105, i32 %106)
  %108 = load i64, i64* @MCI_BT_AWAKE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i64, i64* @MCI_BT_SLEEP, align 8
  %112 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %113 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %104, %94
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @AR_MCI_INTERRUPT_RX_INVALID_HDR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120, %115
  %126 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %127 = load i32, i32* @MCI_STATE_RECOVER_RX, align 4
  %128 = call i64 @ar9003_mci_state(%struct.ath_hw* %126, i32 %127)
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SCHD_INFO, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SCHD_INFO, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %140 = load i32, i32* @MCI_STATE_LAST_SCHD_MSG_OFFSET, align 4
  %141 = call i64 @ar9003_mci_state(%struct.ath_hw* %139, i32 %140)
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %134, %129
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_GPM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %211

148:                                              ; preds = %143
  %149 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_GPM, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %207, %148
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @MCI_GPM_MORE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %210

157:                                              ; preds = %153
  %158 = load i32, i32* @SC_OP_HW_RESET, align 4
  %159 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %160 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %159, i32 0, i32 0
  %161 = call i64 @test_bit(i32 %158, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %309

164:                                              ; preds = %157
  %165 = load %struct.ath_mci_coex*, %struct.ath_mci_coex** %3, align 8
  %166 = getelementptr inbounds %struct.ath_mci_coex, %struct.ath_mci_coex* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %12, align 8
  %169 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %170 = call i32 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw* %169, i32 0, i32* %13)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @MCI_GPM_INVALID, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %210

175:                                              ; preds = %164
  %176 = load i32, i32* %9, align 4
  %177 = ashr i32 %176, 2
  %178 = load i32*, i32** %12, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %12, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @MCI_GPM_TYPE(i32* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @MCI_GPM_OPCODE(i32* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  br label %207

188:                                              ; preds = %175
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @MCI_GPM_IS_CAL_TYPE(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load i32*, i32** %12, align 8
  %196 = call i32 @ath_mci_cal_msg(%struct.ath_softc* %193, i32 %194, i32* %195)
  br label %206

197:                                              ; preds = %188
  %198 = load i32, i32* %10, align 4
  switch i32 %198, label %204 [
    i32 128, label %199
  ]

199:                                              ; preds = %197
  %200 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = call i32 @ath_mci_msg(%struct.ath_softc* %200, i32 %201, i32* %202)
  br label %205

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %199
  br label %206

206:                                              ; preds = %205, %192
  br label %207

207:                                              ; preds = %206, %187
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @MCI_GPM_RECYCLE(i32* %208)
  br label %153

210:                                              ; preds = %174, %153
  br label %211

211:                                              ; preds = %210, %143
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @AR_MCI_INTERRUPT_RX_HW_MSG_MASK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %289

216:                                              ; preds = %211
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_CONTROL, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_CONTROL, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %8, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %221, %216
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_INFO, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_INFO, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %8, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %231, %226
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_INFO, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %268

241:                                              ; preds = %236
  %242 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %243 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @AR_MCI_CONT_RSSI_POWER, align 4
  %246 = call i32 @MS(i32 %244, i32 %245)
  store i32 %246, i32* %16, align 4
  %247 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_INFO, align 4
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %8, align 4
  %251 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %252 = load i32, i32* @MCI, align 4
  %253 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %254 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @AR_MCI_CONT_TXRX, align 4
  %257 = call i32 @MS(i32 %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %261 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %262 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @AR_MCI_CONT_PRIORITY, align 4
  %265 = call i32 @MS(i32 %263, i32 %264)
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @ath_dbg(%struct.ath_common* %251, i32 %252, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %260, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %241, %236
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_NACK, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_NACK, align 4
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %8, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %8, align 4
  br label %278

278:                                              ; preds = %273, %268
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_RST, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_RST, align 4
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %8, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %283, %278
  br label %289

289:                                              ; preds = %288, %211
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @AR_MCI_INTERRUPT_RX_INVALID_HDR, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* @AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %294, %289
  %300 = load i32, i32* @AR_MCI_INTERRUPT_RX_INVALID_HDR, align 4
  %301 = load i32, i32* @AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT, align 4
  %302 = or i32 %300, %301
  %303 = xor i32 %302, -1
  %304 = load i32, i32* %7, align 4
  %305 = and i32 %304, %303
  store i32 %305, i32* %7, align 4
  %306 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %307 = load i32, i32* @MCI_GPM_COEX_NOOP, align 4
  %308 = call i32 @ath_mci_msg(%struct.ath_softc* %306, i32 %307, i32* null)
  br label %309

309:                                              ; preds = %36, %163, %299, %294
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_get_interrupt(%struct.ath_hw*, i32*, i32*) #1

declare dso_local i64 @ar9003_mci_state(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @MCI_GPM_TYPE(i32*) #1

declare dso_local i32 @MCI_GPM_OPCODE(i32*) #1

declare dso_local i64 @MCI_GPM_IS_CAL_TYPE(i32) #1

declare dso_local i32 @ath_mci_cal_msg(%struct.ath_softc*, i32, i32*) #1

declare dso_local i32 @ath_mci_msg(%struct.ath_softc*, i32, i32*) #1

declare dso_local i32 @MCI_GPM_RECYCLE(i32*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
