; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_update_per.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_update_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_rate_table = type { i32 }
%struct.ath_rate_priv = type { i32*, i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ath_rc_update_per.nretry_to_per_lookup = internal constant [10 x i32] [i32 0, i32 25, i32 50, i32 75, i32 80, i32 83, i32 85, i32 87, i32 88, i32 90], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rate_table*, %struct.ath_rate_priv*, %struct.ieee80211_tx_info*, i32, i32, i32, i32)* @ath_rc_update_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rc_update_per(%struct.ath_softc* %0, %struct.ath_rate_table* %1, %struct.ath_rate_priv* %2, %struct.ieee80211_tx_info* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_rate_table*, align 8
  %11 = alloca %struct.ath_rate_priv*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
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
  store %struct.ath_softc* %0, %struct.ath_softc** %9, align 8
  store %struct.ath_rate_table* %1, %struct.ath_rate_table** %10, align 8
  store %struct.ath_rate_priv* %2, %struct.ath_rate_priv** %11, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %26 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %19, align 4
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %35, %39
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %101

43:                                               ; preds = %8
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %48 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 30
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %56 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 100
  br i1 %62, label %63, label %70

63:                                               ; preds = %46
  %64 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %65 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 100, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %46
  br label %91

71:                                               ; preds = %43
  %72 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @ath_rc_update_per.nretry_to_per_lookup, i64 0, i64 0))
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %17, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = ashr i32 %81, 3
  %83 = sub nsw i32 %80, %82
  %84 = add nsw i32 %83, 12
  %85 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %86 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %79, %70
  %92 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %93 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %99 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %91
  br label %255

101:                                              ; preds = %8
  %102 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @ath_rc_update_per.nretry_to_per_lookup, i64 0, i64 0))
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %153

112:                                              ; preds = %109
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %112
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %119, %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %21, align 4
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  %133 = mul nsw i32 %130, %132
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* %21, align 4
  %135 = mul nsw i32 100, %134
  %136 = load i32, i32* %20, align 4
  %137 = sdiv i32 %135, %136
  %138 = ashr i32 %137, 3
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = ashr i32 %140, 3
  %142 = sub nsw i32 %139, %141
  %143 = load i32, i32* %22, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %23, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %147 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  br label %152

152:                                              ; preds = %118, %112
  br label %170

153:                                              ; preds = %109
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = ashr i32 %155, 3
  %157 = sub nsw i32 %154, %156
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* @ath_rc_update_per.nretry_to_per_lookup, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 3
  %163 = add nsw i32 %157, %162
  %164 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %165 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %163, i32* %169, align 4
  br label %170

170:                                              ; preds = %153, %152
  %171 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %172 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %231

175:                                              ; preds = %170
  %176 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %177 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %231

181:                                              ; preds = %175
  %182 = load i32, i32* %15, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %18, align 4
  %186 = mul nsw i32 2, %185
  %187 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %188 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %186, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %184, %181
  %193 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %194 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %193, i32 0, i32 1
  store i32 0, i32* %194, align 8
  br label %230

195:                                              ; preds = %184
  store i32 0, i32* %24, align 4
  %196 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %197 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %200 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %202 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %24, align 4
  %204 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %205 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %24, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %210, 30
  br i1 %211, label %212, label %219

212:                                              ; preds = %195
  %213 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %214 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %24, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 20, i32* %218, align 4
  br label %219

219:                                              ; preds = %212, %195
  %220 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %221 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %220, i32 0, i32 1
  store i32 0, i32* %221, align 8
  %222 = load i32, i32* %16, align 4
  %223 = load %struct.ath_rate_table*, %struct.ath_rate_table** %10, align 8
  %224 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %225, 2
  %227 = sub nsw i32 %222, %226
  %228 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %229 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %219, %192
  br label %231

231:                                              ; preds = %230, %175, %170
  %232 = load i32, i32* %15, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %236 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %235, i32 0, i32 4
  store i32 0, i32* %236, align 4
  br label %254

237:                                              ; preds = %231
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %240 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %238, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %237
  %244 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %245 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %246, 255
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %250 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %248, %243, %237
  br label %254

254:                                              ; preds = %253, %234
  br label %255

255:                                              ; preds = %254, %100
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
