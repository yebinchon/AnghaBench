; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_givcrypt_request = type { i32, i32*, %struct.aead_request }
%struct.aead_request = type { i32, i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i32 }
%struct.skcipher_givcrypt_request = type { i32 }

@crypto_authenc_givencrypt_done = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_givcrypt_request*)* @crypto_authenc_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_givencrypt(%struct.aead_givcrypt_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_givcrypt_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_authenc_ctx*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.skcipher_givcrypt_request*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_givcrypt_request* %0, %struct.aead_givcrypt_request** %3, align 8
  %10 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %11 = call %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %4, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %13 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.crypto_authenc_ctx* %13, %struct.crypto_authenc_ctx** %5, align 8
  %14 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %15 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %14, i32 0, i32 2
  store %struct.aead_request* %15, %struct.aead_request** %6, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %17 = call %struct.skcipher_givcrypt_request* @aead_request_ctx(%struct.aead_request* %16)
  store %struct.skcipher_givcrypt_request* %17, %struct.skcipher_givcrypt_request** %7, align 8
  %18 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %19 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %7, align 8
  %22 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @skcipher_givcrypt_set_tfm(%struct.skcipher_givcrypt_request* %21, i32 %24)
  %26 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %7, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %28 = call i32 @aead_request_flags(%struct.aead_request* %27)
  %29 = load i32, i32* @crypto_authenc_givencrypt_done, align 4
  %30 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %31 = call i32 @skcipher_givcrypt_set_callback(%struct.skcipher_givcrypt_request* %26, i32 %28, i32 %29, %struct.aead_request* %30)
  %32 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %7, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @skcipher_givcrypt_set_crypt(%struct.skcipher_givcrypt_request* %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %49 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @skcipher_givcrypt_set_giv(%struct.skcipher_givcrypt_request* %46, i32* %47, i32 %50)
  %52 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %7, align 8
  %53 = call i32 @crypto_skcipher_givencrypt(%struct.skcipher_givcrypt_request* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %1
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %1
  %59 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %62 = call i32 @crypto_authenc_genicv(%struct.aead_request* %59, i32* %60, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %56
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.skcipher_givcrypt_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @skcipher_givcrypt_set_tfm(%struct.skcipher_givcrypt_request*, i32) #1

declare dso_local i32 @skcipher_givcrypt_set_callback(%struct.skcipher_givcrypt_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @skcipher_givcrypt_set_crypt(%struct.skcipher_givcrypt_request*, i32, i32, i32, i32) #1

declare dso_local i32 @skcipher_givcrypt_set_giv(%struct.skcipher_givcrypt_request*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_givencrypt(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @crypto_authenc_genicv(%struct.aead_request*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
