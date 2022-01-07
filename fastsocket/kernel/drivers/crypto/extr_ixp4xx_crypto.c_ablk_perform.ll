; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_ablk_perform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_ablk_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir, i32 }
%struct.ix_sa_dir = type { i32, i32, i32 }
%struct.crypt_ctl = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ablkcipher_request* }
%struct.ablk_ctx = type { i32*, i32* }
%struct.buffer_desc = type { i32, i32* }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SEND_QID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NPE_OP_NOT_IN_PLACE = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CTL_FLAG_PERFORM_ABLK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CTL_FLAG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @ablk_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablk_perform(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_ablkcipher*, align 8
  %7 = alloca %struct.ixp_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ix_sa_dir*, align 8
  %10 = alloca %struct.crypt_ctl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ablk_ctx*, align 8
  %14 = alloca %struct.buffer_desc, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_desc, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %18 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %17)
  store %struct.crypto_ablkcipher* %18, %struct.crypto_ablkcipher** %6, align 8
  %19 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %20 = call %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %19)
  store %struct.ixp_ctx* %20, %struct.ixp_ctx** %7, align 8
  %21 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %22 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %24 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %28 = call %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %27)
  store %struct.ablk_ctx* %28, %struct.ablk_ctx** %13, align 8
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @GFP_KERNEL, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @SEND_QID, align 4
  %43 = call i64 @qmgr_stat_full(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %233

48:                                               ; preds = %40
  %49 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %49, i32 0, i32 2
  %51 = call i64 @atomic_read(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %233

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %60, i32 0, i32 1
  br label %65

62:                                               ; preds = %56
  %63 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %63, i32 0, i32 0
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi %struct.ix_sa_dir* [ %61, %59 ], [ %64, %62 ]
  store %struct.ix_sa_dir* %66, %struct.ix_sa_dir** %9, align 8
  %67 = call %struct.crypt_ctl* (...) @get_crypt_desc()
  store %struct.crypt_ctl* %67, %struct.crypt_ctl** %10, align 8
  %68 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %69 = icmp ne %struct.crypt_ctl* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %233

73:                                               ; preds = %65
  %74 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %75 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %76 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store %struct.ablkcipher_request* %74, %struct.ablkcipher_request** %77, align 8
  %78 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %9, align 8
  %79 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %82 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %9, align 8
  %84 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %87 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %9, align 8
  %89 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %92 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  %93 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %94 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %93, i32 0, i32 6
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %97 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %73
  %101 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %102 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %100, %73
  %107 = phi i1 [ false, %73 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %111 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %114 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @memcpy(i32 %112, i32 %115, i32 %116)
  %118 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %119 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %122 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = icmp ne %struct.TYPE_6__* %120, %123
  br i1 %124, label %125, label %162

125:                                              ; preds = %106
  %126 = load i32, i32* @NPE_OP_NOT_IN_PLACE, align 4
  %127 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %128 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %132 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ult i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @BUG_ON(i32 %138)
  %140 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %141 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load i32, i32* @dev, align 4
  %143 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %144 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %149 = call i32 @chainup_buffers(i32 %142, %struct.TYPE_6__* %145, i32 %146, %struct.buffer_desc* %16, i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %125
  br label %210

152:                                              ; preds = %125
  %153 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %153, i32* %12, align 4
  %154 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %16, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %157 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %156, i32 0, i32 0
  store i32* %155, i32** %157, align 8
  %158 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %16, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %161 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %165

162:                                              ; preds = %106
  %163 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %164 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %162, %152
  %166 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %167 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %166, i32 0, i32 1
  store i32* null, i32** %167, align 8
  %168 = load i32, i32* @dev, align 4
  %169 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %170 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %169, i32 0, i32 2
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @chainup_buffers(i32 %168, %struct.TYPE_6__* %171, i32 %172, %struct.buffer_desc* %14, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %165
  br label %201

178:                                              ; preds = %165
  %179 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %14, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %182 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %181, i32 0, i32 1
  store i32* %180, i32** %182, align 8
  %183 = getelementptr inbounds %struct.buffer_desc, %struct.buffer_desc* %14, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %186 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @CTL_FLAG_PERFORM_ABLK, align 4
  %188 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %189 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* @SEND_QID, align 4
  %193 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %194 = call i32 @crypt_virt2phys(%struct.crypt_ctl* %193)
  %195 = call i32 @qmgr_put_entry(i32 %192, i32 %194)
  %196 = load i32, i32* @SEND_QID, align 4
  %197 = call i32 @qmgr_stat_overflow(i32 %196)
  %198 = call i32 @BUG_ON(i32 %197)
  %199 = load i32, i32* @EINPROGRESS, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %233

201:                                              ; preds = %177
  %202 = load i32, i32* @dev, align 4
  %203 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %204 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %207 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @free_buf_chain(i32 %202, i32* %205, i32 %208)
  br label %210

210:                                              ; preds = %201, %151
  %211 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %212 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %211, i32 0, i32 2
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %215 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %214, i32 0, i32 1
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = icmp ne %struct.TYPE_6__* %213, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %210
  %219 = load i32, i32* @dev, align 4
  %220 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %221 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %224 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @free_buf_chain(i32 %219, i32* %222, i32 %225)
  br label %227

227:                                              ; preds = %218, %210
  %228 = load i32, i32* @CTL_FLAG_UNUSED, align 4
  %229 = load %struct.crypt_ctl*, %struct.crypt_ctl** %10, align 8
  %230 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %227, %178, %70, %53, %45
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i64 @qmgr_stat_full(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.crypt_ctl* @get_crypt_desc(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @chainup_buffers(i32, %struct.TYPE_6__*, i32, %struct.buffer_desc*, i32, i32) #1

declare dso_local i32 @qmgr_put_entry(i32, i32) #1

declare dso_local i32 @crypt_virt2phys(%struct.crypt_ctl*) #1

declare dso_local i32 @qmgr_stat_overflow(i32) #1

declare dso_local i32 @free_buf_chain(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
