; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_dividemant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_dividemant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fp_mant128 = type { i64* }
%struct.fp_ext = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }
%union.fp_mant64 = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.fp_mant128*, %struct.fp_ext*, %struct.fp_ext*)* @fp_dividemant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fp_dividemant(%union.fp_mant128* %0, %struct.fp_ext* %1, %struct.fp_ext* %2) #0 {
  %4 = alloca %union.fp_mant128*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca %struct.fp_ext*, align 8
  %7 = alloca %union.fp_mant128, align 8
  %8 = alloca %union.fp_mant64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %union.fp_mant128* %0, %union.fp_mant128** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  store %struct.fp_ext* %2, %struct.fp_ext** %6, align 8
  %15 = load %union.fp_mant128*, %union.fp_mant128** %4, align 8
  %16 = bitcast %union.fp_mant128* %15 to i64**
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %9, align 8
  %18 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %19 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %23 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %21, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %3
  %28 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %29 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %28, i32 0, i32 0
  %30 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %31 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_3__* %29 to { i64, i32* }*
  %33 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %32, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast %struct.TYPE_3__* %31 to { i64, i32* }*
  %38 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %37, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @fp_sub64(i64 %34, i32* %36, i64 %39, i32* %41)
  %43 = load i64*, i64** %9, align 8
  store i64 1, i64* %43, align 8
  br label %46

44:                                               ; preds = %3
  %45 = load i64*, i64** %9, align 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %9, align 8
  store i64 2147483648, i64* %10, align 8
  %49 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %50 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %56 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %54, %60
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = lshr i64 %64, 1
  %66 = load i64, i64* %10, align 8
  %67 = or i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @fp_div64(i64 %68, i64 %69, i64 %70, i32 0, i64 %71)
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %10, align 8
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %277, %46
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %282

78:                                               ; preds = %75
  %79 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %80 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %86 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %84, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %78
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %96 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %102 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 @fp_div64(i64 %93, i64 %94, i64 0, i32 %100, i64 %107)
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @fp_mul64(i64 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i64, i64* %10, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %115
  store i64 %118, i64* %116, align 8
  br label %149

119:                                              ; preds = %78
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %123 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %130 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %136 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 @fp_div64(i64 %120, i64 %121, i64 %128, i32 %134, i64 %141)
  %143 = load i64*, i64** %9, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @fp_mul64(i64 %144, i64 %145, i64 %146, i64 %147)
  br label %149

149:                                              ; preds = %119, %92
  %150 = bitcast %union.fp_mant128* %7 to i64**
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = bitcast %union.fp_mant128* %7 to i64**
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %159 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %12, align 8
  %166 = load i64*, i64** %9, align 8
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %165, %167
  %169 = call i32 @fp_mul64(i64 %153, i64 %157, i64 %164, i64 %168)
  %170 = bitcast %union.fp_mant128* %7 to i64**
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = bitcast %union.fp_mant128* %7 to i64**
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %11, align 8
  %179 = call i32 @fp_add64(i64 %173, i64 %177, i32 0, i64 %178)
  %180 = bitcast %union.fp_mant128* %7 to i64**
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 2
  store i64 0, i64* %182, align 8
  %183 = bitcast %union.fp_mant64* %8 to i64**
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = bitcast %union.fp_mant64* %8 to i64**
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** %9, align 8
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %194 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = call i32 @fp_mul64(i64 %186, i64 %190, i64 %192, i64 %199)
  %201 = bitcast %union.fp_mant64* %8 to i64**
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = bitcast %union.fp_mant64* %8 to i64**
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 1
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %union.fp_mant128, %union.fp_mant128* %7, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = call i32 @fp_sub96c(i64* %210, i32 0, i64 %204, i64 %208)
  %212 = bitcast %union.fp_mant128* %7 to i64**
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 1
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %218 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %216, i32* %221, align 4
  %222 = bitcast %union.fp_mant128* %7 to i64**
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 2
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %228 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 %226, i32* %231, align 4
  br label %232

232:                                              ; preds = %252, %149
  %233 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %234 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %241 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %union.fp_mant128, %union.fp_mant128* %7, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = call i32 @fp_sub96c(i64* %248, i32 0, i64 %239, i64 %246)
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  br i1 %251, label %252, label %276

252:                                              ; preds = %232
  %253 = bitcast %union.fp_mant128* %7 to i64**
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 1
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %259 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %257, i32* %262, align 4
  %263 = bitcast %union.fp_mant128* %7 to i64**
  %264 = load i64*, i64** %263, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 2
  %266 = load i64, i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %269 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  store i32 %267, i32* %272, align 4
  %273 = load i64*, i64** %9, align 8
  %274 = load i64, i64* %273, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %273, align 8
  br label %232

276:                                              ; preds = %232
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  %280 = load i64*, i64** %9, align 8
  %281 = getelementptr inbounds i64, i64* %280, i32 1
  store i64* %281, i64** %9, align 8
  br label %75

282:                                              ; preds = %75
  ret void
}

declare dso_local i32 @fp_sub64(i64, i32*, i64, i32*) #1

declare dso_local i32 @fp_div64(i64, i64, i64, i32, i64) #1

declare dso_local i32 @fp_mul64(i64, i64, i64, i64) #1

declare dso_local i32 @fp_add64(i64, i64, i32, i64) #1

declare dso_local i32 @fp_sub96c(i64*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
