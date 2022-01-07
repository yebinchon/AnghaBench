; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_inquiry_evpd_83.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_inquiry_evpd_83.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inq_vendor_id = common dso_local global i8* null, align 8
@inq_product_id = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"naa.52222220\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i8*, i32)* @inquiry_evpd_83 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inquiry_evpd_83(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %14, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 2, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 1, i8* %21, align 1
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = load i8*, i8** @inq_vendor_id, align 8
  %27 = call i32 @memcpy(i8* %25, i8* %26, i32 8)
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 12
  %30 = load i8*, i8** @inq_product_id, align 8
  %31 = call i32 @memcpy(i8* %29, i8* %30, i32 16)
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 28
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @memcpy(i8* %33, i8* %34, i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 24, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  store i8 %40, i8* %42, align 1
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %162

47:                                               ; preds = %6
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 1, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 3, i8* %57, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 8, i8* %67, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 83, i8* %72, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 51, i8* %77, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 51, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 48, i8* %87, align 1
  %88 = load i32, i32* %10, align 4
  %89 = ashr i32 %88, 24
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 %90, i8* %95, align 1
  %96 = load i32, i32* %10, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 %99, i8* %104, align 1
  %105 = load i32, i32* %10, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8 %108, i8* %113, align 1
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, 255
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 %116, i8* %121, align 1
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 97, i8* %126, align 1
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 -108, i8* %131, align 1
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8 4, i8* %141, align 1
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 1, i8* %161, align 1
  br label %162

162:                                              ; preds = %47, %6
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8 97, i8* %167, align 1
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8 -109, i8* %172, align 1
  %173 = load i8*, i8** %7, align 8
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 0, i8* %177, align 1
  %178 = load i8*, i8** %7, align 8
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  store i8 8, i8* %182, align 1
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 82, i8* %187, align 1
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8 34, i8* %192, align 1
  %193 = load i8*, i8** %7, align 8
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 34, i8* %197, align 1
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 32, i8* %202, align 1
  %203 = load i32, i32* %14, align 4
  %204 = ashr i32 %203, 24
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %7, align 8
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8 %205, i8* %210, align 1
  %211 = load i32, i32* %14, align 4
  %212 = ashr i32 %211, 16
  %213 = and i32 %212, 255
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %7, align 8
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  store i8 %214, i8* %219, align 1
  %220 = load i32, i32* %14, align 4
  %221 = ashr i32 %220, 8
  %222 = and i32 %221, 255
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %7, align 8
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  store i8 %223, i8* %228, align 1
  %229 = load i32, i32* %14, align 4
  %230 = and i32 %229, 255
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %7, align 8
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  store i8 %231, i8* %236, align 1
  %237 = load i8*, i8** %7, align 8
  %238 = load i32, i32* %13, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %13, align 4
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  store i8 97, i8* %241, align 1
  %242 = load i8*, i8** %7, align 8
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %242, i64 %245
  store i8 -107, i8* %246, align 1
  %247 = load i8*, i8** %7, align 8
  %248 = load i32, i32* %13, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %13, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  store i8 0, i8* %251, align 1
  %252 = load i8*, i8** %7, align 8
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %13, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  store i8 4, i8* %256, align 1
  %257 = load i8*, i8** %7, align 8
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %13, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  store i8 0, i8* %261, align 1
  %262 = load i8*, i8** %7, align 8
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %13, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  store i8 0, i8* %266, align 1
  %267 = load i32, i32* %8, align 4
  %268 = ashr i32 %267, 8
  %269 = and i32 %268, 255
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %7, align 8
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %271, i64 %274
  store i8 %270, i8* %275, align 1
  %276 = load i32, i32* %8, align 4
  %277 = and i32 %276, 255
  %278 = trunc i32 %277 to i8
  %279 = load i8*, i8** %7, align 8
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  store i8 %278, i8* %283, align 1
  %284 = load i8*, i8** %7, align 8
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %13, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  store i8 97, i8* %288, align 1
  %289 = load i8*, i8** %7, align 8
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %13, align 4
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  store i8 -93, i8* %293, align 1
  %294 = load i8*, i8** %7, align 8
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %13, align 4
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i8, i8* %294, i64 %297
  store i8 0, i8* %298, align 1
  %299 = load i8*, i8** %7, align 8
  %300 = load i32, i32* %13, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %13, align 4
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i8, i8* %299, i64 %302
  store i8 8, i8* %303, align 1
  %304 = load i8*, i8** %7, align 8
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %13, align 4
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i8, i8* %304, i64 %307
  store i8 82, i8* %308, align 1
  %309 = load i8*, i8** %7, align 8
  %310 = load i32, i32* %13, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %13, align 4
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8, i8* %309, i64 %312
  store i8 34, i8* %313, align 1
  %314 = load i8*, i8** %7, align 8
  %315 = load i32, i32* %13, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %13, align 4
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  store i8 34, i8* %318, align 1
  %319 = load i8*, i8** %7, align 8
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %13, align 4
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  store i8 32, i8* %323, align 1
  %324 = load i32, i32* %9, align 4
  %325 = ashr i32 %324, 24
  %326 = trunc i32 %325 to i8
  %327 = load i8*, i8** %7, align 8
  %328 = load i32, i32* %13, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %13, align 4
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i8, i8* %327, i64 %330
  store i8 %326, i8* %331, align 1
  %332 = load i32, i32* %9, align 4
  %333 = ashr i32 %332, 16
  %334 = and i32 %333, 255
  %335 = trunc i32 %334 to i8
  %336 = load i8*, i8** %7, align 8
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %13, align 4
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i8, i8* %336, i64 %339
  store i8 %335, i8* %340, align 1
  %341 = load i32, i32* %9, align 4
  %342 = ashr i32 %341, 8
  %343 = and i32 %342, 255
  %344 = trunc i32 %343 to i8
  %345 = load i8*, i8** %7, align 8
  %346 = load i32, i32* %13, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %13, align 4
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i8, i8* %345, i64 %348
  store i8 %344, i8* %349, align 1
  %350 = load i32, i32* %9, align 4
  %351 = and i32 %350, 255
  %352 = trunc i32 %351 to i8
  %353 = load i8*, i8** %7, align 8
  %354 = load i32, i32* %13, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %13, align 4
  %356 = sext i32 %354 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  store i8 %352, i8* %357, align 1
  %358 = load i8*, i8** %7, align 8
  %359 = load i32, i32* %13, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %13, align 4
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i8, i8* %358, i64 %361
  store i8 99, i8* %362, align 1
  %363 = load i8*, i8** %7, align 8
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %13, align 4
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, i8* %363, i64 %366
  store i8 -88, i8* %367, align 1
  %368 = load i8*, i8** %7, align 8
  %369 = load i32, i32* %13, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %13, align 4
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  store i8 0, i8* %372, align 1
  %373 = load i8*, i8** %7, align 8
  %374 = load i32, i32* %13, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %13, align 4
  %376 = sext i32 %374 to i64
  %377 = getelementptr inbounds i8, i8* %373, i64 %376
  store i8 24, i8* %377, align 1
  %378 = load i8*, i8** %7, align 8
  %379 = load i32, i32* %13, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %378, i64 %380
  %382 = call i32 @memcpy(i8* %381, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %383 = load i32, i32* %13, align 4
  %384 = add nsw i32 %383, 12
  store i32 %384, i32* %13, align 4
  %385 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %386 = load i32, i32* %9, align 4
  %387 = call i32 @snprintf(i8* %385, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %386)
  %388 = load i8*, i8** %7, align 8
  %389 = load i32, i32* %13, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %388, i64 %390
  %392 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %393 = call i32 @memcpy(i8* %391, i8* %392, i32 8)
  %394 = load i32, i32* %13, align 4
  %395 = add nsw i32 %394, 8
  store i32 %395, i32* %13, align 4
  %396 = load i8*, i8** %7, align 8
  %397 = load i32, i32* %13, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %396, i64 %398
  %400 = call i32 @memset(i8* %399, i32 0, i32 4)
  %401 = load i32, i32* %13, align 4
  %402 = add nsw i32 %401, 4
  store i32 %402, i32* %13, align 4
  %403 = load i32, i32* %13, align 4
  ret i32 %403
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
