; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ecb.c_crypto_ecb_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ecb.c_crypto_ecb_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i32 }
%struct.crypto_ecb_ctx = type { %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @crypto_ecb_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ecb_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkcipher_walk, align 4
  %10 = alloca %struct.crypto_blkcipher*, align 8
  %11 = alloca %struct.crypto_ecb_ctx*, align 8
  %12 = alloca %struct.crypto_cipher*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 0
  %15 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  store %struct.crypto_blkcipher* %15, %struct.crypto_blkcipher** %10, align 8
  %16 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %10, align 8
  %17 = call %struct.crypto_ecb_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher* %16)
  store %struct.crypto_ecb_ctx* %17, %struct.crypto_ecb_ctx** %11, align 8
  %18 = load %struct.crypto_ecb_ctx*, %struct.crypto_ecb_ctx** %11, align 8
  %19 = getelementptr inbounds %struct.crypto_ecb_ctx, %struct.crypto_ecb_ctx* %18, i32 0, i32 0
  %20 = load %struct.crypto_cipher*, %struct.crypto_cipher** %19, align 8
  store %struct.crypto_cipher* %20, %struct.crypto_cipher** %12, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %9, %struct.scatterlist* %21, %struct.scatterlist* %22, i32 %23)
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %26 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %27 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %28 = call %struct.TYPE_2__* @crypto_cipher_alg(%struct.crypto_cipher* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @crypto_ecb_crypt(%struct.blkcipher_desc* %25, %struct.blkcipher_walk* %9, %struct.crypto_cipher* %26, i32 %30)
  ret i32 %31
}

declare dso_local %struct.crypto_ecb_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_ecb_crypt(%struct.blkcipher_desc*, %struct.blkcipher_walk*, %struct.crypto_cipher*, i32) #1

declare dso_local %struct.TYPE_2__* @crypto_cipher_alg(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
