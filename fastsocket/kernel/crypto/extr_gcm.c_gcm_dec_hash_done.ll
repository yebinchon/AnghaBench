; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_dec_hash_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_dec_hash_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.crypto_gcm_ghash_ctx, %struct.TYPE_2__ }
%struct.crypto_gcm_ghash_ctx = type { i32 }
%struct.TYPE_2__ = type { %struct.ablkcipher_request }
%struct.ablkcipher_request = type { i32 }

@gcm_decrypt_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32)* @gcm_dec_hash_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_dec_hash_done(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %8)
  store %struct.crypto_gcm_req_priv_ctx* %9, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %10 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ablkcipher_request* %12, %struct.ablkcipher_request** %6, align 8
  %13 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %13, i32 0, i32 0
  store %struct.crypto_gcm_ghash_ctx* %14, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %2
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %20 = call i32 @aead_request_flags(%struct.aead_request* %19)
  %21 = load i32, i32* @gcm_decrypt_done, align 4
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %18, i32 %20, i32 %21, %struct.aead_request* %22)
  %24 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %25 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %26 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @crypto_gcm_init_crypt(%struct.ablkcipher_request* %24, %struct.aead_request* %25, i32 %28)
  %30 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %31 = call i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @EINPROGRESS, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %17
  br label %55

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %47 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %48 = call i32 @crypto_gcm_verify(%struct.aead_request* %46, %struct.crypto_gcm_req_priv_ctx* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @aead_request_complete(%struct.aead_request* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  ret void
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_gcm_init_crypt(%struct.ablkcipher_request*, %struct.aead_request*, i32) #1

declare dso_local i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_gcm_verify(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
