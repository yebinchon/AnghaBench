; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@KMEMCHECK_SHADOW_INITIALIZED = common dso_local global i32 0, align 4
@kmemcheck_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64, i32)* @kmemcheck_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmemcheck_copy(%struct.pt_regs* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ugt i64 %18, 32
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = sub i64 %28, 1
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @PAGE_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %4
  %40 = load i64, i64* %6, align 8
  %41 = call i32* @kmemcheck_shadow_lookup(i64 %40)
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @kmemcheck_save_addr(i64 %45)
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %60, %44
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %47

63:                                               ; preds = %47
  br label %78

64:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %74, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %71 = load i32, i32* %15, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %65

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %63
  br label %171

79:                                               ; preds = %4
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %6, align 8
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = zext i32 %84 to i64
  %86 = icmp ugt i64 %85, 32
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load i64, i64* %6, align 8
  %90 = call i32* @kmemcheck_shadow_lookup(i64 %89)
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %79
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @kmemcheck_save_addr(i64 %94)
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %109, %93
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %15, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %107
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %15, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %96

112:                                              ; preds = %96
  br label %127

113:                                              ; preds = %79
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %123, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %120 = load i32, i32* %15, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %121
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %15, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %114

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i64, i64* %13, align 8
  %129 = call i32* @kmemcheck_shadow_lookup(i64 %128)
  store i32* %129, i32** %14, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %155

132:                                              ; preds = %127
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @kmemcheck_save_addr(i64 %133)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %151, %132
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = sub i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %15, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %149
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %136

154:                                              ; preds = %136
  br label %170

155:                                              ; preds = %127
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %166, %155
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %163 = load i32, i32* %15, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %164
  store i32 %162, i32* %165, align 4
  br label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %15, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %157

169:                                              ; preds = %157
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %78
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @PAGE_MASK, align 8
  %174 = and i64 %172, %173
  store i64 %174, i64* %11, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = zext i32 %176 to i64
  %178 = add i64 %175, %177
  %179 = sub i64 %178, 1
  store i64 %179, i64* %12, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* @PAGE_MASK, align 8
  %182 = and i64 %180, %181
  store i64 %182, i64* %13, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* %13, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i64 @likely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %171
  %190 = load i64, i64* %7, align 8
  %191 = call i32* @kmemcheck_shadow_lookup(i64 %190)
  store i32* %191, i32** %14, align 8
  %192 = load i32*, i32** %14, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %218

194:                                              ; preds = %189
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @kmemcheck_save_addr(i64 %195)
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %214, %194
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %197
  %202 = load i32, i32* %15, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = load i32, i32* %15, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %205, i32* %209, align 4
  %210 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %211 = load i32, i32* %15, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %212
  store i32 %210, i32* %213, align 4
  br label %214

214:                                              ; preds = %201
  %215 = load i32, i32* %15, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %197

217:                                              ; preds = %197
  br label %218

218:                                              ; preds = %217, %189
  br label %290

219:                                              ; preds = %171
  %220 = load i64, i64* %13, align 8
  %221 = load i64, i64* %7, align 8
  %222 = sub i64 %220, %221
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = zext i32 %224 to i64
  %226 = icmp ugt i64 %225, 32
  %227 = zext i1 %226 to i32
  %228 = call i32 @BUG_ON(i32 %227)
  %229 = load i64, i64* %7, align 8
  %230 = call i32* @kmemcheck_shadow_lookup(i64 %229)
  store i32* %230, i32** %14, align 8
  %231 = load i32*, i32** %14, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %257

233:                                              ; preds = %219
  %234 = load i64, i64* %7, align 8
  %235 = call i32 @kmemcheck_save_addr(i64 %234)
  store i32 0, i32* %15, align 4
  br label %236

236:                                              ; preds = %253, %233
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = load i32, i32* %15, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %15, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  %249 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %250 = load i32, i32* %15, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %251
  store i32 %249, i32* %252, align 4
  br label %253

253:                                              ; preds = %240
  %254 = load i32, i32* %15, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %15, align 4
  br label %236

256:                                              ; preds = %236
  br label %257

257:                                              ; preds = %256, %219
  %258 = load i64, i64* %13, align 8
  %259 = call i32* @kmemcheck_shadow_lookup(i64 %258)
  store i32* %259, i32** %14, align 8
  %260 = load i32*, i32** %14, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %289

262:                                              ; preds = %257
  %263 = load i64, i64* %13, align 8
  %264 = call i32 @kmemcheck_save_addr(i64 %263)
  %265 = load i32, i32* %16, align 4
  store i32 %265, i32* %15, align 4
  br label %266

266:                                              ; preds = %285, %262
  %267 = load i32, i32* %15, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp ult i32 %267, %268
  br i1 %269, label %270, label %288

270:                                              ; preds = %266
  %271 = load i32, i32* %15, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %14, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %16, align 4
  %278 = sub i32 %276, %277
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  store i32 %274, i32* %280, align 4
  %281 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %282 = load i32, i32* %15, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %283
  store i32 %281, i32* %284, align 4
  br label %285

285:                                              ; preds = %270
  %286 = load i32, i32* %15, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %15, align 4
  br label %266

288:                                              ; preds = %266
  br label %289

289:                                              ; preds = %288, %257
  br label %290

290:                                              ; preds = %289, %218
  %291 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %292 = load i32, i32* %8, align 4
  %293 = call i32 @kmemcheck_shadow_test(i32* %291, i32 %292)
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %311

298:                                              ; preds = %290
  %299 = load i32, i32* @kmemcheck_enabled, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %298
  %302 = load i32, i32* %10, align 4
  %303 = load i64, i64* %6, align 8
  %304 = load i32, i32* %8, align 4
  %305 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %306 = call i32 @kmemcheck_error_save(i32 %302, i64 %303, i32 %304, %struct.pt_regs* %305)
  br label %307

307:                                              ; preds = %301, %298
  %308 = load i32, i32* @kmemcheck_enabled, align 4
  %309 = icmp eq i32 %308, 2
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i32 0, i32* @kmemcheck_enabled, align 4
  br label %311

311:                                              ; preds = %297, %310, %307
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @kmemcheck_shadow_lookup(i64) #1

declare dso_local i32 @kmemcheck_save_addr(i64) #1

declare dso_local i32 @kmemcheck_shadow_test(i32*, i32) #1

declare dso_local i32 @kmemcheck_error_save(i32, i64, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
