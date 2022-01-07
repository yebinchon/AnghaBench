; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { %struct.crypto_ablkcipher* }
%struct.crypto_ablkcipher = type { i32 }
%struct.ablkcipher_request = type { i32 }

@crypto_authenc_encrypt_done = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_authenc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_authenc_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca %struct.crypto_ablkcipher*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %4, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %15 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  store %struct.crypto_authenc_ctx* %15, %struct.crypto_authenc_ctx** %5, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %17 = call %struct.ablkcipher_request* @aead_request_ctx(%struct.aead_request* %16)
  store %struct.ablkcipher_request* %17, %struct.ablkcipher_request** %6, align 8
  %18 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %18, i32 0, i32 0
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %19, align 8
  store %struct.crypto_ablkcipher* %20, %struct.crypto_ablkcipher** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 3
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %8, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %28 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %27, i64 1
  %29 = bitcast %struct.ablkcipher_request* %28 to i32*
  %30 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %31 = call i32 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %10, align 8
  %34 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %35 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %36 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %34, %struct.crypto_ablkcipher* %35)
  %37 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %38 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %39 = call i32 @aead_request_flags(%struct.aead_request* %38)
  %40 = load i32, i32* @crypto_authenc_encrypt_done, align 4
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %37, i32 %39, i32 %40, %struct.aead_request* %41)
  %43 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %44 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %45 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %50 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %43, i32 %46, %struct.scatterlist* %47, i32 %48, i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %58 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %57)
  %59 = call i32 @memcpy(i32* %53, i32 %56, i32 %58)
  %60 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %61 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %1
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %1
  %67 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %70 = call i32 @crypto_authenc_genicv(%struct.aead_request* %67, i32* %68, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %64
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.ablkcipher_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, %struct.crypto_ablkcipher*) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_authenc_genicv(%struct.aead_request*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
