; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64 }
%struct.TYPE_3__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32*, i32*, i32*, i32* }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_DACGAIN1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_DACGAIN2 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL2 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL2_LUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_power_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_fix(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.b43_phy_n*, %struct.b43_phy_n** %17, align 8
  store %struct.b43_phy_n* %18, %struct.b43_phy_n** %3, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.ssb_sprom*, %struct.ssb_sprom** %22, align 8
  store %struct.ssb_sprom* %23, %struct.ssb_sprom** %4, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %29 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 7
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 30, i32* %42, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 30, i32* %43, align 4
  br label %144

44:                                               ; preds = %35
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 40, i32* %51, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 40, i32* %52, align 4
  br label %143

53:                                               ; preds = %44
  %54 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %55 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 72, i32* %59, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 72, i32* %60, align 4
  br label %142

61:                                               ; preds = %53
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @b43_current_band(i32 %64)
  %66 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %70 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %76 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %79, i32* %80, align 4
  br label %141

81:                                               ; preds = %61
  %82 = load i32, i32* %11, align 4
  %83 = icmp sge i32 %82, 4900
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 5100
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %89 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %95 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  br label %140

100:                                              ; preds = %84, %81
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %101, 5100
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 5500
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %108 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %111, i32* %112, align 4
  %113 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %114 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %117, i32* %118, align 4
  br label %139

119:                                              ; preds = %103, %100
  %120 = load i32, i32* %11, align 4
  %121 = icmp sge i32 %120, 5500
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %124 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %127, i32* %128, align 4
  %129 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %130 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %133, i32* %134, align 4
  br label %138

135:                                              ; preds = %119
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 91, i32* %136, align 4
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 91, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %122
  br label %139

139:                                              ; preds = %138, %106
  br label %140

140:                                              ; preds = %139, %87
  br label %141

141:                                              ; preds = %140, %68
  br label %142

142:                                              ; preds = %141, %58
  br label %143

143:                                              ; preds = %142, %50
  br label %144

144:                                              ; preds = %143, %41
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %146 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 7
  br i1 %149, label %150, label %169

150:                                              ; preds = %144
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %152, 40
  br i1 %153, label %166, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 100
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %160, 40
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 100
  br i1 %165, label %166, label %169

166:                                              ; preds = %162, %158, %154, %150
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 91, i32* %167, align 4
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 91, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %162, %144
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %306, %169
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %309

173:                                              ; preds = %170
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = call i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev* %174)
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %12, align 4
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %184 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %186, 3
  br i1 %187, label %188, label %192

188:                                              ; preds = %173
  %189 = load i32, i32* %12, align 4
  %190 = ashr i32 %189, 16
  %191 = and i32 %190, 131071
  store i32 %191, i32* %9, align 4
  br label %196

192:                                              ; preds = %173
  %193 = load i32, i32* %12, align 4
  %194 = ashr i32 %193, 16
  %195 = and i32 %194, 8191
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %192, %188
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %198 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp sge i32 %200, 7
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i32, i32* %12, align 4
  %204 = ashr i32 %203, 8
  %205 = and i32 %204, 7
  store i32 %205, i32* %10, align 4
  br label %210

206:                                              ; preds = %196
  %207 = load i32, i32* %12, align 4
  %208 = ashr i32 %207, 8
  %209 = and i32 %208, 63
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %202
  %211 = load i32, i32* %12, align 4
  %212 = and i32 %211, 255
  store i32 %212, i32* %6, align 4
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp sge i32 %216, 3
  br i1 %217, label %218, label %230

218:                                              ; preds = %210
  %219 = load i32, i32* %7, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %223 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %224 = call i32 @b43_phy_set(%struct.b43_wldev* %222, i32 %223, i32 256)
  br label %229

225:                                              ; preds = %218
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %227 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %228 = call i32 @b43_phy_set(%struct.b43_wldev* %226, i32 %227, i32 256)
  br label %229

229:                                              ; preds = %225, %221
  br label %234

230:                                              ; preds = %210
  %231 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %232 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %233 = call i32 @b43_phy_set(%struct.b43_wldev* %231, i32 %232, i32 16384)
  br label %234

234:                                              ; preds = %230, %229
  %235 = load i32, i32* %7, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = load i32, i32* @B43_NPHY_AFECTL_DACGAIN1, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @b43_phy_write(%struct.b43_wldev* %238, i32 %239, i32 %240)
  br label %247

242:                                              ; preds = %234
  %243 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %244 = load i32, i32* @B43_NPHY_AFECTL_DACGAIN2, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @b43_phy_write(%struct.b43_wldev* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %249 = load i32, i32* %7, align 4
  %250 = add nsw i32 272, %249
  %251 = call i32 @B43_NTAB16(i32 7, i32 %250)
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @b43_ntab_write(%struct.b43_wldev* %248, i32 %251, i32 %252)
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = call i32 @B43_NTAB16(i32 15, i32 87)
  %256 = call i32 @b43_ntab_read(%struct.b43_wldev* %254, i32 %255)
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %247
  %260 = load i32, i32* %8, align 4
  %261 = and i32 %260, 255
  %262 = load i32, i32* %6, align 4
  %263 = shl i32 %262, 8
  %264 = or i32 %261, %263
  store i32 %264, i32* %8, align 4
  br label %270

265:                                              ; preds = %247
  %266 = load i32, i32* %8, align 4
  %267 = and i32 %266, 65280
  %268 = load i32, i32* %6, align 4
  %269 = or i32 %267, %268
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %265, %259
  %271 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %272 = call i32 @B43_NTAB16(i32 15, i32 87)
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @b43_ntab_write(%struct.b43_wldev* %271, i32 %272, i32 %273)
  %275 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %276 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %305

278:                                              ; preds = %270
  %279 = load i32, i32* %7, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  br label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  br label %285

285:                                              ; preds = %283, %281
  %286 = phi i32 [ %282, %281 ], [ %284, %283 ]
  store i32 %286, i32* %14, align 4
  %287 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 26, %288
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 576, %293
  %295 = call i32 @B43_NTAB32(i32 %289, i32 %294)
  %296 = call i32 @b43_ntab_read(%struct.b43_wldev* %287, i32 %295)
  store i32 %296, i32* %13, align 4
  %297 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %298 = load i32, i32* %14, align 4
  %299 = load i32, i32* %13, align 4
  %300 = shl i32 %299, 4
  %301 = call i32 @b43_phy_maskset(%struct.b43_wldev* %297, i32 %298, i32 57359, i32 %300)
  %302 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %303 = load i32, i32* %14, align 4
  %304 = call i32 @b43_phy_set(%struct.b43_wldev* %302, i32 %303, i32 4)
  br label %305

305:                                              ; preds = %285, %270
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %7, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %7, align 4
  br label %170

309:                                              ; preds = %170
  %310 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %311 = load i32, i32* @B43_NPHY_BPHY_CTL2, align 4
  %312 = load i32, i32* @B43_NPHY_BPHY_CTL2_LUT, align 4
  %313 = xor i32 %312, -1
  %314 = call i32 @b43_phy_mask(%struct.b43_wldev* %310, i32 %311, i32 %313)
  %315 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %316 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %309
  %320 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %321 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %320, i32 0)
  br label %322

322:                                              ; preds = %319, %309
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @B43_NTAB32(i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
