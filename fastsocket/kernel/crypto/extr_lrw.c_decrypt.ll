; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.priv = type { i32 }
%struct.blkcipher_walk = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %12 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.priv* @crypto_blkcipher_ctx(i32 %13)
  store %struct.priv* %14, %struct.priv** %9, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %15, %struct.scatterlist* %16, i32 %17)
  %19 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %20 = load %struct.priv*, %struct.priv** %9, align 8
  %21 = load %struct.priv*, %struct.priv** %9, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_2__* @crypto_cipher_alg(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @crypt(%struct.blkcipher_desc* %19, %struct.blkcipher_walk* %10, %struct.priv* %20, i32 %26)
  ret i32 %27
}

declare dso_local %struct.priv* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypt(%struct.blkcipher_desc*, %struct.blkcipher_walk*, %struct.priv*, i32) #1

declare dso_local %struct.TYPE_2__* @crypto_cipher_alg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
