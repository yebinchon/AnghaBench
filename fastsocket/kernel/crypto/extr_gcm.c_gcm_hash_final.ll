; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_hash_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_hash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ahash_request }
%struct.ahash_request = type { i32 }

@gcm_hash_final_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*)* @gcm_hash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash_final(%struct.aead_request* %0, %struct.crypto_gcm_req_priv_ctx* %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store %struct.crypto_gcm_req_priv_ctx* %1, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %6 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ahash_request* %8, %struct.ahash_request** %5, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = call i32 @aead_request_flags(%struct.aead_request* %10)
  %12 = load i32, i32* @gcm_hash_final_done, align 4
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call i32 @ahash_request_set_callback(%struct.ahash_request* %9, i32 %11, i32 %12, %struct.aead_request* %13)
  %15 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %16 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %15, i32* null, i32 %18, i32 0)
  %20 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %21 = call i32 @crypto_ahash_final(%struct.ahash_request* %20)
  ret i32 %21
}

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32*, i32, i32) #1

declare dso_local i32 @crypto_ahash_final(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
