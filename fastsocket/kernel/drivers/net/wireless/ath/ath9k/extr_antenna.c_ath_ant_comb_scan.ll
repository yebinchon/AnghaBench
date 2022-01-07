; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_comb_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_comb_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_ant_comb }
%struct.ath_ant_comb = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.ath_rx_status = type { i32, i32, i32, i64 }
%struct.ath_hw_antcomb_conf = type { i32, i32, i32, i32 }

@ATH_ANT_RX_CURRENT_SHIFT = common dso_local global i32 0, align 4
@ATH_ANT_RX_MASK = common dso_local global i32 0, align 4
@ATH_ANT_RX_MAIN_SHIFT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH_ANT_DIV_COMB_SHORT_SCAN_INTR = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_SHORT_SCAN_PKTCOUNT = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_MAX_PKTCOUNT = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_MAX_COUNT = common dso_local global i64 0, align 8
@ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_ant_comb_scan(%struct.ath_softc* %0, %struct.ath_rx_status* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_rx_status*, align 8
  %5 = alloca %struct.ath_hw_antcomb_conf, align 4
  %6 = alloca %struct.ath_ant_comb*, align 8
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
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %4, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  store %struct.ath_ant_comb* %18, %struct.ath_ant_comb** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %20 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %23 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %26 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ATH_ANT_RX_CURRENT_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* @ATH_ANT_RX_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %33 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATH_ANT_RX_MAIN_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* @ATH_ANT_RX_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %2
  %42 = load i32, i32* %13, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %46 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %51 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %56 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %44
  %63 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %64 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %63, i32 0, i32 12
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %72

67:                                               ; preds = %44
  %68 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %69 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %41, %2
  %74 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %75 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %73
  %79 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %80 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = load i64, i64* @jiffies, align 8
  %85 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %86 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %85, i32 0, i32 13
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ATH_ANT_DIV_COMB_SHORT_SCAN_INTR, align 4
  %89 = call i64 @msecs_to_jiffies(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i64 @time_after(i64 %84, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i32 1, i32* %16, align 4
  br label %115

94:                                               ; preds = %83
  %95 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %96 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ATH_ANT_DIV_COMB_SHORT_SCAN_PKTCOUNT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %94
  %101 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %102 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 100
  %105 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %106 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %104, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  store i32 1, i32* %16, align 4
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %113, %94
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %78, %73
  %117 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %118 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ATH_ANT_DIV_COMB_MAX_PKTCOUNT, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %124 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122, %116
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %436

131:                                              ; preds = %127, %122
  %132 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %133 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %131
  %137 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %138 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, 100
  %141 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %142 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sdiv i32 %140, %143
  store i32 %144, i32* %7, align 4
  %145 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %146 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %149 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %147, %150
  store i32 %151, i32* %9, align 4
  %152 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %153 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %156 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %154, %157
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %136, %131
  %160 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %161 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ath9k_hw_antdiv_comb_conf_get(i32 %162, %struct.ath_hw_antcomb_conf* %5)
  %164 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %10, align 4
  %166 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %11, align 4
  %168 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %169 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %169, align 8
  %172 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %173 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @ATH_ANT_DIV_COMB_MAX_COUNT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %159
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %183 = load i32, i32* %9, align 4
  %184 = bitcast %struct.ath_hw_antcomb_conf* %5 to { i64, i64 }*
  %185 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 4
  %187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %184, i32 0, i32 1
  %188 = load i64, i64* %187, align 4
  %189 = call i32 @ath_lnaconf_alt_good_scan(%struct.ath_ant_comb* %182, i64 %186, i64 %188, i32 %183)
  %190 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %191 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %190, i32 0, i32 5
  store i32 1, i32* %191, align 4
  br label %195

192:                                              ; preds = %177
  %193 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %194 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %193, i32 0, i32 5
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %181
  %196 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %197 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %196, i32 0, i32 6
  store i64 0, i64* %197, align 8
  %198 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %199 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %198, i32 0, i32 4
  store i32 1, i32* %199, align 8
  %200 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %201 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %200, i32 0, i32 7
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %195, %159
  %203 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %204 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %259, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = call i64 @ath_ant_div_comb_alt_check(i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %207
  %218 = load i32, i32* %10, align 4
  %219 = icmp eq i32 %218, 128
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 128, i32* %221, align 4
  %222 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 131, i32* %222, align 4
  br label %230

223:                                              ; preds = %217
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, 131
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 131, i32* %227, align 4
  %228 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 128, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %220
  br label %415

231:                                              ; preds = %207
  %232 = load i32, i32* %10, align 4
  %233 = icmp ne i32 %232, 131
  br i1 %233, label %234, label %249

234:                                              ; preds = %231
  %235 = load i32, i32* %10, align 4
  %236 = icmp ne i32 %235, 128
  br i1 %236, label %237, label %249

237:                                              ; preds = %234
  %238 = load i32, i32* %11, align 4
  %239 = icmp eq i32 %238, 128
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 131, i32* %241, align 4
  br label %248

242:                                              ; preds = %237
  %243 = load i32, i32* %11, align 4
  %244 = icmp eq i32 %243, 131
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 128, i32* %246, align 4
  br label %247

247:                                              ; preds = %245, %242
  br label %248

248:                                              ; preds = %247, %240
  br label %415

249:                                              ; preds = %234, %231
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %9, align 4
  %253 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %252, %254
  %256 = icmp slt i32 %251, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %250
  br label %415

258:                                              ; preds = %250
  br label %259

259:                                              ; preds = %258, %202
  %260 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %261 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %383, label %264

264:                                              ; preds = %259
  %265 = load i32, i32* %10, align 4
  switch i32 %265, label %381 [
    i32 128, label %266
    i32 131, label %277
    i32 129, label %288
    i32 130, label %295
  ]

266:                                              ; preds = %264
  %267 = load i32, i32* %8, align 4
  %268 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %269 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %268, i32 0, i32 8
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %272 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %271, i32 0, i32 9
  store i32 %270, i32* %272, align 8
  %273 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %274 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %273, i32 0, i32 4
  store i32 1, i32* %274, align 8
  %275 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 131, i32* %275, align 4
  %276 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 129, i32* %276, align 4
  br label %382

277:                                              ; preds = %264
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %280 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %279, i32 0, i32 9
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %283 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %282, i32 0, i32 8
  store i32 %281, i32* %283, align 4
  %284 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %285 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %284, i32 0, i32 4
  store i32 1, i32* %285, align 8
  %286 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 128, i32* %286, align 4
  %287 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 129, i32* %287, align 4
  br label %382

288:                                              ; preds = %264
  %289 = load i32, i32* %8, align 4
  %290 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %291 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %290, i32 0, i32 10
  store i32 %289, i32* %291, align 4
  %292 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %293 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %292, i32 0, i32 4
  store i32 1, i32* %293, align 8
  %294 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 130, i32* %294, align 4
  br label %382

295:                                              ; preds = %264
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %298 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %297, i32 0, i32 11
  store i32 %296, i32* %298, align 8
  %299 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %300 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %299, i32 0, i32 4
  store i32 0, i32* %300, align 8
  %301 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %302 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %305 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %304, i32 0, i32 9
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA, align 4
  %308 = add nsw i32 %306, %307
  %309 = icmp sgt i32 %303, %308
  br i1 %309, label %310, label %345

310:                                              ; preds = %295
  %311 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %312 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %311, i32 0, i32 10
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %315 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %314, i32 0, i32 9
  %316 = load i32, i32* %315, align 8
  %317 = icmp sgt i32 %313, %316
  br i1 %317, label %318, label %329

318:                                              ; preds = %310
  %319 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %320 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %319, i32 0, i32 10
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %323 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %322, i32 0, i32 11
  %324 = load i32, i32* %323, align 8
  %325 = icmp sgt i32 %321, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %318
  %327 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 128, i32* %327, align 4
  %328 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 129, i32* %328, align 4
  br label %344

329:                                              ; preds = %318, %310
  %330 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %331 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %330, i32 0, i32 11
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %334 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 8
  %336 = icmp sgt i32 %332, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %329
  %338 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 128, i32* %338, align 4
  %339 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 130, i32* %339, align 4
  br label %343

340:                                              ; preds = %329
  %341 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 128, i32* %341, align 4
  %342 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 131, i32* %342, align 4
  br label %343

343:                                              ; preds = %340, %337
  br label %344

344:                                              ; preds = %343, %326
  br label %380

345:                                              ; preds = %295
  %346 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %347 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %346, i32 0, i32 10
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %350 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %349, i32 0, i32 8
  %351 = load i32, i32* %350, align 4
  %352 = icmp sgt i32 %348, %351
  br i1 %352, label %353, label %364

353:                                              ; preds = %345
  %354 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %355 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %354, i32 0, i32 10
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %358 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %357, i32 0, i32 11
  %359 = load i32, i32* %358, align 8
  %360 = icmp sgt i32 %356, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %353
  %362 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 131, i32* %362, align 4
  %363 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 129, i32* %363, align 4
  br label %379

364:                                              ; preds = %353, %345
  %365 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %366 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %365, i32 0, i32 11
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %369 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %368, i32 0, i32 9
  %370 = load i32, i32* %369, align 8
  %371 = icmp sgt i32 %367, %370
  br i1 %371, label %372, label %375

372:                                              ; preds = %364
  %373 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 131, i32* %373, align 4
  %374 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 130, i32* %374, align 4
  br label %378

375:                                              ; preds = %364
  %376 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 131, i32* %376, align 4
  %377 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 128, i32* %377, align 4
  br label %378

378:                                              ; preds = %375, %372
  br label %379

379:                                              ; preds = %378, %361
  br label %380

380:                                              ; preds = %379, %344
  br label %382

381:                                              ; preds = %264
  br label %382

382:                                              ; preds = %381, %380, %288, %277, %266
  br label %405

383:                                              ; preds = %259
  %384 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %385 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %404, label %388

388:                                              ; preds = %383
  %389 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %390 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %389, i32 0, i32 7
  store i32 0, i32* %390, align 8
  %391 = load i32, i32* %11, align 4
  %392 = icmp eq i32 %391, 128
  br i1 %392, label %393, label %396

393:                                              ; preds = %388
  %394 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 128, i32* %394, align 4
  %395 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 131, i32* %395, align 4
  br label %403

396:                                              ; preds = %388
  %397 = load i32, i32* %11, align 4
  %398 = icmp eq i32 %397, 131
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 131, i32* %400, align 4
  %401 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 128, i32* %401, align 4
  br label %402

402:                                              ; preds = %399, %396
  br label %403

403:                                              ; preds = %402, %393
  br label %415

404:                                              ; preds = %383
  br label %405

405:                                              ; preds = %404, %382
  %406 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* %8, align 4
  %409 = load i32, i32* %7, align 4
  %410 = call i32 @ath_select_ant_div_from_quick_scan(%struct.ath_ant_comb* %406, %struct.ath_hw_antcomb_conf* %5, i32 %407, i32 %408, i32 %409)
  %411 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %412 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %411, i32 0, i32 14
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %412, align 8
  br label %415

415:                                              ; preds = %405, %403, %257, %248, %230
  %416 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %417 = load i32, i32* %7, align 4
  %418 = call i32 @ath_ant_div_conf_fast_divbias(%struct.ath_hw_antcomb_conf* %5, %struct.ath_ant_comb* %416, i32 %417)
  %419 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %420 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @ath9k_hw_antdiv_comb_conf_set(i32 %421, %struct.ath_hw_antcomb_conf* %5)
  %423 = load i64, i64* @jiffies, align 8
  %424 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %425 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %424, i32 0, i32 13
  store i64 %423, i64* %425, align 8
  %426 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %427 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %426, i32 0, i32 0
  store i32 0, i32* %427, align 8
  %428 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %429 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %428, i32 0, i32 1
  store i32 0, i32* %429, align 4
  %430 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %431 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %430, i32 0, i32 2
  store i32 0, i32* %431, align 8
  %432 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %433 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %432, i32 0, i32 12
  store i64 0, i64* %433, align 8
  %434 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %435 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %434, i32 0, i32 3
  store i32 0, i32* %435, align 4
  br label %436

436:                                              ; preds = %415, %130
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath9k_hw_antdiv_comb_conf_get(i32, %struct.ath_hw_antcomb_conf*) #1

declare dso_local i32 @ath_lnaconf_alt_good_scan(%struct.ath_ant_comb*, i64, i64, i32) #1

declare dso_local i64 @ath_ant_div_comb_alt_check(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath_select_ant_div_from_quick_scan(%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*, i32, i32, i32) #1

declare dso_local i32 @ath_ant_div_conf_fast_divbias(%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32) #1

declare dso_local i32 @ath9k_hw_antdiv_comb_conf_set(i32, %struct.ath_hw_antcomb_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
