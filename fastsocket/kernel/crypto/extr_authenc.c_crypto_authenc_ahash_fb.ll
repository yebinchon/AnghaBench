; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_ahash_fb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_ahash_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i32, %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.authenc_request_ctx = type { i32, i32, i32, i32, i32* }
%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.aead_request*, i32)* @crypto_authenc_ahash_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @crypto_authenc_ahash_fb(%struct.aead_request* %0, i32 %1) #0 {
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
  %23 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %22, i32 0, i32 4
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
  %33 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %32, i32 0, i32 4
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
  %49 = call i32 @crypto_ahash_init(%struct.ahash_request* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %2
  %53 = load i32, i32* %12, align 4
  %54 = call i32* @ERR_PTR(i32 %53)
  store i32* %54, i32** %3, align 8
  br label %111

55:                                               ; preds = %2
  %56 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %57 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %58 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %62 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %56, i32 %59, i32* %60, i32 %63)
  %65 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %66 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %67 = call i32 @aead_request_flags(%struct.aead_request* %66)
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %74 = call i32 @ahash_request_set_callback(%struct.ahash_request* %65, i32 %69, i32 %72, %struct.aead_request* %73)
  %75 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %76 = call i32 @crypto_ahash_update(%struct.ahash_request* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %55
  %80 = load i32, i32* %12, align 4
  %81 = call i32* @ERR_PTR(i32 %80)
  store i32* %81, i32** %3, align 8
  br label %111

82:                                               ; preds = %55
  %83 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %84 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %85 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %89 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %83, i32 %86, i32* %87, i32 %90)
  %92 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %93 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %94 = call i32 @aead_request_flags(%struct.aead_request* %93)
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %98 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %101 = call i32 @ahash_request_set_callback(%struct.ahash_request* %92, i32 %96, i32 %99, %struct.aead_request* %100)
  %102 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %103 = call i32 @crypto_ahash_finup(%struct.ahash_request* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %82
  %107 = load i32, i32* %12, align 4
  %108 = call i32* @ERR_PTR(i32 %107)
  store i32* %108, i32** %3, align 8
  br label %111

109:                                              ; preds = %82
  %110 = load i32*, i32** %11, align 8
  store i32* %110, i32** %3, align 8
  br label %111

111:                                              ; preds = %109, %106, %79, %52
  %112 = load i32*, i32** %3, align 8
  ret i32* %112
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, %struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32, i32*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_finup(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
