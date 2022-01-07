; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_authenc_verify_ahash_update_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_authenc_verify_ahash_update_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i32, i64 }
%struct.authenc_request_ctx = type { i32, i32, i32, i64 }
%struct.ahash_request = type { i32* }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @authenc_verify_ahash_update_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authenc_verify_ahash_update_done(%struct.crypto_async_request* %0, i32 %1) #0 {
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
  %24 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %23, i32 0, i32 3
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
  br label %133

35:                                               ; preds = %2
  %36 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %37 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %38 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %41 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %44 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %36, i32 %39, i32* %42, i32 %45)
  %47 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %48 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %49 = call i32 @aead_request_flags(%struct.aead_request* %48)
  %50 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %53 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %56 = call i32 @ahash_request_set_callback(%struct.ahash_request* %47, i32 %51, i32 %54, %struct.aead_request* %55)
  %57 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %58 = call i32 @crypto_ahash_finup(%struct.ahash_request* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %35
  br label %133

62:                                               ; preds = %35
  %63 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %64 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %66 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %73 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %76 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @scatterwalk_map_and_copy(i32* %71, i32 %74, i32 %77, i32 %78, i32 0)
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %82 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @memcmp(i32* %80, i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %62
  %88 = load i32, i32* @EBADMSG, align 4
  %89 = sub nsw i32 0, %88
  br label %91

90:                                               ; preds = %62
  br label %91

91:                                               ; preds = %90, %87
  %92 = phi i32 [ %89, %87 ], [ 0, %90 ]
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %133

96:                                               ; preds = %91
  %97 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %98 = call i8* @aead_request_ctx(%struct.aead_request* %97)
  %99 = bitcast i8* %98 to %struct.ablkcipher_request*
  store %struct.ablkcipher_request* %99, %struct.ablkcipher_request** %7, align 8
  %100 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %101 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %10, align 8
  %102 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %100, i32 %103)
  %105 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %106 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %107 = call i32 @aead_request_flags(%struct.aead_request* %106)
  %108 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %109 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %113 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %105, i32 %107, i32 %111, i32 %115)
  %117 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %118 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %119 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %122 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %125 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %128 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %117, i32 %120, i32 %123, i32 %126, i32 %129)
  %131 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %132 = call i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %96, %95, %61, %34
  %134 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @authenc_request_complete(%struct.aead_request* %134, i32 %135)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i8* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32, i32*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ahash_finup(%struct.ahash_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @authenc_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
