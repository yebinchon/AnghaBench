; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_get_tx_gains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_get_tx_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_txgains = type { i32*, i32*, i32*, i32* }
%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i32 }

@B43_NPHY_C1_TXPCTL_STAT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_STAT_BIDX = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_STAT_BIDX_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_C2_TXPCTL_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nphy_txgains*, %struct.b43_wldev*)* @b43_nphy_get_tx_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_get_tx_gains(%struct.nphy_txgains* noalias sret %0, %struct.b43_wldev* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.b43_wldev* %1, %struct.b43_wldev** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.b43_phy_n*, %struct.b43_phy_n** %12, align 8
  store %struct.b43_phy_n* %13, %struct.b43_phy_n** %4, align 8
  store i32* null, i32** %6, align 8
  %14 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %141, label %18

18:                                               ; preds = %2
  %19 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %20 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = call i32 @B43_NTAB16(i32 7, i32 272)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %30 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %27, i32 %28, i32 2, i32* %29)
  %31 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %32 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %26
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %137, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %140

42:                                               ; preds = %39
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 3
  br i1 %47, label %48, label %92

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 240
  %64 = ashr i32 %63, 4
  %65 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 3840
  %75 = ashr i32 %74, 8
  %76 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 28672
  %86 = ashr i32 %85, 12
  %87 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %86, i32* %91, align 4
  br label %136

92:                                               ; preds = %42
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 3
  %98 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 12
  %108 = ashr i32 %107, 2
  %109 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 112
  %119 = ashr i32 %118, 4
  %120 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 896
  %130 = ashr i32 %129, 7
  %131 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %130, i32* %135, align 4
  br label %136

136:                                              ; preds = %92, %48
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %39

140:                                              ; preds = %39
  br label %296

141:                                              ; preds = %2
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %143 = load i32, i32* @B43_NPHY_C1_TXPCTL_STAT, align 4
  %144 = call i32 @b43_phy_read(%struct.b43_wldev* %142, i32 %143)
  %145 = load i32, i32* @B43_NPHY_TXPCTL_STAT_BIDX, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @B43_NPHY_TXPCTL_STAT_BIDX_SHIFT, align 4
  %148 = ashr i32 %146, %147
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %148, i32* %149, align 4
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %151 = load i32, i32* @B43_NPHY_C2_TXPCTL_STAT, align 4
  %152 = call i32 @b43_phy_read(%struct.b43_wldev* %150, i32 %151)
  %153 = load i32, i32* @B43_NPHY_TXPCTL_STAT_BIDX, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @B43_NPHY_TXPCTL_STAT_BIDX_SHIFT, align 4
  %156 = ashr i32 %154, %155
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %292, %141
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %295

161:                                              ; preds = %158
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %163 = call i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev* %162)
  store i32* %163, i32** %6, align 8
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %165 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sge i32 %167, 3
  br i1 %168, label %169, label %230

169:                                              ; preds = %161
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %170, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 16
  %179 = and i32 %178, 15
  %180 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %179, i32* %184, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %185, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %192, 20
  %194 = and i32 %193, 15
  %195 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %194, i32* %199, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %200, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = ashr i32 %207, 24
  %209 = and i32 %208, 15
  %210 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %209, i32* %214, align 4
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %215, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 28
  %224 = and i32 %223, 15
  %225 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 %224, i32* %229, align 4
  br label %291

230:                                              ; preds = %161
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %231, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %238, 16
  %240 = and i32 %239, 3
  %241 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %240, i32* %245, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %246, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = ashr i32 %253, 18
  %255 = and i32 %254, 3
  %256 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %261, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = ashr i32 %268, 20
  %270 = and i32 %269, 7
  %271 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %270, i32* %275, align 4
  %276 = load i32*, i32** %6, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %276, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = ashr i32 %283, 23
  %285 = and i32 %284, 7
  %286 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %0, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %285, i32* %290, align 4
  br label %291

291:                                              ; preds = %230, %169
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  br label %158

295:                                              ; preds = %158
  br label %296

296:                                              ; preds = %295, %140
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
