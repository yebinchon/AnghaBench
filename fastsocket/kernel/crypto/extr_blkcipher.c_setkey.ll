; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.blkcipher_alg }
%struct.blkcipher_alg = type { i32, i32, {}* }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blkcipher_alg*, align 8
  %9 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.blkcipher_alg* %13, %struct.blkcipher_alg** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %8, align 8
  %18 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %8, align 8
  %24 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %3
  %28 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %29 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %30 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %21
  %36 = load i32*, i32** %6, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @setkey_unaligned(%struct.crypto_tfm* %42, i32* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %55

46:                                               ; preds = %35
  %47 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %8, align 8
  %48 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %47, i32 0, i32 2
  %49 = bitcast {}** %48 to i32 (%struct.crypto_tfm*, i32*, i32)**
  %50 = load i32 (%struct.crypto_tfm*, i32*, i32)*, i32 (%struct.crypto_tfm*, i32*, i32)** %49, align 8
  %51 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 %50(%struct.crypto_tfm* %51, i32* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %46, %41, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i32 @setkey_unaligned(%struct.crypto_tfm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
