; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_prepare_alg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_prepare_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@crypto_ahash_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_alg*)* @ahash_prepare_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_prepare_alg(%struct.ahash_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.ahash_alg* %0, %struct.ahash_alg** %3, align 8
  %5 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %6 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store %struct.crypto_alg* %7, %struct.crypto_alg** %4, align 8
  %8 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %9 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = sdiv i32 %12, 8
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %17 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sdiv i32 %20, 8
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %15
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %28 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %27, i32 0, i32 1
  store i32* @crypto_ahash_type, i32** %28, align 8
  %29 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %32 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @CRYPTO_ALG_TYPE_AHASH, align 4
  %36 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %37 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %26, %23
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
