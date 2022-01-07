; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_salsa20_generic.c_salsa20_wordtobyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_salsa20_generic.c_salsa20_wordtobyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*)* @salsa20_wordtobyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salsa20_wordtobyte(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca [16 x i64], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %8 = load i64*, i64** %4, align 8
  %9 = call i32 @memcpy(i64* %7, i64* %8, i32 128)
  store i32 20, i32* %6, align 4
  br label %10

10:                                               ; preds = %302, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %305

13:                                               ; preds = %10
  %14 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %15 = load i64, i64* %14, align 16
  %16 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 12
  %17 = load i64, i64* %16, align 16
  %18 = add nsw i64 %15, %17
  %19 = call i64 @rol32(i64 %18, i32 7)
  %20 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 4
  %21 = load i64, i64* %20, align 16
  %22 = xor i64 %21, %19
  store i64 %22, i64* %20, align 16
  %23 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 4
  %24 = load i64, i64* %23, align 16
  %25 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %26 = load i64, i64* %25, align 16
  %27 = add nsw i64 %24, %26
  %28 = call i64 @rol32(i64 %27, i32 9)
  %29 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 8
  %30 = load i64, i64* %29, align 16
  %31 = xor i64 %30, %28
  store i64 %31, i64* %29, align 16
  %32 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 8
  %33 = load i64, i64* %32, align 16
  %34 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 4
  %35 = load i64, i64* %34, align 16
  %36 = add nsw i64 %33, %35
  %37 = call i64 @rol32(i64 %36, i32 13)
  %38 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 12
  %39 = load i64, i64* %38, align 16
  %40 = xor i64 %39, %37
  store i64 %40, i64* %38, align 16
  %41 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 12
  %42 = load i64, i64* %41, align 16
  %43 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 8
  %44 = load i64, i64* %43, align 16
  %45 = add nsw i64 %42, %44
  %46 = call i64 @rol32(i64 %45, i32 18)
  %47 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %48 = load i64, i64* %47, align 16
  %49 = xor i64 %48, %46
  store i64 %49, i64* %47, align 16
  %50 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 5
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %51, %53
  %55 = call i64 @rol32(i64 %54, i32 7)
  %56 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 9
  %57 = load i64, i64* %56, align 8
  %58 = xor i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 9
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 5
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %60, %62
  %64 = call i64 @rol32(i64 %63, i32 9)
  %65 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 13
  %66 = load i64, i64* %65, align 8
  %67 = xor i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 13
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 9
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %69, %71
  %73 = call i64 @rol32(i64 %72, i32 13)
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = xor i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 13
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %78, %80
  %82 = call i64 @rol32(i64 %81, i32 18)
  %83 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 5
  %84 = load i64, i64* %83, align 8
  %85 = xor i64 %84, %82
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 10
  %87 = load i64, i64* %86, align 16
  %88 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 6
  %89 = load i64, i64* %88, align 16
  %90 = add nsw i64 %87, %89
  %91 = call i64 @rol32(i64 %90, i32 7)
  %92 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 14
  %93 = load i64, i64* %92, align 16
  %94 = xor i64 %93, %91
  store i64 %94, i64* %92, align 16
  %95 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 14
  %96 = load i64, i64* %95, align 16
  %97 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 10
  %98 = load i64, i64* %97, align 16
  %99 = add nsw i64 %96, %98
  %100 = call i64 @rol32(i64 %99, i32 9)
  %101 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 2
  %102 = load i64, i64* %101, align 16
  %103 = xor i64 %102, %100
  store i64 %103, i64* %101, align 16
  %104 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 2
  %105 = load i64, i64* %104, align 16
  %106 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 14
  %107 = load i64, i64* %106, align 16
  %108 = add nsw i64 %105, %107
  %109 = call i64 @rol32(i64 %108, i32 13)
  %110 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 6
  %111 = load i64, i64* %110, align 16
  %112 = xor i64 %111, %109
  store i64 %112, i64* %110, align 16
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 6
  %114 = load i64, i64* %113, align 16
  %115 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 2
  %116 = load i64, i64* %115, align 16
  %117 = add nsw i64 %114, %116
  %118 = call i64 @rol32(i64 %117, i32 18)
  %119 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 10
  %120 = load i64, i64* %119, align 16
  %121 = xor i64 %120, %118
  store i64 %121, i64* %119, align 16
  %122 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 15
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 11
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %123, %125
  %127 = call i64 @rol32(i64 %126, i32 7)
  %128 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 3
  %129 = load i64, i64* %128, align 8
  %130 = xor i64 %129, %127
  store i64 %130, i64* %128, align 8
  %131 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 3
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 15
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %132, %134
  %136 = call i64 @rol32(i64 %135, i32 9)
  %137 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 7
  %138 = load i64, i64* %137, align 8
  %139 = xor i64 %138, %136
  store i64 %139, i64* %137, align 8
  %140 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 7
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 3
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %141, %143
  %145 = call i64 @rol32(i64 %144, i32 13)
  %146 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 11
  %147 = load i64, i64* %146, align 8
  %148 = xor i64 %147, %145
  store i64 %148, i64* %146, align 8
  %149 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 11
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 7
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %150, %152
  %154 = call i64 @rol32(i64 %153, i32 18)
  %155 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 15
  %156 = load i64, i64* %155, align 8
  %157 = xor i64 %156, %154
  store i64 %157, i64* %155, align 8
  %158 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %159 = load i64, i64* %158, align 16
  %160 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 3
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %159, %161
  %163 = call i64 @rol32(i64 %162, i32 7)
  %164 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 1
  %165 = load i64, i64* %164, align 8
  %166 = xor i64 %165, %163
  store i64 %166, i64* %164, align 8
  %167 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %170 = load i64, i64* %169, align 16
  %171 = add nsw i64 %168, %170
  %172 = call i64 @rol32(i64 %171, i32 9)
  %173 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 2
  %174 = load i64, i64* %173, align 16
  %175 = xor i64 %174, %172
  store i64 %175, i64* %173, align 16
  %176 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 2
  %177 = load i64, i64* %176, align 16
  %178 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %177, %179
  %181 = call i64 @rol32(i64 %180, i32 13)
  %182 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 3
  %183 = load i64, i64* %182, align 8
  %184 = xor i64 %183, %181
  store i64 %184, i64* %182, align 8
  %185 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 3
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 2
  %188 = load i64, i64* %187, align 16
  %189 = add nsw i64 %186, %188
  %190 = call i64 @rol32(i64 %189, i32 18)
  %191 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %192 = load i64, i64* %191, align 16
  %193 = xor i64 %192, %190
  store i64 %193, i64* %191, align 16
  %194 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 5
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 4
  %197 = load i64, i64* %196, align 16
  %198 = add nsw i64 %195, %197
  %199 = call i64 @rol32(i64 %198, i32 7)
  %200 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 6
  %201 = load i64, i64* %200, align 16
  %202 = xor i64 %201, %199
  store i64 %202, i64* %200, align 16
  %203 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 6
  %204 = load i64, i64* %203, align 16
  %205 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 5
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %204, %206
  %208 = call i64 @rol32(i64 %207, i32 9)
  %209 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 7
  %210 = load i64, i64* %209, align 8
  %211 = xor i64 %210, %208
  store i64 %211, i64* %209, align 8
  %212 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 7
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 6
  %215 = load i64, i64* %214, align 16
  %216 = add nsw i64 %213, %215
  %217 = call i64 @rol32(i64 %216, i32 13)
  %218 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 4
  %219 = load i64, i64* %218, align 16
  %220 = xor i64 %219, %217
  store i64 %220, i64* %218, align 16
  %221 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 4
  %222 = load i64, i64* %221, align 16
  %223 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 7
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %222, %224
  %226 = call i64 @rol32(i64 %225, i32 18)
  %227 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 5
  %228 = load i64, i64* %227, align 8
  %229 = xor i64 %228, %226
  store i64 %229, i64* %227, align 8
  %230 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 10
  %231 = load i64, i64* %230, align 16
  %232 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 9
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %231, %233
  %235 = call i64 @rol32(i64 %234, i32 7)
  %236 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 11
  %237 = load i64, i64* %236, align 8
  %238 = xor i64 %237, %235
  store i64 %238, i64* %236, align 8
  %239 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 11
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 10
  %242 = load i64, i64* %241, align 16
  %243 = add nsw i64 %240, %242
  %244 = call i64 @rol32(i64 %243, i32 9)
  %245 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 8
  %246 = load i64, i64* %245, align 16
  %247 = xor i64 %246, %244
  store i64 %247, i64* %245, align 16
  %248 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 8
  %249 = load i64, i64* %248, align 16
  %250 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 11
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %249, %251
  %253 = call i64 @rol32(i64 %252, i32 13)
  %254 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 9
  %255 = load i64, i64* %254, align 8
  %256 = xor i64 %255, %253
  store i64 %256, i64* %254, align 8
  %257 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 9
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 8
  %260 = load i64, i64* %259, align 16
  %261 = add nsw i64 %258, %260
  %262 = call i64 @rol32(i64 %261, i32 18)
  %263 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 10
  %264 = load i64, i64* %263, align 16
  %265 = xor i64 %264, %262
  store i64 %265, i64* %263, align 16
  %266 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 15
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 14
  %269 = load i64, i64* %268, align 16
  %270 = add nsw i64 %267, %269
  %271 = call i64 @rol32(i64 %270, i32 7)
  %272 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 12
  %273 = load i64, i64* %272, align 16
  %274 = xor i64 %273, %271
  store i64 %274, i64* %272, align 16
  %275 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 12
  %276 = load i64, i64* %275, align 16
  %277 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 15
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %276, %278
  %280 = call i64 @rol32(i64 %279, i32 9)
  %281 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 13
  %282 = load i64, i64* %281, align 8
  %283 = xor i64 %282, %280
  store i64 %283, i64* %281, align 8
  %284 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 13
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 12
  %287 = load i64, i64* %286, align 16
  %288 = add nsw i64 %285, %287
  %289 = call i64 @rol32(i64 %288, i32 13)
  %290 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 14
  %291 = load i64, i64* %290, align 16
  %292 = xor i64 %291, %289
  store i64 %292, i64* %290, align 16
  %293 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 14
  %294 = load i64, i64* %293, align 16
  %295 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 13
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %294, %296
  %298 = call i64 @rol32(i64 %297, i32 18)
  %299 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 15
  %300 = load i64, i64* %299, align 8
  %301 = xor i64 %300, %298
  store i64 %301, i64* %299, align 8
  br label %302

302:                                              ; preds = %13
  %303 = load i32, i32* %6, align 4
  %304 = sub nsw i32 %303, 2
  store i32 %304, i32* %6, align 4
  br label %10

305:                                              ; preds = %10
  store i32 0, i32* %6, align 4
  br label %306

306:                                              ; preds = %320, %305
  %307 = load i32, i32* %6, align 4
  %308 = icmp slt i32 %307, 16
  br i1 %308, label %309, label %323

309:                                              ; preds = %306
  %310 = load i64*, i64** %4, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %318, %314
  store i64 %319, i64* %317, align 8
  br label %320

320:                                              ; preds = %309
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %6, align 4
  br label %306

323:                                              ; preds = %306
  store i32 0, i32* %6, align 4
  br label %324

324:                                              ; preds = %338, %323
  %325 = load i32, i32* %6, align 4
  %326 = icmp slt i32 %325, 16
  br i1 %326, label %327, label %341

327:                                              ; preds = %324
  %328 = load i32*, i32** %3, align 8
  %329 = load i32, i32* %6, align 4
  %330 = mul nsw i32 4, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = call i32 @U32TO8_LITTLE(i32* %332, i64 %336)
  br label %338

338:                                              ; preds = %327
  %339 = load i32, i32* %6, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %6, align 4
  br label %324

341:                                              ; preds = %324
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @rol32(i64, i32) #1

declare dso_local i32 @U32TO8_LITTLE(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
