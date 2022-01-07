; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_fpu.c_crypto_fpu_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_fpu.c_crypto_fpu_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, %struct.crypto_blkcipher*, i32 }
%struct.crypto_blkcipher = type { i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_fpu_ctx = type { %struct.crypto_blkcipher* }
%struct.TYPE_2__ = type { i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @crypto_fpu_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_fpu_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_fpu_ctx*, align 8
  %11 = alloca %struct.crypto_blkcipher*, align 8
  %12 = alloca %struct.blkcipher_desc, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 1
  %15 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %16 = call %struct.crypto_fpu_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher* %15)
  store %struct.crypto_fpu_ctx* %16, %struct.crypto_fpu_ctx** %10, align 8
  %17 = load %struct.crypto_fpu_ctx*, %struct.crypto_fpu_ctx** %10, align 8
  %18 = getelementptr inbounds %struct.crypto_fpu_ctx, %struct.crypto_fpu_ctx* %17, i32 0, i32 0
  %19 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %18, align 8
  store %struct.crypto_blkcipher* %19, %struct.crypto_blkcipher** %11, align 8
  %20 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 0
  %21 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %22 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %20, align 8
  %27 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 1
  %28 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %11, align 8
  store %struct.crypto_blkcipher* %28, %struct.crypto_blkcipher** %27, align 8
  %29 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 2
  %30 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %31 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %29, align 8
  %33 = call i32 (...) @kernel_fpu_begin()
  %34 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 1
  %35 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %34, align 8
  %36 = call %struct.TYPE_2__* @crypto_blkcipher_crt(%struct.crypto_blkcipher* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)*, i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)** %37, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %38(%struct.blkcipher_desc* %12, %struct.scatterlist* %39, %struct.scatterlist* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = call i32 (...) @kernel_fpu_end()
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local %struct.crypto_fpu_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher*) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local %struct.TYPE_2__* @crypto_blkcipher_crt(%struct.crypto_blkcipher*) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
