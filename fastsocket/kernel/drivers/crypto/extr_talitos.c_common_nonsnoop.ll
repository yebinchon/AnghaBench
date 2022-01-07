; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_common_nonsnoop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_common_nonsnoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32, i32, i64, %struct.talitos_ptr*, i32, i64, i32, %struct.talitos_desc }
%struct.talitos_ptr = type { i32 }
%struct.talitos_desc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8* }
%struct.ablkcipher_request = type { i32, i8*, i64, i64 }
%struct.device = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.talitos_ctx = type { i32, i8*, %struct.device*, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DESC_PTR_LNKTBL_JUMP = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.talitos_edesc*, %struct.ablkcipher_request*, i32*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*)* @common_nonsnoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_nonsnoop(%struct.talitos_edesc* %0, %struct.ablkcipher_request* %1, i32* %2, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.talitos_edesc*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, align 8
  %9 = alloca %struct.crypto_ablkcipher*, align 8
  %10 = alloca %struct.talitos_ctx*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.talitos_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.talitos_ptr*, align 8
  store %struct.talitos_edesc* %0, %struct.talitos_edesc** %5, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %6, align 8
  store i32* %2, i32** %7, align 8
  store void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %3, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %19 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %18)
  store %struct.crypto_ablkcipher* %19, %struct.crypto_ablkcipher** %9, align 8
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %9, align 8
  %21 = call %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %20)
  store %struct.talitos_ctx* %21, %struct.talitos_ctx** %10, align 8
  %22 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %22, i32 0, i32 2
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %11, align 8
  %25 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %26 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %25, i32 0, i32 7
  store %struct.talitos_desc* %26, %struct.talitos_desc** %12, align 8
  %27 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %28 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %31 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i8* null, i8** %34, align 8
  %35 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %36 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = call i32 @to_talitos_ptr(%struct.TYPE_3__* %38, i64 0)
  %40 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %41 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %9, align 8
  %46 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.device*, %struct.device** %11, align 8
  %48 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %49 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 1
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %4
  %56 = bitcast i32* %53 to i8*
  br label %61

57:                                               ; preds = %4
  %58 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %59 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i8* [ %56, %55 ], [ %60, %57 ]
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @map_single_talitos_ptr(%struct.device* %47, %struct.TYPE_3__* %51, i32 %52, i8* %62, i32 0, i32 %63)
  %65 = load %struct.device*, %struct.device** %11, align 8
  %66 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %67 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 2
  %70 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %73, i32 0, i32 3
  %75 = bitcast i32* %74 to i8*
  %76 = load i32, i32* @DMA_TO_DEVICE, align 4
  %77 = call i32 @map_single_talitos_ptr(%struct.device* %65, %struct.TYPE_3__* %69, i32 %72, i8* %75, i32 0, i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = call i8* @cpu_to_be16(i32 %78)
  %80 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %81 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i8* %79, i8** %84, align 8
  %85 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %86 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.device*, %struct.device** %11, align 8
  %91 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %92 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %95 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %61
  br label %100

99:                                               ; preds = %61
  br label %100

100:                                              ; preds = %99, %98
  %101 = phi i32 [ %96, %98 ], [ 1, %99 ]
  %102 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %103 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %106 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %113

111:                                              ; preds = %100
  %112 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %116 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @talitos_map_sg(%struct.device* %90, i64 %93, i32 %101, i32 %114, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %131

121:                                              ; preds = %113
  %122 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %123 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 3
  %126 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %127 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @sg_dma_address(i64 %128)
  %130 = call i32 @to_talitos_ptr(%struct.TYPE_3__* %125, i64 %129)
  br label %181

131:                                              ; preds = %113
  %132 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %133 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %138 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %137, i32 0, i32 3
  %139 = load %struct.talitos_ptr*, %struct.talitos_ptr** %138, align 8
  %140 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %139, i64 0
  %141 = call i32 @sg_to_link_tbl(i64 %134, i32 %135, i32 %136, %struct.talitos_ptr* %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %170

144:                                              ; preds = %131
  %145 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %146 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 3
  %149 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %150 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @to_talitos_ptr(%struct.TYPE_3__* %148, i64 %151)
  %153 = load i32, i32* @DESC_PTR_LNKTBL_JUMP, align 4
  %154 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %155 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 3
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %153
  store i32 %160, i32* %158, align 8
  %161 = load %struct.device*, %struct.device** %11, align 8
  %162 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %163 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %166 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %169 = call i32 @dma_sync_single_for_device(%struct.device* %161, i64 %164, i32 %167, i32 %168)
  br label %180

170:                                              ; preds = %131
  %171 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %172 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %171, i32 0, i32 0
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 3
  %175 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %176 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @sg_dma_address(i64 %177)
  %179 = call i32 @to_talitos_ptr(%struct.TYPE_3__* %174, i64 %178)
  br label %180

180:                                              ; preds = %170, %144
  br label %181

181:                                              ; preds = %180, %121
  %182 = load i32, i32* %13, align 4
  %183 = call i8* @cpu_to_be16(i32 %182)
  %184 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %185 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %184, i32 0, i32 0
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 4
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i8* %183, i8** %188, align 8
  %189 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %190 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %189, i32 0, i32 0
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i64 4
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  %194 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %195 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %198 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %196, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %181
  %202 = load %struct.device*, %struct.device** %11, align 8
  %203 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %204 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %207 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  br label %212

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %211, %210
  %213 = phi i64 [ %208, %210 ], [ 1, %211 ]
  %214 = trunc i64 %213 to i32
  %215 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %216 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %217 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @talitos_map_sg(%struct.device* %202, i64 %205, i32 %214, i32 %215, i32 %218)
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %212, %181
  %221 = load i32, i32* %15, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %225 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %224, i32 0, i32 0
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i64 4
  %228 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %229 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @sg_dma_address(i64 %230)
  %232 = call i32 @to_talitos_ptr(%struct.TYPE_3__* %227, i64 %231)
  br label %284

233:                                              ; preds = %220
  %234 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %235 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %234, i32 0, i32 3
  %236 = load %struct.talitos_ptr*, %struct.talitos_ptr** %235, align 8
  %237 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %238 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %236, i64 %241
  store %struct.talitos_ptr* %242, %struct.talitos_ptr** %17, align 8
  %243 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %244 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %243, i32 0, i32 0
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i64 4
  %247 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %248 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %251 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 4
  %256 = add i64 %249, %255
  %257 = call i32 @to_talitos_ptr(%struct.TYPE_3__* %246, i64 %256)
  %258 = load i32, i32* @DESC_PTR_LNKTBL_JUMP, align 4
  %259 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %260 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %259, i32 0, i32 0
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i64 4
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %258
  store i32 %265, i32* %263, align 8
  %266 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %267 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.talitos_ptr*, %struct.talitos_ptr** %17, align 8
  %272 = call i32 @sg_to_link_tbl(i64 %268, i32 %269, i32 %270, %struct.talitos_ptr* %271)
  store i32 %272, i32* %15, align 4
  %273 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %274 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %273, i32 0, i32 2
  %275 = load %struct.device*, %struct.device** %274, align 8
  %276 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %277 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %280 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %283 = call i32 @dma_sync_single_for_device(%struct.device* %275, i64 %278, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %233, %223
  %285 = load %struct.device*, %struct.device** %11, align 8
  %286 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %287 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %286, i32 0, i32 0
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i64 5
  %290 = load i32, i32* %14, align 4
  %291 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %292 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %295 = call i32 @map_single_talitos_ptr(%struct.device* %285, %struct.TYPE_3__* %289, i32 %290, i8* %293, i32 0, i32 %294)
  %296 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %297 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %296, i32 0, i32 0
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i64 6
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  store i8* null, i8** %300, align 8
  %301 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %302 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %301, i32 0, i32 0
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i64 6
  %305 = call i32 @to_talitos_ptr(%struct.TYPE_3__* %304, i64 0)
  %306 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %307 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %306, i32 0, i32 0
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i64 6
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 0
  store i32 0, i32* %310, align 8
  %311 = load %struct.device*, %struct.device** %11, align 8
  %312 = load %struct.talitos_desc*, %struct.talitos_desc** %12, align 8
  %313 = load void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  %314 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %315 = call i32 @talitos_submit(%struct.device* %311, %struct.talitos_desc* %312, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %313, %struct.ablkcipher_request* %314)
  store i32 %315, i32* %16, align 4
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* @EINPROGRESS, align 4
  %318 = sub nsw i32 0, %317
  %319 = icmp ne i32 %316, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %284
  %321 = load %struct.device*, %struct.device** %11, align 8
  %322 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %323 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %324 = call i32 @common_nonsnoop_unmap(%struct.device* %321, %struct.talitos_edesc* %322, %struct.ablkcipher_request* %323)
  %325 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %326 = call i32 @kfree(%struct.talitos_edesc* %325)
  br label %327

327:                                              ; preds = %320, %284
  %328 = load i32, i32* %16, align 4
  ret i32 %328
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @to_talitos_ptr(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @map_single_talitos_ptr(%struct.device*, %struct.TYPE_3__*, i32, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @talitos_map_sg(%struct.device*, i64, i32, i32, i32) #1

declare dso_local i64 @sg_dma_address(i64) #1

declare dso_local i32 @sg_to_link_tbl(i64, i32, i32, %struct.talitos_ptr*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @talitos_submit(%struct.device*, %struct.talitos_desc*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, %struct.ablkcipher_request*) #1

declare dso_local i32 @common_nonsnoop_unmap(%struct.device*, %struct.talitos_edesc*, %struct.ablkcipher_request*) #1

declare dso_local i32 @kfree(%struct.talitos_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
