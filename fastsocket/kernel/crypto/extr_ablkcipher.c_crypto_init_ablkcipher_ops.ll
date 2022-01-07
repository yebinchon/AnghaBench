; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_init_ablkcipher_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_init_ablkcipher_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.ablkcipher_tfm, %struct.TYPE_2__* }
%struct.ablkcipher_tfm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ablkcipher_alg }
%struct.ablkcipher_alg = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@setkey = common dso_local global i32 0, align 4
@skcipher_null_givencrypt = common dso_local global i32 0, align 4
@skcipher_null_givdecrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32)* @crypto_init_ablkcipher_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_ablkcipher_ops(%struct.crypto_tfm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ablkcipher_alg*, align 8
  %9 = alloca %struct.ablkcipher_tfm*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ablkcipher_alg* %13, %struct.ablkcipher_alg** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %14, i32 0, i32 0
  store %struct.ablkcipher_tfm* %15, %struct.ablkcipher_tfm** %9, align 8
  %16 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %17 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sdiv i32 %19, 8
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load i32, i32* @setkey, align 4
  %27 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %28 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %35 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %38 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %40 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* @skcipher_null_givencrypt, align 4
  %45 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %46 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @skcipher_null_givdecrypt, align 4
  %48 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %49 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %25
  %51 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %52 = call i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm* %51)
  %53 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %54 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %56 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %59 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %50, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
