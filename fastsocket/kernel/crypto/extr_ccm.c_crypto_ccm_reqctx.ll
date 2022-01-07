; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_reqctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_reqctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ccm_req_priv_ctx = type opaque
%struct.aead_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_ccm_req_priv_ctx* (%struct.aead_request*)* @crypto_ccm_reqctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca i64, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %4 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %5 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %4)
  %6 = call i64 @crypto_aead_alignmask(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %8 = call i64 @aead_request_ctx(%struct.aead_request* %7)
  %9 = inttoptr i64 %8 to i32*
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %10, 1
  %12 = call i64 @PTR_ALIGN(i32* %9, i64 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.crypto_ccm_req_priv_ctx*
  ret %struct.crypto_ccm_req_priv_ctx* %14
}

declare dso_local i64 @crypto_aead_alignmask(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i64 @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @aead_request_ctx(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
