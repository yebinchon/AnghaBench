; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_setup_bands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_setup_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_5__*, %struct.ath5k_hw* }
%struct.TYPE_5__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, i32, i32, %struct.ieee80211_supported_band*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ath5k_hw = type { i64, %struct.ieee80211_supported_band*, %struct.TYPE_6__**, %struct.ieee80211_supported_band*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR5K_MODE_11G = common dso_local global i32 0, align 4
@ath5k_rates = common dso_local global i32* null, align 8
@AR5K_MODE_11B = common dso_local global i32 0, align 4
@AR5K_AR5211 = common dso_local global i64 0, align 8
@AR5K_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath5k_setup_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_setup_bands(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  store %struct.ath5k_hw* %10, %struct.ath5k_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 3
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.ieee80211_supported_band* %13)
  %15 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %20, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.ieee80211_supported_band* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 3
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %24, align 8
  %26 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i64 %26
  store %struct.ieee80211_supported_band* %27, %struct.ieee80211_supported_band** %4, align 8
  %28 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 0
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 4
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load i32, i32* @AR5K_MODE_11G, align 4
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @test_bit(i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %1
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %48, i32 0, i32 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32*, i32** @ath5k_rates, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = call i32 @memcpy(%struct.TYPE_6__* %50, i32* %52, i32 48)
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 1
  store i32 12, i32* %55, align 8
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %56, i32 0, i32 1
  %58 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %57, align 8
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 3
  store %struct.ieee80211_supported_band* %58, %struct.ieee80211_supported_band** %60, align 8
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 3
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %63, align 8
  %65 = load i32, i32* @AR5K_MODE_11G, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i8* @ath5k_setup_channels(%struct.ath5k_hw* %61, %struct.ieee80211_supported_band* %64, i32 %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %75, align 8
  %77 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %78 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %76, i64 %77
  store %struct.ieee80211_supported_band* %71, %struct.ieee80211_supported_band** %78, align 8
  %79 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %179

85:                                               ; preds = %1
  %86 = load i32, i32* @AR5K_MODE_11B, align 4
  %87 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @test_bit(i32 %86, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %178

93:                                               ; preds = %85
  %94 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32*, i32** @ath5k_rates, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @memcpy(%struct.TYPE_6__* %96, i32* %98, i32 16)
  %100 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %101 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %100, i32 0, i32 1
  store i32 4, i32* %101, align 8
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %103 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AR5K_AR5211, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %144, %107
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %147

111:                                              ; preds = %108
  %112 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %113 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %112, i32 0, i32 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  %121 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %122 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %121, i32 0, i32 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 %120, i32* %127, align 4
  %128 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %129 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %128, i32 0, i32 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 15
  %137 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %138 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %137, i32 0, i32 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  store i32 %136, i32* %143, align 4
  br label %144

144:                                              ; preds = %111
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %108

147:                                              ; preds = %108
  br label %148

148:                                              ; preds = %147, %93
  %149 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %150 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %149, i32 0, i32 1
  %151 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %150, align 8
  %152 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %153 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %152, i32 0, i32 3
  store %struct.ieee80211_supported_band* %151, %struct.ieee80211_supported_band** %153, align 8
  %154 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %155 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %156 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %155, i32 0, i32 3
  %157 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %156, align 8
  %158 = load i32, i32* @AR5K_MODE_11B, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i8* @ath5k_setup_channels(%struct.ath5k_hw* %154, %struct.ieee80211_supported_band* %157, i32 %158, i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %163 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %166 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %168, align 8
  %170 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %171 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %169, i64 %170
  store %struct.ieee80211_supported_band* %164, %struct.ieee80211_supported_band** %171, align 8
  %172 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %173 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %5, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %148, %85
  br label %179

179:                                              ; preds = %178, %47
  %180 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %181 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %182 = call i32 @ath5k_setup_rate_idx(%struct.ath5k_hw* %180, %struct.ieee80211_supported_band* %181)
  %183 = load i32, i32* @AR5K_MODE_11A, align 4
  %184 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %185 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @test_bit(i32 %183, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %242

190:                                              ; preds = %179
  %191 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %192 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %191, i32 0, i32 3
  %193 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %192, align 8
  %194 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %195 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %193, i64 %194
  store %struct.ieee80211_supported_band* %195, %struct.ieee80211_supported_band** %4, align 8
  %196 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %197 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %198 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %200 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %199, i32 0, i32 2
  %201 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %200, align 8
  %202 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %201, i64 %202
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 0
  %206 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %207 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %206, i32 0, i32 4
  store %struct.TYPE_6__* %205, %struct.TYPE_6__** %207, align 8
  %208 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %209 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %208, i32 0, i32 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i32*, i32** @ath5k_rates, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = call i32 @memcpy(%struct.TYPE_6__* %210, i32* %212, i32 32)
  %214 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %215 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %214, i32 0, i32 1
  store i32 8, i32* %215, align 8
  %216 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %217 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %216, i32 0, i32 1
  %218 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %218, i64 %220
  %222 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %223 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %222, i32 0, i32 3
  store %struct.ieee80211_supported_band* %221, %struct.ieee80211_supported_band** %223, align 8
  %224 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %225 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %226 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %225, i32 0, i32 3
  %227 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %226, align 8
  %228 = load i32, i32* @AR5K_MODE_11A, align 4
  %229 = load i32, i32* %5, align 4
  %230 = call i8* @ath5k_setup_channels(%struct.ath5k_hw* %224, %struct.ieee80211_supported_band* %227, i32 %228, i32 %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %233 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 4
  %234 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %235 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %236 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %235, i32 0, i32 0
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %238, align 8
  %240 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %241 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %239, i64 %240
  store %struct.ieee80211_supported_band* %234, %struct.ieee80211_supported_band** %241, align 8
  br label %242

242:                                              ; preds = %190, %179
  %243 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %244 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %245 = call i32 @ath5k_setup_rate_idx(%struct.ath5k_hw* %243, %struct.ieee80211_supported_band* %244)
  %246 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %247 = call i32 @ath5k_debug_dump_bands(%struct.ath5k_hw* %246)
  ret i32 0
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ieee80211_supported_band*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i8* @ath5k_setup_channels(%struct.ath5k_hw*, %struct.ieee80211_supported_band*, i32, i32) #1

declare dso_local i32 @ath5k_setup_rate_idx(%struct.ath5k_hw*, %struct.ieee80211_supported_band*) #1

declare dso_local i32 @ath5k_debug_dump_bands(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
