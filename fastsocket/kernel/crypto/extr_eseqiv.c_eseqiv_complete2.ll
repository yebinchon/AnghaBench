; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_complete2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_complete2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_givcrypt_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.eseqiv_request_ctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skcipher_givcrypt_request*)* @eseqiv_complete2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eseqiv_complete2(%struct.skcipher_givcrypt_request* %0) #0 {
  %2 = alloca %struct.skcipher_givcrypt_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.eseqiv_request_ctx*, align 8
  store %struct.skcipher_givcrypt_request* %0, %struct.skcipher_givcrypt_request** %2, align 8
  %5 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %6 = call %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request* %5)
  store %struct.crypto_ablkcipher* %6, %struct.crypto_ablkcipher** %3, align 8
  %7 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %8 = call %struct.eseqiv_request_ctx* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request* %7)
  store %struct.eseqiv_request_ctx* %8, %struct.eseqiv_request_ctx** %4, align 8
  %9 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %10 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.eseqiv_request_ctx*, %struct.eseqiv_request_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.eseqiv_request_ctx, %struct.eseqiv_request_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %17 = call i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher* %16)
  %18 = add nsw i64 %17, 1
  %19 = call i32 @PTR_ALIGN(i32* %15, i64 %18)
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %21 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %20)
  %22 = call i32 @memcpy(i32 %11, i32 %19, i32 %21)
  ret void
}

declare dso_local %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request*) #1

declare dso_local %struct.eseqiv_request_ctx* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
