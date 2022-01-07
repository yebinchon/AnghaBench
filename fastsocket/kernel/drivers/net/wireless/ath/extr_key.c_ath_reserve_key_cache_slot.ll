; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_reserve_key_cache_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_reserve_key_cache_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, i32, i32 }

@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@ATH_CRYPT_CAP_MIC_COMBINED = common dso_local global i32 0, align 4
@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i64)* @ath_reserve_key_cache_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_reserve_key_cache_slot(%struct.ath_common* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %12 = call i32 @ath_reserve_key_cache_slot_tkip(%struct.ath_common* %11)
  store i32 %12, i32* %3, align 4
  br label %280

13:                                               ; preds = %2
  %14 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %15 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %174, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %170, %20
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 4
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %173

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %32 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @test_bit(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 32
  %39 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %40 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 64
  %47 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %48 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @test_bit(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 64
  %55 = add nsw i32 %54, 32
  %56 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %57 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52, %44, %36
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %280

63:                                               ; preds = %52, %29
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 32
  %66 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %67 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @test_bit(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %74 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @test_bit(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 64
  %81 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %82 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @test_bit(i32 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 64
  %89 = add nsw i32 %88, 32
  %90 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %91 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @test_bit(i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86, %78, %71
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 32
  store i32 %97, i32* %3, align 4
  br label %280

98:                                               ; preds = %86, %63
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 64
  %101 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %102 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @test_bit(i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %133, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %109 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @test_bit(i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 32
  %116 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %117 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @test_bit(i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 64
  %124 = add nsw i32 %123, 32
  %125 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %126 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @test_bit(i32 %124, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121, %113, %106
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 64
  store i32 %132, i32* %3, align 4
  br label %280

133:                                              ; preds = %121, %98
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 64
  %136 = add nsw i32 %135, 32
  %137 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %138 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @test_bit(i32 %136, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %169, label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %145 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @test_bit(i32 %143, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 32
  %152 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %153 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @test_bit(i32 %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 64
  %160 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %161 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @test_bit(i32 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %157, %149, %142
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 64
  %168 = add nsw i32 %167, 32
  store i32 %168, i32* %3, align 4
  br label %280

169:                                              ; preds = %157, %133
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %22

173:                                              ; preds = %22
  br label %223

174:                                              ; preds = %13
  %175 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %219, %174
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %179 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sdiv i32 %180, 2
  %182 = icmp slt i32 %177, %181
  br i1 %182, label %183, label %222

183:                                              ; preds = %176
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %186 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @test_bit(i32 %184, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 64
  %193 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %194 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @test_bit(i32 %192, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %3, align 4
  br label %280

200:                                              ; preds = %190, %183
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %203 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @test_bit(i32 %201, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 64
  %210 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %211 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @test_bit(i32 %209, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 64
  store i32 %217, i32* %3, align 4
  br label %280

218:                                              ; preds = %207, %200
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  br label %176

222:                                              ; preds = %176
  br label %223

223:                                              ; preds = %222, %173
  %224 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %276, %223
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %228 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %279

231:                                              ; preds = %225
  %232 = load i32, i32* %6, align 4
  %233 = icmp sge i32 %232, 64
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %237 = add nsw i32 64, %236
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %276

240:                                              ; preds = %234, %231
  %241 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %242 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %266, label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %6, align 4
  %249 = icmp sge i32 %248, 32
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %253 = add nsw i32 32, %252
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %276

256:                                              ; preds = %250, %247
  %257 = load i32, i32* %6, align 4
  %258 = icmp sge i32 %257, 96
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %262 = add nsw i32 96, %261
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  br label %276

265:                                              ; preds = %259, %256
  br label %266

266:                                              ; preds = %265, %240
  %267 = load i32, i32* %6, align 4
  %268 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %269 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i64 @test_bit(i32 %267, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %266
  %274 = load i32, i32* %6, align 4
  store i32 %274, i32* %3, align 4
  br label %280

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275, %264, %255, %239
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %6, align 4
  br label %225

279:                                              ; preds = %225
  store i32 -1, i32* %3, align 4
  br label %280

280:                                              ; preds = %279, %273, %215, %198, %165, %130, %95, %61, %10
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @ath_reserve_key_cache_slot_tkip(%struct.ath_common*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
