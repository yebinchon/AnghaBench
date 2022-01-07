; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_ahash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i32, %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.authenc_request_ctx = type { i32, i32, i32, i32* }
%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.aead_request*, i32)* @crypto_authenc_ahash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @crypto_authenc_ahash(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.crypto_authenc_ctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.authenc_request_ctx*, align 8
  %10 = alloca %struct.ahash_request*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %6, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %16 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_authenc_ctx* %16, %struct.crypto_authenc_ctx** %7, align 8
  %17 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %17, i32 0, i32 1
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %18, align 8
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %8, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %21 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %20)
  store %struct.authenc_request_ctx* %21, %struct.authenc_request_ctx** %9, align 8
  %22 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = bitcast i32* %29 to i8*
  %31 = bitcast i8* %30 to %struct.ahash_request*
  store %struct.ahash_request* %31, %struct.ahash_request** %10, align 8
  %32 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = ptrtoint i32* %35 to i64
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %38 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %37)
  %39 = add i64 %36, %38
  %40 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %41 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %40)
  %42 = add nsw i64 %41, 1
  %43 = call i64 @ALIGN(i64 %39, i64 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %11, align 8
  %45 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %46 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %47 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %45, %struct.crypto_ahash* %46)
  %48 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %49 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %48, i32 %51, i32* %52, i32 %55)
  %57 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %58 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %59 = call i32 @aead_request_flags(%struct.aead_request* %58)
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %63 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %66 = call i32 @ahash_request_set_callback(%struct.ahash_request* %57, i32 %61, i32 %64, %struct.aead_request* %65)
  %67 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %68 = call i32 @crypto_ahash_digest(%struct.ahash_request* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %2
  %72 = load i32, i32* %12, align 4
  %73 = call i32* @ERR_PTR(i32 %72)
  store i32* %73, i32** %3, align 8
  br label %76

74:                                               ; preds = %2
  %75 = load i32*, i32** %11, align 8
  store i32* %75, i32** %3, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, %struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32, i32*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
