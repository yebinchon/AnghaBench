; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_aesni-intel_glue.c_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_aesni-intel_glue.c_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_aes_ctx = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@AES_BLOCK_MASK = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ecb_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %13 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @crypto_blkcipher_ctx(i32 %14)
  %16 = call %struct.crypto_aes_ctx* @aes_ctx(i32 %15)
  store %struct.crypto_aes_ctx* %16, %struct.crypto_aes_ctx** %9, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %17, %struct.scatterlist* %18, i32 %19)
  %21 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %22 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %21, %struct.blkcipher_walk* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %26 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = call i32 (...) @kernel_fpu_begin()
  br label %30

30:                                               ; preds = %34, %4
  %31 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @AES_BLOCK_MASK, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @aesni_ecb_enc(%struct.crypto_aes_ctx* %35, i32 %39, i32 %43, i32 %46)
  %48 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %52, %struct.blkcipher_walk* %10, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %30

55:                                               ; preds = %30
  %56 = call i32 (...) @kernel_fpu_end()
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local %struct.crypto_aes_ctx* @aes_ctx(i32) #1

declare dso_local i32 @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @aesni_ecb_enc(%struct.crypto_aes_ctx*, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
