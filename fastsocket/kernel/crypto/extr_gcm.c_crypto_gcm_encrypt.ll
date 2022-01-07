; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32, i32, %struct.crypto_gcm_ghash_ctx, %struct.TYPE_2__ }
%struct.crypto_gcm_ghash_ctx = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ablkcipher_request }
%struct.ablkcipher_request = type { i32 }

@gcm_encrypt_done = common dso_local global i32 0, align 4
@gcm_enc_hash_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_gcm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_gcm_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %8)
  store %struct.crypto_gcm_req_priv_ctx* %9, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %10 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ablkcipher_request* %12, %struct.ablkcipher_request** %5, align 8
  %13 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %13, i32 0, i32 2
  store %struct.crypto_gcm_ghash_ctx* %14, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @crypto_gcm_init_crypt(%struct.ablkcipher_request* %15, %struct.aead_request* %16, i32 %19)
  %21 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = call i32 @aead_request_flags(%struct.aead_request* %22)
  %24 = load i32, i32* @gcm_encrypt_done, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %26 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %21, i32 %23, i32 %24, %struct.aead_request* %25)
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @gcm_enc_hash_done, align 4
  %38 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %41 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %1
  %47 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %48 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %49 = call i32 @gcm_hash(%struct.aead_request* %47, %struct.crypto_gcm_req_priv_ctx* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @crypto_xor(i32 %57, i32 %60, i32 16)
  %62 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %63 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %64 = call i32 @gcm_enc_copy_hash(%struct.aead_request* %62, %struct.crypto_gcm_req_priv_ctx* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %54, %52, %44
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_gcm_init_crypt(%struct.ablkcipher_request*, %struct.aead_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @gcm_hash(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

declare dso_local i32 @crypto_xor(i32, i32, i32) #1

declare dso_local i32 @gcm_enc_copy_hash(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
