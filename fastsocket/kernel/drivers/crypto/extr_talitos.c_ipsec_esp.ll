; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_ipsec_esp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_ipsec_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32, i32, i32, i64, %struct.talitos_ptr*, i32, %struct.talitos_desc, i32 }
%struct.talitos_ptr = type { i32, i8* }
%struct.talitos_desc = type { i32, %struct.talitos_ptr* }
%struct.aead_request = type { i32, i32, i8*, i64, i64, i32 }
%struct.device = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32, i32, i8, i32, i8*, %struct.device* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DESC_HDR_MODE1_MDEU_CICV = common dso_local global i32 0, align 4
@DESC_PTR_LNKTBL_JUMP = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DESC_PTR_LNKTBL_RETURN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.talitos_edesc*, %struct.aead_request*, i32*, i32, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*)* @ipsec_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_esp(%struct.talitos_edesc* %0, %struct.aead_request* %1, i32* %2, i32 %3, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %4) #0 {
  %6 = alloca %struct.talitos_edesc*, align 8
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, align 8
  %11 = alloca %struct.crypto_aead*, align 8
  %12 = alloca %struct.talitos_ctx*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.talitos_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.talitos_ptr*, align 8
  store %struct.talitos_edesc* %0, %struct.talitos_edesc** %6, align 8
  store %struct.aead_request* %1, %struct.aead_request** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %4, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %10, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %23 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %22)
  store %struct.crypto_aead* %23, %struct.crypto_aead** %11, align 8
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %11, align 8
  %25 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %24)
  store %struct.talitos_ctx* %25, %struct.talitos_ctx** %12, align 8
  %26 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %27 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %26, i32 0, i32 5
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %13, align 8
  %29 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %30 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %29, i32 0, i32 6
  store %struct.talitos_desc* %30, %struct.talitos_desc** %14, align 8
  %31 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %32 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %15, align 4
  %34 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %35 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %16, align 4
  %37 = load %struct.crypto_aead*, %struct.crypto_aead** %11, align 8
  %38 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %37)
  store i32 %38, i32* %17, align 4
  %39 = load %struct.device*, %struct.device** %13, align 8
  %40 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %41 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %40, i32 0, i32 1
  %42 = load %struct.talitos_ptr*, %struct.talitos_ptr** %41, align 8
  %43 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %42, i64 0
  %44 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %45 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %48 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  %50 = call i32 @map_single_talitos_ptr(%struct.device* %39, %struct.talitos_ptr* %43, i32 %46, i8* %48, i32 0, i32 %49)
  %51 = load %struct.device*, %struct.device** %13, align 8
  %52 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %53 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %52, i32 0, i32 1
  %54 = load %struct.talitos_ptr*, %struct.talitos_ptr** %53, align 8
  %55 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %54, i64 1
  %56 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %57 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %17, align 4
  %60 = add i32 %58, %59
  %61 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %62 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @sg_virt(i32 %63)
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @map_single_talitos_ptr(%struct.device* %51, %struct.talitos_ptr* %55, i32 %60, i8* %64, i32 0, i32 %65)
  %67 = load %struct.device*, %struct.device** %13, align 8
  %68 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %69 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %68, i32 0, i32 1
  %70 = load %struct.talitos_ptr*, %struct.talitos_ptr** %69, align 8
  %71 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %70, i64 2
  %72 = load i32, i32* %17, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %5
  %76 = bitcast i32* %73 to i8*
  br label %81

77:                                               ; preds = %5
  %78 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %79 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i8* [ %76, %75 ], [ %80, %77 ]
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i32 @map_single_talitos_ptr(%struct.device* %67, %struct.talitos_ptr* %71, i32 %72, i8* %82, i32 0, i32 %83)
  %85 = load %struct.device*, %struct.device** %13, align 8
  %86 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %87 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %86, i32 0, i32 1
  %88 = load %struct.talitos_ptr*, %struct.talitos_ptr** %87, align 8
  %89 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %88, i64 3
  %90 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %91 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %94 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %93, i32 0, i32 2
  %95 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %96 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i32, i32* @DMA_TO_DEVICE, align 4
  %101 = call i32 @map_single_talitos_ptr(%struct.device* %85, %struct.talitos_ptr* %89, i32 %92, i8* %99, i32 0, i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = call i8* @cpu_to_be16(i32 %102)
  %104 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %105 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %104, i32 0, i32 1
  %106 = load %struct.talitos_ptr*, %struct.talitos_ptr** %105, align 8
  %107 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %106, i64 4
  %108 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %107, i32 0, i32 1
  store i8* %103, i8** %108, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %111 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %110, i32 0, i32 1
  %112 = load %struct.talitos_ptr*, %struct.talitos_ptr** %111, align 8
  %113 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %112, i64 4
  %114 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 8
  %115 = load %struct.device*, %struct.device** %13, align 8
  %116 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %117 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %120 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %81
  br label %125

124:                                              ; preds = %81
  br label %125

125:                                              ; preds = %124, %123
  %126 = phi i32 [ %121, %123 ], [ 1, %124 ]
  %127 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %128 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %131 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %138

136:                                              ; preds = %125
  %137 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %141 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @talitos_map_sg(%struct.device* %115, i64 %118, i32 %126, i32 %139, i32 %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %156

146:                                              ; preds = %138
  %147 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %148 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %147, i32 0, i32 1
  %149 = load %struct.talitos_ptr*, %struct.talitos_ptr** %148, align 8
  %150 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %149, i64 4
  %151 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %152 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @sg_dma_address(i64 %153)
  %155 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %150, i64 %154)
  br label %219

156:                                              ; preds = %138
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %20, align 4
  %158 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %159 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DESC_HDR_MODE1_MDEU_CICV, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %16, align 4
  %168 = add i32 %166, %167
  store i32 %168, i32* %20, align 4
  br label %169

169:                                              ; preds = %165, %156
  %170 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %171 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %176 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %175, i32 0, i32 4
  %177 = load %struct.talitos_ptr*, %struct.talitos_ptr** %176, align 8
  %178 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %177, i64 0
  %179 = call i32 @sg_to_link_tbl(i64 %172, i32 %173, i32 %174, %struct.talitos_ptr* %178)
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %182, label %208

182:                                              ; preds = %169
  %183 = load i32, i32* @DESC_PTR_LNKTBL_JUMP, align 4
  %184 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %185 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %184, i32 0, i32 1
  %186 = load %struct.talitos_ptr*, %struct.talitos_ptr** %185, align 8
  %187 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %186, i64 4
  %188 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %183
  store i32 %190, i32* %188, align 8
  %191 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %192 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %191, i32 0, i32 1
  %193 = load %struct.talitos_ptr*, %struct.talitos_ptr** %192, align 8
  %194 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %193, i64 4
  %195 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %196 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %194, i64 %197)
  %199 = load %struct.device*, %struct.device** %13, align 8
  %200 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %201 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %204 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %207 = call i32 @dma_sync_single_for_device(%struct.device* %199, i64 %202, i32 %205, i32 %206)
  br label %218

208:                                              ; preds = %169
  %209 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %210 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %209, i32 0, i32 1
  %211 = load %struct.talitos_ptr*, %struct.talitos_ptr** %210, align 8
  %212 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %211, i64 4
  %213 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %214 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @sg_dma_address(i64 %215)
  %217 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %212, i64 %216)
  br label %218

218:                                              ; preds = %208, %182
  br label %219

219:                                              ; preds = %218, %146
  %220 = load i32, i32* %15, align 4
  %221 = call i8* @cpu_to_be16(i32 %220)
  %222 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %223 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %222, i32 0, i32 1
  %224 = load %struct.talitos_ptr*, %struct.talitos_ptr** %223, align 8
  %225 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %224, i64 5
  %226 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %225, i32 0, i32 1
  store i8* %221, i8** %226, align 8
  %227 = load i32, i32* %16, align 4
  %228 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %229 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %228, i32 0, i32 1
  %230 = load %struct.talitos_ptr*, %struct.talitos_ptr** %229, align 8
  %231 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %230, i64 5
  %232 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %231, i32 0, i32 0
  store i32 %227, i32* %232, align 8
  %233 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %234 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %237 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %235, %238
  br i1 %239, label %240, label %258

240:                                              ; preds = %219
  %241 = load %struct.device*, %struct.device** %13, align 8
  %242 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %243 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %246 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %240
  br label %251

250:                                              ; preds = %240
  br label %251

251:                                              ; preds = %250, %249
  %252 = phi i32 [ %247, %249 ], [ 1, %250 ]
  %253 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %254 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %255 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @talitos_map_sg(%struct.device* %241, i64 %244, i32 %252, i32 %253, i32 %256)
  store i32 %257, i32* %18, align 4
  br label %258

258:                                              ; preds = %251, %219
  %259 = load i32, i32* %18, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %263 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %262, i32 0, i32 1
  %264 = load %struct.talitos_ptr*, %struct.talitos_ptr** %263, align 8
  %265 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %264, i64 5
  %266 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %267 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = call i64 @sg_dma_address(i64 %268)
  %270 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %265, i64 %269)
  br label %356

271:                                              ; preds = %258
  %272 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %273 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %272, i32 0, i32 4
  %274 = load %struct.talitos_ptr*, %struct.talitos_ptr** %273, align 8
  %275 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %276 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %274, i64 %279
  store %struct.talitos_ptr* %280, %struct.talitos_ptr** %21, align 8
  %281 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %282 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %281, i32 0, i32 1
  %283 = load %struct.talitos_ptr*, %struct.talitos_ptr** %282, align 8
  %284 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %283, i64 5
  %285 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %286 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %289 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 16
  %294 = add i64 %287, %293
  %295 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %284, i64 %294)
  %296 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %297 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* %15, align 4
  %301 = load %struct.talitos_ptr*, %struct.talitos_ptr** %21, align 8
  %302 = call i32 @sg_to_link_tbl(i64 %298, i32 %299, i32 %300, %struct.talitos_ptr* %301)
  store i32 %302, i32* %18, align 4
  %303 = load i32, i32* %18, align 4
  %304 = sub nsw i32 %303, 1
  %305 = load %struct.talitos_ptr*, %struct.talitos_ptr** %21, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %305, i64 %306
  store %struct.talitos_ptr* %307, %struct.talitos_ptr** %21, align 8
  %308 = load %struct.talitos_ptr*, %struct.talitos_ptr** %21, align 8
  %309 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %308, i32 0, i32 0
  store i32 0, i32* %309, align 8
  %310 = load i32, i32* %18, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %18, align 4
  %312 = load %struct.talitos_ptr*, %struct.talitos_ptr** %21, align 8
  %313 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %312, i32 1
  store %struct.talitos_ptr* %313, %struct.talitos_ptr** %21, align 8
  %314 = load i32, i32* @DESC_PTR_LNKTBL_RETURN, align 4
  %315 = load %struct.talitos_ptr*, %struct.talitos_ptr** %21, align 8
  %316 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  %317 = load i32, i32* %16, align 4
  %318 = call i8* @cpu_to_be16(i32 %317)
  %319 = load %struct.talitos_ptr*, %struct.talitos_ptr** %21, align 8
  %320 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %319, i32 0, i32 1
  store i8* %318, i8** %320, align 8
  %321 = load %struct.talitos_ptr*, %struct.talitos_ptr** %21, align 8
  %322 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %323 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %326 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %329 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %327, %330
  %332 = add nsw i32 %331, 2
  %333 = sext i32 %332 to i64
  %334 = mul i64 %333, 16
  %335 = add i64 %324, %334
  %336 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %321, i64 %335)
  %337 = load i32, i32* @DESC_PTR_LNKTBL_JUMP, align 4
  %338 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %339 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %338, i32 0, i32 1
  %340 = load %struct.talitos_ptr*, %struct.talitos_ptr** %339, align 8
  %341 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %340, i64 5
  %342 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %337
  store i32 %344, i32* %342, align 8
  %345 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %346 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %345, i32 0, i32 5
  %347 = load %struct.device*, %struct.device** %346, align 8
  %348 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %349 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %352 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %355 = call i32 @dma_sync_single_for_device(%struct.device* %347, i64 %350, i32 %353, i32 %354)
  br label %356

356:                                              ; preds = %271, %261
  %357 = load %struct.device*, %struct.device** %13, align 8
  %358 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %359 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %358, i32 0, i32 1
  %360 = load %struct.talitos_ptr*, %struct.talitos_ptr** %359, align 8
  %361 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %360, i64 6
  %362 = load i32, i32* %17, align 4
  %363 = load %struct.talitos_ctx*, %struct.talitos_ctx** %12, align 8
  %364 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %363, i32 0, i32 4
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %367 = call i32 @map_single_talitos_ptr(%struct.device* %357, %struct.talitos_ptr* %361, i32 %362, i8* %365, i32 0, i32 %366)
  %368 = load %struct.device*, %struct.device** %13, align 8
  %369 = load %struct.talitos_desc*, %struct.talitos_desc** %14, align 8
  %370 = load void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %10, align 8
  %371 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %372 = call i32 @talitos_submit(%struct.device* %368, %struct.talitos_desc* %369, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %370, %struct.aead_request* %371)
  store i32 %372, i32* %19, align 4
  %373 = load i32, i32* %19, align 4
  %374 = load i32, i32* @EINPROGRESS, align 4
  %375 = sub nsw i32 0, %374
  %376 = icmp ne i32 %373, %375
  br i1 %376, label %377, label %384

377:                                              ; preds = %356
  %378 = load %struct.device*, %struct.device** %13, align 8
  %379 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %380 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %381 = call i32 @ipsec_esp_unmap(%struct.device* %378, %struct.talitos_edesc* %379, %struct.aead_request* %380)
  %382 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %383 = call i32 @kfree(%struct.talitos_edesc* %382)
  br label %384

384:                                              ; preds = %377, %356
  %385 = load i32, i32* %19, align 4
  ret i32 %385
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @map_single_talitos_ptr(%struct.device*, %struct.talitos_ptr*, i32, i8*, i32, i32) #1

declare dso_local i8* @sg_virt(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @talitos_map_sg(%struct.device*, i64, i32, i32, i32) #1

declare dso_local i32 @to_talitos_ptr(%struct.talitos_ptr*, i64) #1

declare dso_local i64 @sg_dma_address(i64) #1

declare dso_local i32 @sg_to_link_tbl(i64, i32, i32, %struct.talitos_ptr*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @talitos_submit(%struct.device*, %struct.talitos_desc*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, %struct.aead_request*) #1

declare dso_local i32 @ipsec_esp_unmap(%struct.device*, %struct.talitos_edesc*, %struct.aead_request*) #1

declare dso_local i32 @kfree(%struct.talitos_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
