; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_pas202bcb.c_pas202bcb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_pas202bcb.c_pas202bcb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zc0301_device*)* @pas202bcb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pas202bcb_init(%struct.zc0301_device* %0) #0 {
  %2 = alloca %struct.zc0301_device*, align 8
  %3 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %5 = call i64 @zc0301_write_reg(%struct.zc0301_device* %4, i32 2, i32 0)
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %11 = call i64 @zc0301_write_reg(%struct.zc0301_device* %10, i32 3, i32 2)
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %17 = call i64 @zc0301_write_reg(%struct.zc0301_device* %16, i32 4, i32 128)
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %23 = call i64 @zc0301_write_reg(%struct.zc0301_device* %22, i32 5, i32 1)
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %29 = call i64 @zc0301_write_reg(%struct.zc0301_device* %28, i32 6, i32 224)
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %35 = call i64 @zc0301_write_reg(%struct.zc0301_device* %34, i32 152, i32 0)
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  %40 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %41 = call i64 @zc0301_write_reg(%struct.zc0301_device* %40, i32 154, i32 3)
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  %46 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %47 = call i64 @zc0301_write_reg(%struct.zc0301_device* %46, i32 282, i32 0)
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  %52 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %53 = call i64 @zc0301_write_reg(%struct.zc0301_device* %52, i32 284, i32 3)
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  %58 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %59 = call i64 @zc0301_write_reg(%struct.zc0301_device* %58, i32 155, i32 1)
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %3, align 4
  %64 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %65 = call i64 @zc0301_write_reg(%struct.zc0301_device* %64, i32 156, i32 230)
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  %70 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %71 = call i64 @zc0301_write_reg(%struct.zc0301_device* %70, i32 157, i32 2)
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %3, align 4
  %76 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %77 = call i64 @zc0301_write_reg(%struct.zc0301_device* %76, i32 158, i32 134)
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %3, align 4
  %82 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %83 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %82, i32 2, i32 2)
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  %88 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %89 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %88, i32 10, i32 1)
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %3, align 4
  %94 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %95 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %94, i32 11, i32 1)
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %3, align 4
  %100 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %101 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %100, i32 13, i32 0)
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %3, align 4
  %106 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %107 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %106, i32 18, i32 5)
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %3, align 4
  %112 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %113 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %112, i32 19, i32 99)
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %3, align 4
  %118 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %119 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %118, i32 21, i32 112)
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %3, align 4
  %124 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %125 = call i64 @zc0301_write_reg(%struct.zc0301_device* %124, i32 257, i32 183)
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %3, align 4
  %130 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %131 = call i64 @zc0301_write_reg(%struct.zc0301_device* %130, i32 256, i32 13)
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %3, align 4
  %136 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %137 = call i64 @zc0301_write_reg(%struct.zc0301_device* %136, i32 393, i32 6)
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %3, align 4
  %142 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %143 = call i64 @zc0301_write_reg(%struct.zc0301_device* %142, i32 429, i32 0)
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %3, align 4
  %148 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %149 = call i64 @zc0301_write_reg(%struct.zc0301_device* %148, i32 453, i32 3)
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %3, align 4
  %154 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %155 = call i64 @zc0301_write_reg(%struct.zc0301_device* %154, i32 459, i32 19)
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %3, align 4
  %160 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %161 = call i64 @zc0301_write_reg(%struct.zc0301_device* %160, i32 592, i32 8)
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %3, align 4
  %166 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %167 = call i64 @zc0301_write_reg(%struct.zc0301_device* %166, i32 769, i32 8)
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %3, align 4
  %172 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %173 = call i64 @zc0301_write_reg(%struct.zc0301_device* %172, i32 397, i32 112)
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %3, align 4
  %178 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %179 = call i64 @zc0301_write_reg(%struct.zc0301_device* %178, i32 8, i32 3)
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %3, align 4
  %184 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %185 = call i64 @zc0301_write_reg(%struct.zc0301_device* %184, i32 454, i32 4)
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %3, align 4
  %190 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %191 = call i64 @zc0301_write_reg(%struct.zc0301_device* %190, i32 459, i32 7)
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %3, align 4
  %196 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %197 = call i64 @zc0301_write_reg(%struct.zc0301_device* %196, i32 288, i32 17)
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %3, align 4
  %202 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %203 = call i64 @zc0301_write_reg(%struct.zc0301_device* %202, i32 289, i32 55)
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %3, align 4
  %208 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %209 = call i64 @zc0301_write_reg(%struct.zc0301_device* %208, i32 290, i32 88)
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %3, align 4
  %214 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %215 = call i64 @zc0301_write_reg(%struct.zc0301_device* %214, i32 291, i32 121)
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %3, align 4
  %220 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %221 = call i64 @zc0301_write_reg(%struct.zc0301_device* %220, i32 292, i32 145)
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %3, align 4
  %226 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %227 = call i64 @zc0301_write_reg(%struct.zc0301_device* %226, i32 293, i32 166)
  %228 = load i32, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %3, align 4
  %232 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %233 = call i64 @zc0301_write_reg(%struct.zc0301_device* %232, i32 294, i32 184)
  %234 = load i32, i32* %3, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %3, align 4
  %238 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %239 = call i64 @zc0301_write_reg(%struct.zc0301_device* %238, i32 295, i32 199)
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %241, %239
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %3, align 4
  %244 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %245 = call i64 @zc0301_write_reg(%struct.zc0301_device* %244, i32 296, i32 211)
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %245
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %3, align 4
  %250 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %251 = call i64 @zc0301_write_reg(%struct.zc0301_device* %250, i32 297, i32 222)
  %252 = load i32, i32* %3, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %3, align 4
  %256 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %257 = call i64 @zc0301_write_reg(%struct.zc0301_device* %256, i32 298, i32 230)
  %258 = load i32, i32* %3, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %3, align 4
  %262 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %263 = call i64 @zc0301_write_reg(%struct.zc0301_device* %262, i32 299, i32 237)
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %3, align 4
  %268 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %269 = call i64 @zc0301_write_reg(%struct.zc0301_device* %268, i32 300, i32 243)
  %270 = load i32, i32* %3, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %269
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %3, align 4
  %274 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %275 = call i64 @zc0301_write_reg(%struct.zc0301_device* %274, i32 301, i32 248)
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %3, align 4
  %280 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %281 = call i64 @zc0301_write_reg(%struct.zc0301_device* %280, i32 302, i32 251)
  %282 = load i32, i32* %3, align 4
  %283 = sext i32 %282 to i64
  %284 = add nsw i64 %283, %281
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %3, align 4
  %286 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %287 = call i64 @zc0301_write_reg(%struct.zc0301_device* %286, i32 303, i32 255)
  %288 = load i32, i32* %3, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %287
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %3, align 4
  %292 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %293 = call i64 @zc0301_write_reg(%struct.zc0301_device* %292, i32 304, i32 38)
  %294 = load i32, i32* %3, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %293
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %3, align 4
  %298 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %299 = call i64 @zc0301_write_reg(%struct.zc0301_device* %298, i32 305, i32 35)
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %301, %299
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %3, align 4
  %304 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %305 = call i64 @zc0301_write_reg(%struct.zc0301_device* %304, i32 306, i32 32)
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %305
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %3, align 4
  %310 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %311 = call i64 @zc0301_write_reg(%struct.zc0301_device* %310, i32 307, i32 28)
  %312 = load i32, i32* %3, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %311
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %3, align 4
  %316 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %317 = call i64 @zc0301_write_reg(%struct.zc0301_device* %316, i32 308, i32 22)
  %318 = load i32, i32* %3, align 4
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %319, %317
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %3, align 4
  %322 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %323 = call i64 @zc0301_write_reg(%struct.zc0301_device* %322, i32 309, i32 19)
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %323
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %3, align 4
  %328 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %329 = call i64 @zc0301_write_reg(%struct.zc0301_device* %328, i32 310, i32 16)
  %330 = load i32, i32* %3, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %3, align 4
  %334 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %335 = call i64 @zc0301_write_reg(%struct.zc0301_device* %334, i32 311, i32 13)
  %336 = load i32, i32* %3, align 4
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %3, align 4
  %340 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %341 = call i64 @zc0301_write_reg(%struct.zc0301_device* %340, i32 312, i32 11)
  %342 = load i32, i32* %3, align 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %343, %341
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %3, align 4
  %346 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %347 = call i64 @zc0301_write_reg(%struct.zc0301_device* %346, i32 313, i32 9)
  %348 = load i32, i32* %3, align 4
  %349 = sext i32 %348 to i64
  %350 = add nsw i64 %349, %347
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %3, align 4
  %352 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %353 = call i64 @zc0301_write_reg(%struct.zc0301_device* %352, i32 314, i32 7)
  %354 = load i32, i32* %3, align 4
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %355, %353
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %3, align 4
  %358 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %359 = call i64 @zc0301_write_reg(%struct.zc0301_device* %358, i32 315, i32 6)
  %360 = load i32, i32* %3, align 4
  %361 = sext i32 %360 to i64
  %362 = add nsw i64 %361, %359
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %3, align 4
  %364 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %365 = call i64 @zc0301_write_reg(%struct.zc0301_device* %364, i32 316, i32 5)
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %367, %365
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %3, align 4
  %370 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %371 = call i64 @zc0301_write_reg(%struct.zc0301_device* %370, i32 317, i32 4)
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %373, %371
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %3, align 4
  %376 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %377 = call i64 @zc0301_write_reg(%struct.zc0301_device* %376, i32 318, i32 3)
  %378 = load i32, i32* %3, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %379, %377
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %3, align 4
  %382 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %383 = call i64 @zc0301_write_reg(%struct.zc0301_device* %382, i32 319, i32 2)
  %384 = load i32, i32* %3, align 4
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %385, %383
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %3, align 4
  %388 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %389 = call i64 @zc0301_write_reg(%struct.zc0301_device* %388, i32 266, i32 76)
  %390 = load i32, i32* %3, align 4
  %391 = sext i32 %390 to i64
  %392 = add nsw i64 %391, %389
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %3, align 4
  %394 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %395 = call i64 @zc0301_write_reg(%struct.zc0301_device* %394, i32 267, i32 245)
  %396 = load i32, i32* %3, align 4
  %397 = sext i32 %396 to i64
  %398 = add nsw i64 %397, %395
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %3, align 4
  %400 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %401 = call i64 @zc0301_write_reg(%struct.zc0301_device* %400, i32 268, i32 255)
  %402 = load i32, i32* %3, align 4
  %403 = sext i32 %402 to i64
  %404 = add nsw i64 %403, %401
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* %3, align 4
  %406 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %407 = call i64 @zc0301_write_reg(%struct.zc0301_device* %406, i32 269, i32 249)
  %408 = load i32, i32* %3, align 4
  %409 = sext i32 %408 to i64
  %410 = add nsw i64 %409, %407
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %3, align 4
  %412 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %413 = call i64 @zc0301_write_reg(%struct.zc0301_device* %412, i32 270, i32 81)
  %414 = load i32, i32* %3, align 4
  %415 = sext i32 %414 to i64
  %416 = add nsw i64 %415, %413
  %417 = trunc i64 %416 to i32
  store i32 %417, i32* %3, align 4
  %418 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %419 = call i64 @zc0301_write_reg(%struct.zc0301_device* %418, i32 271, i32 245)
  %420 = load i32, i32* %3, align 4
  %421 = sext i32 %420 to i64
  %422 = add nsw i64 %421, %419
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %3, align 4
  %424 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %425 = call i64 @zc0301_write_reg(%struct.zc0301_device* %424, i32 272, i32 251)
  %426 = load i32, i32* %3, align 4
  %427 = sext i32 %426 to i64
  %428 = add nsw i64 %427, %425
  %429 = trunc i64 %428 to i32
  store i32 %429, i32* %3, align 4
  %430 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %431 = call i64 @zc0301_write_reg(%struct.zc0301_device* %430, i32 273, i32 237)
  %432 = load i32, i32* %3, align 4
  %433 = sext i32 %432 to i64
  %434 = add nsw i64 %433, %431
  %435 = trunc i64 %434 to i32
  store i32 %435, i32* %3, align 4
  %436 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %437 = call i64 @zc0301_write_reg(%struct.zc0301_device* %436, i32 274, i32 95)
  %438 = load i32, i32* %3, align 4
  %439 = sext i32 %438 to i64
  %440 = add nsw i64 %439, %437
  %441 = trunc i64 %440 to i32
  store i32 %441, i32* %3, align 4
  %442 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %443 = call i64 @zc0301_write_reg(%struct.zc0301_device* %442, i32 384, i32 0)
  %444 = load i32, i32* %3, align 4
  %445 = sext i32 %444 to i64
  %446 = add nsw i64 %445, %443
  %447 = trunc i64 %446 to i32
  store i32 %447, i32* %3, align 4
  %448 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %449 = call i64 @zc0301_write_reg(%struct.zc0301_device* %448, i32 25, i32 0)
  %450 = load i32, i32* %3, align 4
  %451 = sext i32 %450 to i64
  %452 = add nsw i64 %451, %449
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %3, align 4
  %454 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %455 = call i64 @zc0301_write_reg(%struct.zc0301_device* %454, i32 135, i32 32)
  %456 = load i32, i32* %3, align 4
  %457 = sext i32 %456 to i64
  %458 = add nsw i64 %457, %455
  %459 = trunc i64 %458 to i32
  store i32 %459, i32* %3, align 4
  %460 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %461 = call i64 @zc0301_write_reg(%struct.zc0301_device* %460, i32 136, i32 33)
  %462 = load i32, i32* %3, align 4
  %463 = sext i32 %462 to i64
  %464 = add nsw i64 %463, %461
  %465 = trunc i64 %464 to i32
  store i32 %465, i32* %3, align 4
  %466 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %467 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %466, i32 32, i32 2)
  %468 = load i32, i32* %3, align 4
  %469 = sext i32 %468 to i64
  %470 = add nsw i64 %469, %467
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* %3, align 4
  %472 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %473 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %472, i32 33, i32 27)
  %474 = load i32, i32* %3, align 4
  %475 = sext i32 %474 to i64
  %476 = add nsw i64 %475, %473
  %477 = trunc i64 %476 to i32
  store i32 %477, i32* %3, align 4
  %478 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %479 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %478, i32 3, i32 68)
  %480 = load i32, i32* %3, align 4
  %481 = sext i32 %480 to i64
  %482 = add nsw i64 %481, %479
  %483 = trunc i64 %482 to i32
  store i32 %483, i32* %3, align 4
  %484 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %485 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %484, i32 14, i32 1)
  %486 = load i32, i32* %3, align 4
  %487 = sext i32 %486 to i64
  %488 = add nsw i64 %487, %485
  %489 = trunc i64 %488 to i32
  store i32 %489, i32* %3, align 4
  %490 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %491 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %490, i32 15, i32 0)
  %492 = load i32, i32* %3, align 4
  %493 = sext i32 %492 to i64
  %494 = add nsw i64 %493, %491
  %495 = trunc i64 %494 to i32
  store i32 %495, i32* %3, align 4
  %496 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %497 = call i64 @zc0301_write_reg(%struct.zc0301_device* %496, i32 425, i32 20)
  %498 = load i32, i32* %3, align 4
  %499 = sext i32 %498 to i64
  %500 = add nsw i64 %499, %497
  %501 = trunc i64 %500 to i32
  store i32 %501, i32* %3, align 4
  %502 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %503 = call i64 @zc0301_write_reg(%struct.zc0301_device* %502, i32 426, i32 36)
  %504 = load i32, i32* %3, align 4
  %505 = sext i32 %504 to i64
  %506 = add nsw i64 %505, %503
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %3, align 4
  %508 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %509 = call i64 @zc0301_write_reg(%struct.zc0301_device* %508, i32 400, i32 0)
  %510 = load i32, i32* %3, align 4
  %511 = sext i32 %510 to i64
  %512 = add nsw i64 %511, %509
  %513 = trunc i64 %512 to i32
  store i32 %513, i32* %3, align 4
  %514 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %515 = call i64 @zc0301_write_reg(%struct.zc0301_device* %514, i32 401, i32 2)
  %516 = load i32, i32* %3, align 4
  %517 = sext i32 %516 to i64
  %518 = add nsw i64 %517, %515
  %519 = trunc i64 %518 to i32
  store i32 %519, i32* %3, align 4
  %520 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %521 = call i64 @zc0301_write_reg(%struct.zc0301_device* %520, i32 402, i32 27)
  %522 = load i32, i32* %3, align 4
  %523 = sext i32 %522 to i64
  %524 = add nsw i64 %523, %521
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %3, align 4
  %526 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %527 = call i64 @zc0301_write_reg(%struct.zc0301_device* %526, i32 405, i32 0)
  %528 = load i32, i32* %3, align 4
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %529, %527
  %531 = trunc i64 %530 to i32
  store i32 %531, i32* %3, align 4
  %532 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %533 = call i64 @zc0301_write_reg(%struct.zc0301_device* %532, i32 406, i32 0)
  %534 = load i32, i32* %3, align 4
  %535 = sext i32 %534 to i64
  %536 = add nsw i64 %535, %533
  %537 = trunc i64 %536 to i32
  store i32 %537, i32* %3, align 4
  %538 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %539 = call i64 @zc0301_write_reg(%struct.zc0301_device* %538, i32 407, i32 77)
  %540 = load i32, i32* %3, align 4
  %541 = sext i32 %540 to i64
  %542 = add nsw i64 %541, %539
  %543 = trunc i64 %542 to i32
  store i32 %543, i32* %3, align 4
  %544 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %545 = call i64 @zc0301_write_reg(%struct.zc0301_device* %544, i32 396, i32 16)
  %546 = load i32, i32* %3, align 4
  %547 = sext i32 %546 to i64
  %548 = add nsw i64 %547, %545
  %549 = trunc i64 %548 to i32
  store i32 %549, i32* %3, align 4
  %550 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %551 = call i64 @zc0301_write_reg(%struct.zc0301_device* %550, i32 399, i32 32)
  %552 = load i32, i32* %3, align 4
  %553 = sext i32 %552 to i64
  %554 = add nsw i64 %553, %551
  %555 = trunc i64 %554 to i32
  store i32 %555, i32* %3, align 4
  %556 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %557 = call i64 @zc0301_write_reg(%struct.zc0301_device* %556, i32 29, i32 68)
  %558 = load i32, i32* %3, align 4
  %559 = sext i32 %558 to i64
  %560 = add nsw i64 %559, %557
  %561 = trunc i64 %560 to i32
  store i32 %561, i32* %3, align 4
  %562 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %563 = call i64 @zc0301_write_reg(%struct.zc0301_device* %562, i32 30, i32 111)
  %564 = load i32, i32* %3, align 4
  %565 = sext i32 %564 to i64
  %566 = add nsw i64 %565, %563
  %567 = trunc i64 %566 to i32
  store i32 %567, i32* %3, align 4
  %568 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %569 = call i64 @zc0301_write_reg(%struct.zc0301_device* %568, i32 31, i32 173)
  %570 = load i32, i32* %3, align 4
  %571 = sext i32 %570 to i64
  %572 = add nsw i64 %571, %569
  %573 = trunc i64 %572 to i32
  store i32 %573, i32* %3, align 4
  %574 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %575 = call i64 @zc0301_write_reg(%struct.zc0301_device* %574, i32 32, i32 235)
  %576 = load i32, i32* %3, align 4
  %577 = sext i32 %576 to i64
  %578 = add nsw i64 %577, %575
  %579 = trunc i64 %578 to i32
  store i32 %579, i32* %3, align 4
  %580 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %581 = call i64 @zc0301_write_reg(%struct.zc0301_device* %580, i32 135, i32 15)
  %582 = load i32, i32* %3, align 4
  %583 = sext i32 %582 to i64
  %584 = add nsw i64 %583, %581
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %3, align 4
  %586 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %587 = call i64 @zc0301_write_reg(%struct.zc0301_device* %586, i32 136, i32 14)
  %588 = load i32, i32* %3, align 4
  %589 = sext i32 %588 to i64
  %590 = add nsw i64 %589, %587
  %591 = trunc i64 %590 to i32
  store i32 %591, i32* %3, align 4
  %592 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %593 = call i64 @zc0301_write_reg(%struct.zc0301_device* %592, i32 384, i32 64)
  %594 = load i32, i32* %3, align 4
  %595 = sext i32 %594 to i64
  %596 = add nsw i64 %595, %593
  %597 = trunc i64 %596 to i32
  store i32 %597, i32* %3, align 4
  %598 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %599 = call i64 @zc0301_write_reg(%struct.zc0301_device* %598, i32 402, i32 27)
  %600 = load i32, i32* %3, align 4
  %601 = sext i32 %600 to i64
  %602 = add nsw i64 %601, %599
  %603 = trunc i64 %602 to i32
  store i32 %603, i32* %3, align 4
  %604 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %605 = call i64 @zc0301_write_reg(%struct.zc0301_device* %604, i32 401, i32 2)
  %606 = load i32, i32* %3, align 4
  %607 = sext i32 %606 to i64
  %608 = add nsw i64 %607, %605
  %609 = trunc i64 %608 to i32
  store i32 %609, i32* %3, align 4
  %610 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %611 = call i64 @zc0301_write_reg(%struct.zc0301_device* %610, i32 400, i32 0)
  %612 = load i32, i32* %3, align 4
  %613 = sext i32 %612 to i64
  %614 = add nsw i64 %613, %611
  %615 = trunc i64 %614 to i32
  store i32 %615, i32* %3, align 4
  %616 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %617 = call i64 @zc0301_write_reg(%struct.zc0301_device* %616, i32 278, i32 29)
  %618 = load i32, i32* %3, align 4
  %619 = sext i32 %618 to i64
  %620 = add nsw i64 %619, %617
  %621 = trunc i64 %620 to i32
  store i32 %621, i32* %3, align 4
  %622 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %623 = call i64 @zc0301_write_reg(%struct.zc0301_device* %622, i32 279, i32 64)
  %624 = load i32, i32* %3, align 4
  %625 = sext i32 %624 to i64
  %626 = add nsw i64 %625, %623
  %627 = trunc i64 %626 to i32
  store i32 %627, i32* %3, align 4
  %628 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %629 = call i64 @zc0301_write_reg(%struct.zc0301_device* %628, i32 280, i32 153)
  %630 = load i32, i32* %3, align 4
  %631 = sext i32 %630 to i64
  %632 = add nsw i64 %631, %629
  %633 = trunc i64 %632 to i32
  store i32 %633, i32* %3, align 4
  %634 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %635 = call i64 @zc0301_write_reg(%struct.zc0301_device* %634, i32 384, i32 66)
  %636 = load i32, i32* %3, align 4
  %637 = sext i32 %636 to i64
  %638 = add nsw i64 %637, %635
  %639 = trunc i64 %638 to i32
  store i32 %639, i32* %3, align 4
  %640 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %641 = call i64 @zc0301_write_reg(%struct.zc0301_device* %640, i32 278, i32 29)
  %642 = load i32, i32* %3, align 4
  %643 = sext i32 %642 to i64
  %644 = add nsw i64 %643, %641
  %645 = trunc i64 %644 to i32
  store i32 %645, i32* %3, align 4
  %646 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %647 = call i64 @zc0301_write_reg(%struct.zc0301_device* %646, i32 279, i32 64)
  %648 = load i32, i32* %3, align 4
  %649 = sext i32 %648 to i64
  %650 = add nsw i64 %649, %647
  %651 = trunc i64 %650 to i32
  store i32 %651, i32* %3, align 4
  %652 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %653 = call i64 @zc0301_write_reg(%struct.zc0301_device* %652, i32 280, i32 153)
  %654 = load i32, i32* %3, align 4
  %655 = sext i32 %654 to i64
  %656 = add nsw i64 %655, %653
  %657 = trunc i64 %656 to i32
  store i32 %657, i32* %3, align 4
  %658 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %659 = call i64 @zc0301_write_reg(%struct.zc0301_device* %658, i32 7, i32 0)
  %660 = load i32, i32* %3, align 4
  %661 = sext i32 %660 to i64
  %662 = add nsw i64 %661, %659
  %663 = trunc i64 %662 to i32
  store i32 %663, i32* %3, align 4
  %664 = load %struct.zc0301_device*, %struct.zc0301_device** %2, align 8
  %665 = call i64 @zc0301_i2c_write(%struct.zc0301_device* %664, i32 17, i32 1)
  %666 = load i32, i32* %3, align 4
  %667 = sext i32 %666 to i64
  %668 = add nsw i64 %667, %665
  %669 = trunc i64 %668 to i32
  store i32 %669, i32* %3, align 4
  %670 = call i32 @msleep(i32 100)
  %671 = load i32, i32* %3, align 4
  ret i32 %671
}

declare dso_local i64 @zc0301_write_reg(%struct.zc0301_device*, i32, i32) #1

declare dso_local i64 @zc0301_i2c_write(%struct.zc0301_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
