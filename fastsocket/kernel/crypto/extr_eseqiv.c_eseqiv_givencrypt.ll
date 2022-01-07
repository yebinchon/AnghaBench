; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_givcrypt_request = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, %struct.TYPE_3__, %struct.scatterlist*, %struct.scatterlist* }
%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.eseqiv_ctx = type { i32*, i64 }
%struct.eseqiv_request_ctx = type { %struct.scatterlist*, %struct.scatterlist*, i64 }
%struct.ablkcipher_request = type { i32 }
%struct.page = type { i32 }

@eseqiv_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_givcrypt_request*)* @eseqiv_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eseqiv_givencrypt(%struct.skcipher_givcrypt_request* %0) #0 {
  %2 = alloca %struct.skcipher_givcrypt_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.eseqiv_ctx*, align 8
  %5 = alloca %struct.eseqiv_request_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.skcipher_givcrypt_request* %0, %struct.skcipher_givcrypt_request** %2, align 8
  %21 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %22 = call %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request* %21)
  store %struct.crypto_ablkcipher* %22, %struct.crypto_ablkcipher** %3, align 8
  %23 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %24 = call %struct.eseqiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %23)
  store %struct.eseqiv_ctx* %24, %struct.eseqiv_ctx** %4, align 8
  %25 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %26 = call %struct.eseqiv_request_ctx* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request* %25)
  store %struct.eseqiv_request_ctx* %26, %struct.eseqiv_request_ctx** %5, align 8
  %27 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.eseqiv_ctx*, %struct.eseqiv_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.eseqiv_ctx, %struct.eseqiv_ctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.ablkcipher_request*
  store %struct.ablkcipher_request* %35, %struct.ablkcipher_request** %6, align 8
  %36 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %37 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %38 = call i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher* %37)
  %39 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %36, i32 %38)
  %40 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %41 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %14, align 8
  %43 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %44 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %49 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %8, align 8
  %53 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %54 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  store %struct.scatterlist* %56, %struct.scatterlist** %9, align 8
  %57 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %58 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load %struct.scatterlist*, %struct.scatterlist** %59, align 8
  store %struct.scatterlist* %60, %struct.scatterlist** %10, align 8
  %61 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %62 = call %struct.page* @sg_page(%struct.scatterlist* %61)
  store %struct.page* %62, %struct.page** %12, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %64 = call %struct.page* @sg_page(%struct.scatterlist* %63)
  store %struct.page* %64, %struct.page** %13, align 8
  %65 = load %struct.page*, %struct.page** %12, align 8
  %66 = call i64 @PageHighMem(%struct.page* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %1
  br label %77

69:                                               ; preds = %1
  %70 = load %struct.page*, %struct.page** %12, align 8
  %71 = call i32* @page_address(%struct.page* %70)
  %72 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %73 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  br label %77

77:                                               ; preds = %69, %68
  %78 = phi i32* [ null, %68 ], [ %76, %69 ]
  store i32* %78, i32** %15, align 8
  %79 = load %struct.page*, %struct.page** %13, align 8
  %80 = call i64 @PageHighMem(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %91

83:                                               ; preds = %77
  %84 = load %struct.page*, %struct.page** %13, align 8
  %85 = call i32* @page_address(%struct.page* %84)
  %86 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  br label %91

91:                                               ; preds = %83, %82
  %92 = phi i32* [ null, %82 ], [ %90, %83 ]
  store i32* %92, i32** %16, align 8
  %93 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %94 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %18, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = icmp ne i32* %95, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %91
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %18, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = icmp ne i32* %102, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %114 = call i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher* %113)
  %115 = add nsw i64 %114, 1
  %116 = call i32* @PTR_ALIGN(i32* %112, i64 %115)
  store i32* %116, i32** %14, align 8
  %117 = load i32, i32* @eseqiv_complete, align 4
  store i32 %117, i32* %7, align 4
  %118 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %119 = bitcast %struct.skcipher_givcrypt_request* %118 to i8*
  store i8* %119, i8** %8, align 8
  br label %120

120:                                              ; preds = %108, %101, %91
  %121 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %122 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %123 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %121, i32 %126, i32 %127, i8* %128)
  %130 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %131 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %130, i32 0, i32 0
  %132 = load %struct.scatterlist*, %struct.scatterlist** %131, align 8
  %133 = call i32 @sg_init_table(%struct.scatterlist* %132, i32 2)
  %134 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %135 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %134, i32 0, i32 0
  %136 = load %struct.scatterlist*, %struct.scatterlist** %135, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @sg_set_buf(%struct.scatterlist* %136, i32* %137, i32 %138)
  %140 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %141 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %140, i32 0, i32 0
  %142 = load %struct.scatterlist*, %struct.scatterlist** %141, align 8
  %143 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %18, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = icmp eq i32* %144, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %142, %struct.scatterlist* %143, i32 %150, i32 2)
  %152 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %153 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %152, i32 0, i32 0
  %154 = load %struct.scatterlist*, %struct.scatterlist** %153, align 8
  store %struct.scatterlist* %154, %struct.scatterlist** %11, align 8
  %155 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %156 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %157 = icmp ne %struct.scatterlist* %155, %156
  br i1 %157, label %158, label %184

158:                                              ; preds = %120
  %159 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %160 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %159, i32 0, i32 1
  %161 = load %struct.scatterlist*, %struct.scatterlist** %160, align 8
  %162 = call i32 @sg_init_table(%struct.scatterlist* %161, i32 2)
  %163 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %164 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %163, i32 0, i32 1
  %165 = load %struct.scatterlist*, %struct.scatterlist** %164, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @sg_set_buf(%struct.scatterlist* %165, i32* %166, i32 %167)
  %169 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %170 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %169, i32 0, i32 1
  %171 = load %struct.scatterlist*, %struct.scatterlist** %170, align 8
  %172 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %173 = load i32*, i32** %16, align 8
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %18, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = icmp eq i32* %173, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %171, %struct.scatterlist* %172, i32 %179, i32 2)
  %181 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %182 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %181, i32 0, i32 1
  %183 = load %struct.scatterlist*, %struct.scatterlist** %182, align 8
  store %struct.scatterlist* %183, %struct.scatterlist** %11, align 8
  br label %184

184:                                              ; preds = %158, %120
  %185 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %186 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %5, align 8
  %187 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %186, i32 0, i32 0
  %188 = load %struct.scatterlist*, %struct.scatterlist** %187, align 8
  %189 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %190 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %191 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %18, align 4
  %195 = zext i32 %194 to i64
  %196 = add nsw i64 %193, %195
  %197 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %198 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %185, %struct.scatterlist* %188, %struct.scatterlist* %189, i64 %196, i32* %200)
  %202 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %203 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.eseqiv_ctx*, %struct.eseqiv_ctx** %4, align 8
  %207 = getelementptr inbounds %struct.eseqiv_ctx, %struct.eseqiv_ctx* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @memcpy(i32* %205, i32* %208, i32 %209)
  %211 = load i32, i32* %18, align 4
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %18, align 4
  %213 = zext i32 %212 to i64
  %214 = icmp ugt i64 %213, 4
  br i1 %214, label %215, label %224

215:                                              ; preds = %184
  %216 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %217 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = zext i32 %219 to i64
  %221 = sub i64 %220, 4
  %222 = trunc i64 %221 to i32
  %223 = call i32 @memset(i32* %218, i32 0, i32 %222)
  store i32 4, i32* %19, align 4
  br label %224

224:                                              ; preds = %215, %184
  %225 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %226 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @cpu_to_be64(i32 %227)
  store i32 %228, i32* %17, align 4
  %229 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %230 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %18, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %19, align 4
  %236 = zext i32 %235 to i64
  %237 = sub i64 0, %236
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @memcpy(i32* %238, i32* %17, i32 %239)
  %241 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %242 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %241)
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %20, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %224
  br label %256

246:                                              ; preds = %224
  %247 = load i32*, i32** %14, align 8
  %248 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %249 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %247, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %254 = call i32 @eseqiv_complete2(%struct.skcipher_givcrypt_request* %253)
  br label %255

255:                                              ; preds = %252, %246
  br label %256

256:                                              ; preds = %255, %245
  %257 = load i32, i32* %20, align 4
  ret i32 %257
}

declare dso_local %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request*) #1

declare dso_local %struct.eseqiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.eseqiv_request_ctx* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, i8*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @scatterwalk_crypto_chain(%struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @eseqiv_complete2(%struct.skcipher_givcrypt_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
