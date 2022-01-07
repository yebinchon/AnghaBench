; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_encrypt_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_encrypt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @crypto_ccm_encrypt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_ccm_encrypt_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %8 = alloca i32*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %9, i32 0, i32 0
  %11 = load %struct.aead_request*, %struct.aead_request** %10, align 8
  store %struct.aead_request* %11, %struct.aead_request** %5, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %6, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %15 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %14)
  store %struct.crypto_ccm_req_priv_ctx* %15, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %16 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %24 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %27 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %30 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %29)
  %31 = call i32 @scatterwalk_map_and_copy(i32* %22, i32 %25, i32 %28, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @aead_request_complete(%struct.aead_request* %33, i32 %34)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
