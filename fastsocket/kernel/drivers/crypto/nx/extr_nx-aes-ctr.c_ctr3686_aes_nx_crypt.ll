; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr3686_aes_nx_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr3686_aes_nx_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32*, i32 }
%struct.scatterlist = type { i32 }
%struct.nx_crypto_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ctr3686_aes_nx_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr3686_aes_nx_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nx_crypto_ctx*, align 8
  %10 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %12 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nx_crypto_ctx* @crypto_blkcipher_ctx(i32 %13)
  store %struct.nx_crypto_ctx* %14, %struct.nx_crypto_ctx** %9, align 8
  %15 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %16 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %25 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %28 = call i32 @memcpy(i32* %23, i32* %26, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 15
  store i32 1, i32* %30, align 4
  %31 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %37 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ctr_aes_nx_crypt(%struct.blkcipher_desc* %38, %struct.scatterlist* %39, %struct.scatterlist* %40, i32 %41)
  ret i32 %42
}

declare dso_local %struct.nx_crypto_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ctr_aes_nx_crypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
