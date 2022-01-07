; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_hash_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_hash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ahash_request }
%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*, i32, %struct.scatterlist*, i32)* @gcm_hash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash_update(%struct.aead_request* %0, %struct.crypto_gcm_req_priv_ctx* %1, i32 %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahash_request*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %6, align 8
  store %struct.crypto_gcm_req_priv_ctx* %1, %struct.crypto_gcm_req_priv_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ahash_request* %14, %struct.ahash_request** %11, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %17 = call i32 @aead_request_flags(%struct.aead_request* %16)
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %20 = call i32 @ahash_request_set_callback(%struct.ahash_request* %15, i32 %17, i32 %18, %struct.aead_request* %19)
  %21 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %21, %struct.scatterlist* %22, i32* null, i32 %23)
  %25 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %26 = call i32 @crypto_ahash_update(%struct.ahash_request* %25)
  ret i32 %26
}

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
