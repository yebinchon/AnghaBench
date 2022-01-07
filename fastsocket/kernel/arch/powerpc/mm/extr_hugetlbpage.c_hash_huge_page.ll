; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hash_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hash_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64, i64, i32, i32, i32)*, i64 (i64, i64, i64, i64, i32, i32, i32)*, i32 (i64)* }
%struct.mm_struct = type { i32 }

@mmu_huge_psizes = common dso_local global i32* null, align 8
@_PAGE_PRESENT = common dso_local global i64 0, align 8
@_PAGE_BUSY = common dso_local global i64 0, align 8
@_PAGE_ACCESSED = common dso_local global i64 0, align 8
@_PAGE_RW = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@_PAGE_EXEC = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@CPU_FTR_COHERENT_ICACHE = common dso_local global i32 0, align 4
@_PAGE_HASHPTE = common dso_local global i64 0, align 8
@_PAGE_F_SECOND = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@_PAGE_F_GIX = common dso_local global i64 0, align 8
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_PAGE_HPTEFLAGS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@_PAGE_WRITETHRU = common dso_local global i64 0, align 8
@_PAGE_NO_CACHE = common dso_local global i64 0, align 8
@_PAGE_COHERENT = common dso_local global i64 0, align 8
@_PAGE_GUARDED = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i32 0, align 4
@_PAGE_HPTE_SUB0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_huge_page(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @user_segment_size(i64 %29)
  store i32 %30, i32* %22, align 4
  %31 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @get_slice_psize(%struct.mm_struct* %31, i64 %32)
  store i32 %33, i32* %23, align 4
  %34 = load i32*, i32** @mmu_huge_psizes, align 8
  %35 = load i32, i32* %23, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %309

41:                                               ; preds = %6
  %42 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32* @huge_pte_offset(%struct.mm_struct* %42, i64 %43)
  store i32* %44, i32** %14, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %22, align 4
  %48 = call i64 @hpt_va(i64 %45, i64 %46, i32 %47)
  store i64 %48, i64* %17, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  br label %309

56:                                               ; preds = %41
  %57 = load i64, i64* @_PAGE_PRESENT, align 8
  %58 = load i64, i64* %9, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %95, %56
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @pte_val(i32 %62)
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* @_PAGE_BUSY, align 8
  %66 = and i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %309

71:                                               ; preds = %60
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %15, align 8
  %74 = xor i64 %73, -1
  %75 = and i64 %72, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %309

80:                                               ; preds = %71
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* @_PAGE_BUSY, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* @_PAGE_ACCESSED, align 8
  %85 = or i64 %83, %84
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @_PAGE_RW, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load i64, i64* @_PAGE_DIRTY, align 8
  %92 = load i64, i64* %16, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %16, align 8
  br label %94

94:                                               ; preds = %90, %80
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %15, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = bitcast i32* %97 to i64*
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %16, align 8
  %101 = call i64 @__cmpxchg_u64(i64* %98, i64 %99, i64 %100)
  %102 = icmp ne i64 %96, %101
  br i1 %102, label %60, label %103

103:                                              ; preds = %95
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* @_PAGE_RW, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = or i32 2, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %18, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* @_PAGE_EXEC, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %119

117:                                              ; preds = %103
  %118 = load i64, i64* @HPTE_R_N, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = phi i64 [ 0, %116 ], [ %118, %117 ]
  %121 = load i64, i64* %18, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %18, align 8
  %123 = load i32, i32* %23, align 4
  %124 = call i32 @mmu_psize_to_shift(i32 %123)
  store i32 %124, i32* %24, align 4
  %125 = load i32, i32* %24, align 4
  %126 = zext i32 %125 to i64
  %127 = shl i64 1, %126
  store i64 %127, i64* %20, align 8
  %128 = load i32, i32* @CPU_FTR_COHERENT_ICACHE, align 4
  %129 = call i32 @cpu_has_feature(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %119
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @__pte(i64 %133)
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %20, align 8
  %137 = call i64 @hash_huge_page_do_lazy_icache(i64 %132, i32 %134, i64 %135, i64 %136)
  store i64 %137, i64* %18, align 8
  br label %138

138:                                              ; preds = %131, %119
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* @_PAGE_HASHPTE, align 8
  %141 = and i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %184

145:                                              ; preds = %138
  %146 = load i64, i64* %17, align 8
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* %22, align 4
  %149 = call i64 @hpt_hash(i64 %146, i32 %147, i32 %148)
  store i64 %149, i64* %25, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* @_PAGE_F_SECOND, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i64, i64* %25, align 8
  %156 = xor i64 %155, -1
  store i64 %156, i64* %25, align 8
  br label %157

157:                                              ; preds = %154, %145
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* @htab_hash_mask, align 8
  %160 = and i64 %158, %159
  %161 = load i64, i64* @HPTES_PER_GROUP, align 8
  %162 = mul i64 %160, %161
  store i64 %162, i64* %26, align 8
  %163 = load i64, i64* %15, align 8
  %164 = load i64, i64* @_PAGE_F_GIX, align 8
  %165 = and i64 %163, %164
  %166 = lshr i64 %165, 12
  %167 = load i64, i64* %26, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %26, align 8
  %169 = load i32 (i64, i64, i64, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %170 = load i64, i64* %26, align 8
  %171 = load i64, i64* %18, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 %169(i64 %170, i64 %171, i64 %172, i32 %173, i32 %174, i32 %175)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %183

178:                                              ; preds = %157
  %179 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %180 = xor i64 %179, -1
  %181 = load i64, i64* %15, align 8
  %182 = and i64 %181, %180
  store i64 %182, i64* %15, align 8
  br label %183

183:                                              ; preds = %178, %157
  br label %184

184:                                              ; preds = %183, %138
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* @_PAGE_HASHPTE, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i64 @likely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %302

193:                                              ; preds = %184
  %194 = load i64, i64* %17, align 8
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %22, align 4
  %197 = call i64 @hpt_hash(i64 %194, i32 %195, i32 %196)
  store i64 %197, i64* %27, align 8
  %198 = load i64, i64* %15, align 8
  %199 = call i32 @__pte(i64 %198)
  %200 = call i64 @pte_pfn(i32 %199)
  %201 = load i64, i64* @PAGE_SHIFT, align 8
  %202 = shl i64 %200, %201
  store i64 %202, i64* %19, align 8
  br label %203

203:                                              ; preds = %270, %193
  %204 = load i64, i64* %27, align 8
  %205 = load i64, i64* @htab_hash_mask, align 8
  %206 = and i64 %204, %205
  %207 = load i64, i64* @HPTES_PER_GROUP, align 8
  %208 = mul i64 %206, %207
  %209 = and i64 %208, -8
  store i64 %209, i64* %28, align 8
  %210 = load i64, i64* %16, align 8
  %211 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %212 = xor i64 %211, -1
  %213 = and i64 %210, %212
  %214 = load i64, i64* @_PAGE_HASHPTE, align 8
  %215 = or i64 %213, %214
  store i64 %215, i64* %16, align 8
  %216 = load i64, i64* %16, align 8
  %217 = load i64, i64* @_PAGE_WRITETHRU, align 8
  %218 = load i64, i64* @_PAGE_NO_CACHE, align 8
  %219 = or i64 %217, %218
  %220 = load i64, i64* @_PAGE_COHERENT, align 8
  %221 = or i64 %219, %220
  %222 = load i64, i64* @_PAGE_GUARDED, align 8
  %223 = or i64 %221, %222
  %224 = and i64 %216, %223
  %225 = load i64, i64* %18, align 8
  %226 = or i64 %225, %224
  store i64 %226, i64* %18, align 8
  %227 = load i64 (i64, i64, i64, i64, i32, i32, i32)*, i64 (i64, i64, i64, i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %228 = load i64, i64* %28, align 8
  %229 = load i64, i64* %17, align 8
  %230 = load i64, i64* %19, align 8
  %231 = load i64, i64* %18, align 8
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %22, align 4
  %234 = call i64 %227(i64 %228, i64 %229, i64 %230, i64 %231, i32 0, i32 %232, i32 %233)
  store i64 %234, i64* %21, align 8
  %235 = load i64, i64* %21, align 8
  %236 = icmp eq i64 %235, -1
  %237 = zext i1 %236 to i32
  %238 = call i64 @unlikely(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %275

240:                                              ; preds = %203
  %241 = load i64, i64* %27, align 8
  %242 = xor i64 %241, -1
  %243 = load i64, i64* @htab_hash_mask, align 8
  %244 = and i64 %242, %243
  %245 = load i64, i64* @HPTES_PER_GROUP, align 8
  %246 = mul i64 %244, %245
  %247 = and i64 %246, -8
  store i64 %247, i64* %28, align 8
  %248 = load i64 (i64, i64, i64, i64, i32, i32, i32)*, i64 (i64, i64, i64, i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %249 = load i64, i64* %28, align 8
  %250 = load i64, i64* %17, align 8
  %251 = load i64, i64* %19, align 8
  %252 = load i64, i64* %18, align 8
  %253 = load i32, i32* @HPTE_V_SECONDARY, align 4
  %254 = load i32, i32* %23, align 4
  %255 = load i32, i32* %22, align 4
  %256 = call i64 %248(i64 %249, i64 %250, i64 %251, i64 %252, i32 %253, i32 %254, i32 %255)
  store i64 %256, i64* %21, align 8
  %257 = load i64, i64* %21, align 8
  %258 = icmp eq i64 %257, -1
  br i1 %258, label %259, label %274

259:                                              ; preds = %240
  %260 = call i32 (...) @mftb()
  %261 = and i32 %260, 1
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load i64, i64* %27, align 8
  %265 = load i64, i64* @htab_hash_mask, align 8
  %266 = and i64 %264, %265
  %267 = load i64, i64* @HPTES_PER_GROUP, align 8
  %268 = mul i64 %266, %267
  %269 = and i64 %268, -8
  store i64 %269, i64* %28, align 8
  br label %270

270:                                              ; preds = %263, %259
  %271 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 2), align 8
  %272 = load i64, i64* %28, align 8
  %273 = call i32 %271(i64 %272)
  br label %203

274:                                              ; preds = %240
  br label %275

275:                                              ; preds = %274, %203
  %276 = load i64, i64* %21, align 8
  %277 = icmp eq i64 %276, -2
  %278 = zext i1 %277 to i32
  %279 = call i64 @unlikely(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %275
  %282 = load i64, i64* %15, align 8
  %283 = call i32 @__pte(i64 %282)
  %284 = load i32*, i32** %14, align 8
  store i32 %283, i32* %284, align 4
  %285 = load i64, i64* %10, align 8
  %286 = load i64, i64* %9, align 8
  %287 = load i64, i64* %11, align 8
  %288 = load i64, i64* %13, align 8
  %289 = load i32, i32* %22, align 4
  %290 = load i32, i32* %23, align 4
  %291 = load i64, i64* %15, align 8
  %292 = call i32 @hash_failure_debug(i64 %285, i64 %286, i64 %287, i64 %288, i32 %289, i32 %290, i64 %291)
  store i32 -1, i32* %7, align 4
  br label %309

293:                                              ; preds = %275
  %294 = load i64, i64* %21, align 8
  %295 = shl i64 %294, 12
  %296 = load i64, i64* @_PAGE_F_SECOND, align 8
  %297 = load i64, i64* @_PAGE_F_GIX, align 8
  %298 = or i64 %296, %297
  %299 = and i64 %295, %298
  %300 = load i64, i64* %16, align 8
  %301 = or i64 %300, %299
  store i64 %301, i64* %16, align 8
  br label %302

302:                                              ; preds = %293, %184
  %303 = load i64, i64* %16, align 8
  %304 = load i64, i64* @_PAGE_BUSY, align 8
  %305 = xor i64 %304, -1
  %306 = and i64 %303, %305
  %307 = call i32 @__pte(i64 %306)
  %308 = load i32*, i32** %14, align 8
  store i32 %307, i32* %308, align 4
  store i32 0, i32* %7, align 4
  br label %309

309:                                              ; preds = %302, %281, %79, %70, %55, %40
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

declare dso_local i32 @user_segment_size(i64) #1

declare dso_local i32 @get_slice_psize(%struct.mm_struct*, i64) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @hpt_va(i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @__cmpxchg_u64(i64*, i64, i64) #1

declare dso_local i32 @mmu_psize_to_shift(i32) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @hash_huge_page_do_lazy_icache(i64, i32, i64, i64) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @hash_failure_debug(i64, i64, i64, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
