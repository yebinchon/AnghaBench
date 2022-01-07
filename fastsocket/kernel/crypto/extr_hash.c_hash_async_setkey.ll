; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_hash_async_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_hash_async_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hash_alg }
%struct.hash_alg = type { i32 (%struct.crypto_hash*, i32*, i32)* }
%struct.crypto_hash = type opaque
%struct.crypto_hash.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @hash_async_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_async_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca %struct.crypto_hash.0*, align 8
  %9 = alloca %struct.hash_alg*, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %11 = call %struct.crypto_tfm* @crypto_ahash_tfm(%struct.crypto_ahash* %10)
  store %struct.crypto_tfm* %11, %struct.crypto_tfm** %7, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %13 = call %struct.crypto_hash.0* @__crypto_hash_cast(%struct.crypto_tfm* %12)
  store %struct.crypto_hash.0* %13, %struct.crypto_hash.0** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %15 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.hash_alg* %17, %struct.hash_alg** %9, align 8
  %18 = load %struct.hash_alg*, %struct.hash_alg** %9, align 8
  %19 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %18, i32 0, i32 0
  %20 = load i32 (%struct.crypto_hash*, i32*, i32)*, i32 (%struct.crypto_hash*, i32*, i32)** %19, align 8
  %21 = load %struct.crypto_hash.0*, %struct.crypto_hash.0** %8, align 8
  %22 = bitcast %struct.crypto_hash.0* %21 to %struct.crypto_hash*
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 %20(%struct.crypto_hash* %22, i32* %23, i32 %24)
  ret i32 %25
}

declare dso_local %struct.crypto_tfm* @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local %struct.crypto_hash.0* @__crypto_hash_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
