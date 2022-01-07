; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_encrypt_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_encrypt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i32 }
%struct.ablkcipher_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @crypto_authenc_encrypt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_authenc_encrypt_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.crypto_authenc_ctx*, align 8
  %8 = alloca %struct.ablkcipher_request*, align 8
  %9 = alloca i32*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %10, i32 0, i32 0
  %12 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  store %struct.aead_request* %12, %struct.aead_request** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %17 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %16)
  store %struct.crypto_aead* %17, %struct.crypto_aead** %6, align 8
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %19 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %18)
  store %struct.crypto_authenc_ctx* %19, %struct.crypto_authenc_ctx** %7, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %21 = call %struct.ablkcipher_request* @aead_request_ctx(%struct.aead_request* %20)
  store %struct.ablkcipher_request* %21, %struct.ablkcipher_request** %8, align 8
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %22, i64 1
  %24 = bitcast %struct.ablkcipher_request* %23 to i32*
  %25 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @crypto_ablkcipher_reqsize(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  store i32* %30, i32** %9, align 8
  %31 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @crypto_authenc_genicv(%struct.aead_request* %31, i32* %32, i32 0)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %15, %2
  %35 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @authenc_request_complete(%struct.aead_request* %35, i32 %36)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.ablkcipher_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_ablkcipher_reqsize(i32) #1

declare dso_local i32 @crypto_authenc_genicv(%struct.aead_request*, i32*, i32) #1

declare dso_local i32 @authenc_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
