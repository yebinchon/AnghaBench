; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.crypto_gcm_ghash_ctx, %struct.TYPE_2__ }
%struct.crypto_gcm_ghash_ctx = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ablkcipher_request }
%struct.ablkcipher_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@gcm_dec_hash_done = common dso_local global i32 0, align 4
@gcm_decrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_gcm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_gcm_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %12 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %11)
  store %struct.crypto_aead* %12, %struct.crypto_aead** %4, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %13)
  store %struct.crypto_gcm_req_priv_ctx* %14, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %15 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ablkcipher_request* %17, %struct.ablkcipher_request** %6, align 8
  %18 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %18, i32 0, i32 0
  store %struct.crypto_gcm_ghash_ctx* %19, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %21 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %74

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @gcm_dec_hash_done, align 4
  %44 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %47 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %48 = call i32 @gcm_hash(%struct.aead_request* %46, %struct.crypto_gcm_req_priv_ctx* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %2, align 4
  br label %74

53:                                               ; preds = %31
  %54 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %56 = call i32 @aead_request_flags(%struct.aead_request* %55)
  %57 = load i32, i32* @gcm_decrypt_done, align 4
  %58 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %59 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %54, i32 %56, i32 %57, %struct.aead_request* %58)
  %60 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %61 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @crypto_gcm_init_crypt(%struct.ablkcipher_request* %60, %struct.aead_request* %61, i32 %62)
  %64 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %65 = call i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %2, align 4
  br label %74

70:                                               ; preds = %53
  %71 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %72 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %73 = call i32 @crypto_gcm_verify(%struct.aead_request* %71, %struct.crypto_gcm_req_priv_ctx* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %68, %51, %28
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @gcm_hash(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_gcm_init_crypt(%struct.ablkcipher_request*, %struct.aead_request*, i32) #1

declare dso_local i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_gcm_verify(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
