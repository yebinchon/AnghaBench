; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.ath_hw* }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath_buf = type { i32 }

@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@SC_OP_HW_RESET = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"reset work is pending, skip beaconing now\0A\00", align 1
@BSTUCK_THRESH = common dso_local global i32 0, align 4
@BSTUCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"missed %u consecutive beacons\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"beacon is officially stuck\0A\00", align 1
@RESET_TYPE_BEACON_STUCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"resume beacon xmit after %u misses\0A\00", align 1
@UPDATE = common dso_local global i64 0, align 8
@COMMIT = common dso_local global i64 0, align 8
@OK = common dso_local global i64 0, align 8
@BEACON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Transmitting beacon for slot: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_beacon_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.ath_softc*
  store %struct.ath_softc* %11, %struct.ath_softc** %3, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 5
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %4, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  store %struct.ath_buf* null, %struct.ath_buf** %6, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @SC_OP_HW_RESET, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 4
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %34 = load i32, i32* @RESET, align 4
  %35 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %33, i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %228

36:                                               ; preds = %1
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ath9k_hw_numtxpending(%struct.ath_hw* %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %113

44:                                               ; preds = %36
  %45 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = call i32 @ath9k_hw_check_alive(%struct.ath_hw* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %44
  %54 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 3
  %59 = call i32 @ieee80211_queue_work(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %53, %44
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BSTUCK_THRESH, align 4
  %66 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %60
  %72 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %73 = load i32, i32* @BSTUCK, align 4
  %74 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %72, i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ath9k_hw_stop_dma_queue(%struct.ath_hw* %79, i32 %83)
  %85 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %92 = call i32 @ath9k_hw_bstuck_nfcal(%struct.ath_hw* %91)
  br label %93

93:                                               ; preds = %90, %71
  br label %112

94:                                               ; preds = %60
  %95 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @BSTUCK_THRESH, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %103 = load i32, i32* @BSTUCK, align 4
  %104 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %102, i32 %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %109 = load i32, i32* @RESET_TYPE_BEACON_STUCK, align 4
  %110 = call i32 @ath9k_queue_reset(%struct.ath_softc* %108, i32 %109)
  br label %111

111:                                              ; preds = %101, %94
  br label %112

112:                                              ; preds = %111, %93
  br label %228

113:                                              ; preds = %36
  %114 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %115 = call i32 @ath9k_beacon_choose_slot(%struct.ath_softc* %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %117 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  %119 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %119, i64 %121
  %123 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %122, align 8
  store %struct.ieee80211_vif* %123, %struct.ieee80211_vif** %7, align 8
  %124 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %125 = icmp ne %struct.ieee80211_vif* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %113
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %128 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126, %113
  br label %228

133:                                              ; preds = %126
  %134 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %138 = call %struct.ath_buf* @ath9k_beacon_generate(i32 %136, %struct.ieee80211_vif* %137)
  store %struct.ath_buf* %138, %struct.ath_buf** %6, align 8
  %139 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %133
  %145 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %146 = load i32, i32* @BSTUCK, align 4
  %147 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %145, i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %153 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %144, %133
  %156 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %157 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @UPDATE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load i64, i64* @COMMIT, align 8
  %164 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  store i64 %163, i64* %166, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %169 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 8
  br label %199

171:                                              ; preds = %155
  %172 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %173 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @COMMIT, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %198

178:                                              ; preds = %171
  %179 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %180 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %178
  %186 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %187 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %191 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %193 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %192)
  %194 = load i64, i64* @OK, align 8
  %195 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %196 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i64 %194, i64* %197, align 8
  br label %198

198:                                              ; preds = %185, %178, %171
  br label %199

199:                                              ; preds = %198, %162
  %200 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %201 = icmp ne %struct.ath_buf* %200, null
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  %203 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %204 = call i32 @ath9k_reset_beacon_status(%struct.ath_softc* %203)
  %205 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %206 = load i32, i32* @BEACON, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %205, i32 %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %207)
  %209 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %210 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %211 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %215 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ath9k_hw_puttxbuf(%struct.ath_hw* %209, i32 %213, i32 %216)
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %202
  %221 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %222 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %223 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ath9k_hw_txstart(%struct.ath_hw* %221, i32 %225)
  br label %227

227:                                              ; preds = %220, %202
  br label %228

228:                                              ; preds = %32, %112, %132, %227, %199
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @ath9k_hw_numtxpending(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_check_alive(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @ath9k_hw_stop_dma_queue(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_bstuck_nfcal(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_beacon_choose_slot(%struct.ath_softc*) #1

declare dso_local %struct.ath_buf* @ath9k_beacon_generate(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_reset_beacon_status(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_puttxbuf(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_txstart(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
