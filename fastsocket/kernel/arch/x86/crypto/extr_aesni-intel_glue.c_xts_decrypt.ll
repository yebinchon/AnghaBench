; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_aesni-intel_glue.c_xts_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_aesni-intel_glue.c_xts_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.aesni_xts_ctx = type { i32, i32 }
%struct.xts_crypt_req = type { i32, i32, i32, i32, i32, i32* }

@lrw_xts_decrypt_callback = common dso_local global i32 0, align 4
@aesni_xts_tweak = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @xts_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aesni_xts_ctx*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca %struct.xts_crypt_req, align 8
  %12 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.aesni_xts_ctx* @crypto_blkcipher_ctx(i32 %15)
  store %struct.aesni_xts_ctx* %16, %struct.aesni_xts_ctx** %9, align 8
  %17 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %11, i32 0, i32 0
  store i32 32, i32* %17, align 8
  %18 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %11, i32 0, i32 1
  %19 = load i32, i32* @lrw_xts_decrypt_callback, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %11, i32 0, i32 2
  %21 = load %struct.aesni_xts_ctx*, %struct.aesni_xts_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.aesni_xts_ctx, %struct.aesni_xts_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @aes_ctx(i32 %23)
  store i32 %24, i32* %20, align 8
  %25 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %11, i32 0, i32 3
  %26 = load i32, i32* @aesni_xts_tweak, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %11, i32 0, i32 4
  %28 = load %struct.aesni_xts_ctx*, %struct.aesni_xts_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.aesni_xts_ctx, %struct.aesni_xts_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @aes_ctx(i32 %30)
  store i32 %31, i32* %27, align 8
  %32 = getelementptr inbounds %struct.xts_crypt_req, %struct.xts_crypt_req* %11, i32 0, i32 5
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32* %33, i32** %32, align 8
  %34 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %37 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = call i32 (...) @kernel_fpu_begin()
  %41 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %42 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @xts_crypt(%struct.blkcipher_desc* %41, %struct.scatterlist* %42, %struct.scatterlist* %43, i32 %44, %struct.xts_crypt_req* %11)
  store i32 %45, i32* %12, align 4
  %46 = call i32 (...) @kernel_fpu_end()
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local %struct.aesni_xts_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @aes_ctx(i32) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @xts_crypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32, %struct.xts_crypt_req*) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
