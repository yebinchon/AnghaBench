; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm4309_aes_nx_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm4309_aes_nx_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.nx_crypto_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.blkcipher_desc = type { i32*, %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @ccm4309_aes_nx_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm4309_aes_nx_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.nx_crypto_ctx*, align 8
  %4 = alloca %struct.blkcipher_desc, align 8
  %5 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %7 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i64 %9)
  store %struct.nx_crypto_ctx* %10, %struct.nx_crypto_ctx** %3, align 8
  %11 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 3, i32* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy(i32* %19, i32 %24, i32 3)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %29 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32* %27, i32 %30, i32 8)
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %4, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.crypto_blkcipher*
  %39 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %4, i32 0, i32 1
  store %struct.crypto_blkcipher* %38, %struct.crypto_blkcipher** %39, align 8
  %40 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %41 = call i32 @ccm_nx_decrypt(%struct.aead_request* %40, %struct.blkcipher_desc* %4)
  ret i32 %41
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ccm_nx_decrypt(%struct.aead_request*, %struct.blkcipher_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
