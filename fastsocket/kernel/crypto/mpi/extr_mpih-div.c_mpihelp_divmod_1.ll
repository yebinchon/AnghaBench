; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpih-div.c_mpihelp_divmod_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpih-div.c_mpihelp_divmod_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UDIV_TIME = common dso_local global i32 0, align 4
@UMUL_TIME = common dso_local global i32 0, align 4
@BITS_PER_MPI_LIMB = common dso_local global i32 0, align 4
@UDIV_NEEDS_NORMALIZATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpihelp_divmod_1(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %293

22:                                               ; preds = %4
  %23 = load i32, i32* @UDIV_TIME, align 4
  %24 = load i32, i32* @UMUL_TIME, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 %25, 6
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %177

28:                                               ; preds = %22
  %29 = load i32, i32* @UDIV_TIME, align 4
  %30 = load i32, i32* @UMUL_TIME, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 6
  %33 = sub nsw i32 %29, %32
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* @UDIV_TIME, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %177

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @count_leading_zeros(i32 %39, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %121

44:                                               ; preds = %38
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 -1, i32* %16, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 0, %55
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @udiv_qrnnd(i32 %53, i32 %54, i32 %56, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %52, %51
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 %67, %68
  %70 = ashr i32 %66, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 2
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %103, %59
  %74 = load i32, i32* %10, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %15, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %94, %95
  %97 = ashr i32 %93, %96
  %98 = or i32 %92, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @UDIV_QRNND_PREINV(i32 %87, i32 %88, i32 %89, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %76
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %10, align 4
  br label %73

106:                                              ; preds = %73
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %15, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @UDIV_QRNND_PREINV(i32 %109, i32 %110, i32 %111, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %15, align 4
  %120 = ashr i32 %118, %119
  store i32 %120, i32* %5, align 4
  br label %293

121:                                              ; preds = %38
  %122 = load i32, i32* %9, align 4
  %123 = shl i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  store i32 -1, i32* %17, align 4
  br label %133

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 0, %129
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @udiv_qrnnd(i32 %127, i32 %128, i32 %130, i32 0, i32 %131)
  br label %133

133:                                              ; preds = %126, %125
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  store i32 0, i32* %13, align 4
  br label %151

145:                                              ; preds = %133
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %10, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %144
  br label %152

152:                                              ; preds = %172, %151
  %153 = load i32, i32* %10, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %152
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %12, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @UDIV_QRNND_PREINV(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %155
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %10, align 4
  br label %152

175:                                              ; preds = %152
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %5, align 4
  br label %293

177:                                              ; preds = %28, %22
  %178 = load i64, i64* @UDIV_NEEDS_NORMALIZATION, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %250

180:                                              ; preds = %177
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @count_leading_zeros(i32 %181, i32 %182)
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %249

186:                                              ; preds = %180
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %9, align 4
  %189 = shl i32 %188, %187
  store i32 %189, i32* %9, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %198 = load i32, i32* %18, align 4
  %199 = sub nsw i32 %197, %198
  %200 = ashr i32 %196, %199
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %8, align 4
  %202 = sub nsw i32 %201, 2
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %232, %186
  %204 = load i32, i32* %10, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %235

206:                                              ; preds = %203
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %12, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %18, align 4
  %222 = shl i32 %220, %221
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %225 = load i32, i32* %18, align 4
  %226 = sub nsw i32 %224, %225
  %227 = ashr i32 %223, %226
  %228 = or i32 %222, %227
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @udiv_qrnnd(i32 %217, i32 %218, i32 %219, i32 %228, i32 %229)
  %231 = load i32, i32* %12, align 4
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %206
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %10, align 4
  br label %203

235:                                              ; preds = %203
  %236 = load i32*, i32** %6, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %18, align 4
  %243 = shl i32 %241, %242
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @udiv_qrnnd(i32 %238, i32 %239, i32 %240, i32 %243, i32 %244)
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %18, align 4
  %248 = ashr i32 %246, %247
  store i32 %248, i32* %5, align 4
  br label %293

249:                                              ; preds = %180
  br label %250

250:                                              ; preds = %249, %177
  %251 = load i32, i32* %8, align 4
  %252 = sub nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp sge i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %250
  store i32 0, i32* %13, align 4
  br label %268

262:                                              ; preds = %250
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %10, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %262, %261
  br label %269

269:                                              ; preds = %288, %268
  %270 = load i32, i32* %10, align 4
  %271 = icmp sge i32 %270, 0
  br i1 %271, label %272, label %291

272:                                              ; preds = %269
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %12, align 4
  %278 = load i32*, i32** %6, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @udiv_qrnnd(i32 %282, i32 %283, i32 %284, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %272
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %10, align 4
  br label %269

291:                                              ; preds = %269
  %292 = load i32, i32* %13, align 4
  store i32 %292, i32* %5, align 4
  br label %293

293:                                              ; preds = %291, %235, %175, %106, %21
  %294 = load i32, i32* %5, align 4
  ret i32 %294
}

declare dso_local i32 @count_leading_zeros(i32, i32) #1

declare dso_local i32 @udiv_qrnnd(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UDIV_QRNND_PREINV(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
