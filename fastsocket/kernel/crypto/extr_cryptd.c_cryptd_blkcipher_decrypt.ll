; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_blkcipher_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_blkcipher_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.cryptd_blkcipher_ctx = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @cryptd_blkcipher_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryptd_blkcipher_decrypt(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptd_blkcipher_ctx*, align 8
  %6 = alloca %struct.crypto_blkcipher*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cryptd_blkcipher_ctx* @crypto_tfm_ctx(i32 %9)
  store %struct.cryptd_blkcipher_ctx* %10, %struct.cryptd_blkcipher_ctx** %5, align 8
  %11 = load %struct.cryptd_blkcipher_ctx*, %struct.cryptd_blkcipher_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.cryptd_blkcipher_ctx, %struct.cryptd_blkcipher_ctx* %11, i32 0, i32 0
  %13 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %12, align 8
  store %struct.crypto_blkcipher* %13, %struct.crypto_blkcipher** %6, align 8
  %14 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %15 = call i32 @ablkcipher_request_cast(%struct.crypto_async_request* %14)
  %16 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %6, align 8
  %19 = call %struct.TYPE_2__* @crypto_blkcipher_crt(%struct.crypto_blkcipher* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cryptd_blkcipher_crypt(i32 %15, %struct.crypto_blkcipher* %16, i32 %17, i32 %21)
  ret void
}

declare dso_local %struct.cryptd_blkcipher_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @cryptd_blkcipher_crypt(i32, %struct.crypto_blkcipher*, i32, i32) #1

declare dso_local i32 @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.TYPE_2__* @crypto_blkcipher_crt(%struct.crypto_blkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
