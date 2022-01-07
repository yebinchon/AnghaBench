; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_authenc_verify_ahash_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_authenc_verify_ahash_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i32, i64 }
%struct.authenc_request_ctx = type { i32, i32, i64 }
%struct.ahash_request = type { i32* }

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @authenc_verify_ahash_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authenc_verify_ahash_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ablkcipher_request*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.crypto_authenc_ctx*, align 8
  %11 = alloca %struct.authenc_request_ctx*, align 8
  %12 = alloca %struct.ahash_request*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %14 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %13, i32 0, i32 0
  %15 = load %struct.aead_request*, %struct.aead_request** %14, align 8
  store %struct.aead_request* %15, %struct.aead_request** %8, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %17 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %16)
  store %struct.crypto_aead* %17, %struct.crypto_aead** %9, align 8
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %19 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %18)
  store %struct.crypto_authenc_ctx* %19, %struct.crypto_authenc_ctx** %10, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %21 = call i8* @aead_request_ctx(%struct.aead_request* %20)
  %22 = bitcast i8* %21 to %struct.authenc_request_ctx*
  store %struct.authenc_request_ctx* %22, %struct.authenc_request_ctx** %11, align 8
  %23 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %24 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.ahash_request*
  store %struct.ahash_request* %31, %struct.ahash_request** %12, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %106

35:                                               ; preds = %2
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %37 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %39 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %46 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %49 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @scatterwalk_map_and_copy(i32* %44, i32 %47, i32 %50, i32 %51, i32 0)
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %55 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @memcmp(i32* %53, i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %35
  %61 = load i32, i32* @EBADMSG, align 4
  %62 = sub nsw i32 0, %61
  br label %64

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %106

69:                                               ; preds = %64
  %70 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %71 = call i8* @aead_request_ctx(%struct.aead_request* %70)
  %72 = bitcast i8* %71 to %struct.ablkcipher_request*
  store %struct.ablkcipher_request* %72, %struct.ablkcipher_request** %7, align 8
  %73 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %74 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %10, align 8
  %75 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %73, i32 %76)
  %78 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %79 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %80 = call i32 @aead_request_flags(%struct.aead_request* %79)
  %81 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %82 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %86 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %78, i32 %80, i32 %84, i32 %88)
  %90 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %91 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %92 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %98 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %101 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %90, i32 %93, i32 %96, i32 %99, i32 %102)
  %104 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %105 = call i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %69, %68, %34
  %107 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @authenc_request_complete(%struct.aead_request* %107, i32 %108)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i8* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @authenc_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
