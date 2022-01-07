; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_perform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir, i32 }
%struct.ix_sa_dir = type { i32, i32, i32 }
%struct.crypt_ctl = type { i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.aead_request* }
%struct.buffer_desc = type { i64, i64, i32, i32 }
%struct.aead_ctx = type { i32, i32, i32*, i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SEND_QID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@buffer_pool = common dso_local global i32 0, align 4
@CTL_FLAG_PERFORM_AEAD = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CTL_FLAG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32, i32, i32, i32*)* @aead_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_perform(%struct.aead_request* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.crypto_aead*, align 8
  %13 = alloca %struct.ixp_ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ix_sa_dir*, align 8
  %17 = alloca %struct.crypt_ctl*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_desc*, align 8
  %20 = alloca %struct.buffer_desc, align 8
  %21 = alloca %struct.aead_ctx*, align 8
  %22 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %23 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %24 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %23)
  store %struct.crypto_aead* %24, %struct.crypto_aead** %12, align 8
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %26 = call %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %25)
  store %struct.ixp_ctx* %26, %struct.ixp_ctx** %13, align 8
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %28 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %30 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %32 = call %struct.aead_ctx* @aead_request_ctx(%struct.aead_request* %31)
  store %struct.aead_ctx* %32, %struct.aead_ctx** %21, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* @GFP_KERNEL, align 4
  br label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* @SEND_QID, align 4
  %47 = call i64 @qmgr_stat_full(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %319

52:                                               ; preds = %44
  %53 = load %struct.ixp_ctx*, %struct.ixp_ctx** %13, align 8
  %54 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %53, i32 0, i32 2
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %319

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.ixp_ctx*, %struct.ixp_ctx** %13, align 8
  %65 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %64, i32 0, i32 1
  store %struct.ix_sa_dir* %65, %struct.ix_sa_dir** %16, align 8
  %66 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %67 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %18, align 4
  br label %80

69:                                               ; preds = %60
  %70 = load %struct.ixp_ctx*, %struct.ixp_ctx** %13, align 8
  %71 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %70, i32 0, i32 0
  store %struct.ix_sa_dir* %71, %struct.ix_sa_dir** %16, align 8
  %72 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sub i32 %74, %75
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %69, %63
  %81 = call %struct.crypt_ctl* (...) @get_crypt_desc()
  store %struct.crypt_ctl* %81, %struct.crypt_ctl** %17, align 8
  %82 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %83 = icmp ne %struct.crypt_ctl* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %319

87:                                               ; preds = %80
  %88 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %89 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %90 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.aead_request* %88, %struct.aead_request** %91, align 8
  %92 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %16, align 8
  %93 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %96 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %16, align 8
  %98 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %101 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %16, align 8
  %103 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %106 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %109 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %112 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %114 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %113, i32 0, i32 7
  store i64 0, i64* %114, align 8
  %115 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %116 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add i32 %117, %118
  %120 = load i32, i32* %18, align 4
  %121 = add i32 %119, %120
  %122 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %123 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %87
  %127 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %128 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %126, %87
  %133 = phi i1 [ false, %87 ], [ %131, %126 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUG_ON(i32 %134)
  %136 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %137 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %140 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @memcpy(i32 %138, i32 %141, i32 %142)
  %144 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %145 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %148 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %146, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %132
  %152 = call i32 (...) @BUG()
  br label %153

153:                                              ; preds = %151, %132
  %154 = load i32, i32* @dev, align 4
  %155 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %156 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %159 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* @DMA_TO_DEVICE, align 4
  %163 = call %struct.buffer_desc* @chainup_buffers(i32 %154, i32* %157, i32 %160, %struct.buffer_desc* %20, i32 %161, i32 %162)
  store %struct.buffer_desc* %163, %struct.buffer_desc** %19, align 8
  %164 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %20, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %167 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %20, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %171 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %173 = icmp ne %struct.buffer_desc* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %153
  br label %313

175:                                              ; preds = %153
  %176 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %177 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %176, i32 0, i32 3
  %178 = call i32 @sg_init_table(i32* %177, i32 1)
  %179 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %180 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %179, i32 0, i32 3
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @sg_set_buf(i32* %180, i32* %181, i32 %182)
  %184 = load i32, i32* @dev, align 4
  %185 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %186 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %185, i32 0, i32 3
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %191 = call %struct.buffer_desc* @chainup_buffers(i32 %184, i32* %186, i32 %187, %struct.buffer_desc* %188, i32 %189, i32 %190)
  store %struct.buffer_desc* %191, %struct.buffer_desc** %19, align 8
  %192 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %193 = icmp ne %struct.buffer_desc* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %175
  br label %304

195:                                              ; preds = %175
  %196 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %197 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @hmac_inconsistent(i32* %198, i32 %199, i32 %200)
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %238

204:                                              ; preds = %195
  %205 = load i32, i32* @buffer_pool, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %208 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %207, i32 0, i32 5
  %209 = call i32* @dma_pool_alloc(i32 %205, i32 %206, i64* %208)
  %210 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %211 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %210, i32 0, i32 2
  store i32* %209, i32** %211, align 8
  %212 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %213 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %204
  br label %304

221:                                              ; preds = %204
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %221
  %225 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %226 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %229 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @scatterwalk_map_and_copy(i32* %227, i32* %230, i32 %231, i32 %232, i32 0)
  br label %234

234:                                              ; preds = %224, %221
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %237 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %241

238:                                              ; preds = %195
  %239 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %240 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %239, i32 0, i32 2
  store i32* null, i32** %240, align 8
  br label %241

241:                                              ; preds = %238, %234
  %242 = load i32, i32* @dev, align 4
  %243 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %244 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %15, align 4
  %248 = add i32 %246, %247
  %249 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %250 = load i32, i32* %22, align 4
  %251 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %252 = call %struct.buffer_desc* @chainup_buffers(i32 %242, i32* %245, i32 %248, %struct.buffer_desc* %249, i32 %250, i32 %251)
  store %struct.buffer_desc* %252, %struct.buffer_desc** %19, align 8
  %253 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %254 = icmp ne %struct.buffer_desc* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %241
  br label %289

256:                                              ; preds = %241
  %257 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %258 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %274, label %261

261:                                              ; preds = %256
  %262 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %263 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.buffer_desc*, %struct.buffer_desc** %19, align 8
  %266 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %264, %267
  %269 = load i32, i32* %15, align 4
  %270 = zext i32 %269 to i64
  %271 = sub nsw i64 %268, %270
  %272 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %273 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %272, i32 0, i32 5
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %261, %256
  %275 = load i32, i32* @CTL_FLAG_PERFORM_AEAD, align 4
  %276 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %277 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  %280 = load i32, i32* @SEND_QID, align 4
  %281 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %282 = call i32 @crypt_virt2phys(%struct.crypt_ctl* %281)
  %283 = call i32 @qmgr_put_entry(i32 %280, i32 %282)
  %284 = load i32, i32* @SEND_QID, align 4
  %285 = call i32 @qmgr_stat_overflow(i32 %284)
  %286 = call i32 @BUG_ON(i32 %285)
  %287 = load i32, i32* @EINPROGRESS, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %6, align 4
  br label %319

289:                                              ; preds = %255
  %290 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %291 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %303

294:                                              ; preds = %289
  %295 = load i32, i32* @buffer_pool, align 4
  %296 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %297 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %300 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %299, i32 0, i32 5
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @dma_pool_free(i32 %295, i32* %298, i64 %301)
  br label %303

303:                                              ; preds = %294, %289
  br label %304

304:                                              ; preds = %303, %220, %194
  %305 = load i32, i32* @dev, align 4
  %306 = load %struct.aead_ctx*, %struct.aead_ctx** %21, align 8
  %307 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %310 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @free_buf_chain(i32 %305, i32 %308, i32 %311)
  br label %313

313:                                              ; preds = %304, %174
  %314 = load i32, i32* @CTL_FLAG_UNUSED, align 4
  %315 = load %struct.crypt_ctl*, %struct.crypt_ctl** %17, align 8
  %316 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %315, i32 0, i32 3
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* @ENOMEM, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %6, align 4
  br label %319

319:                                              ; preds = %313, %274, %84, %57, %49
  %320 = load i32, i32* %6, align 4
  ret i32 %320
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.aead_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @qmgr_stat_full(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.crypt_ctl* @get_crypt_desc(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.buffer_desc* @chainup_buffers(i32, i32*, i32, %struct.buffer_desc*, i32, i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_set_buf(i32*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hmac_inconsistent(i32*, i32, i32) #1

declare dso_local i32* @dma_pool_alloc(i32, i32, i64*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @qmgr_put_entry(i32, i32) #1

declare dso_local i32 @crypt_virt2phys(%struct.crypt_ctl*) #1

declare dso_local i32 @qmgr_stat_overflow(i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i64) #1

declare dso_local i32 @free_buf_chain(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
