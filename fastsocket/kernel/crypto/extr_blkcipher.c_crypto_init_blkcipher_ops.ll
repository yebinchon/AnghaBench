; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_init_blkcipher_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_init_blkcipher_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.blkcipher_alg }
%struct.blkcipher_alg = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32)* @crypto_init_blkcipher_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_blkcipher_ops(%struct.crypto_tfm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blkcipher_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.blkcipher_alg* %12, %struct.blkcipher_alg** %8, align 8
  %13 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %8, align 8
  %14 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sdiv i32 %16, 8
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %30 = call i32 @crypto_init_blkcipher_ops_sync(%struct.crypto_tfm* %29)
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %33 = call i32 @crypto_init_blkcipher_ops_async(%struct.crypto_tfm* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %28, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @crypto_init_blkcipher_ops_sync(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_init_blkcipher_ops_async(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
