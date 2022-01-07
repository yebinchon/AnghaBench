; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_init_givcipher_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_init_givcipher_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__*, %struct.ablkcipher_tfm }
%struct.TYPE_2__ = type { i32, %struct.ablkcipher_alg }
%struct.ablkcipher_alg = type { i32, i64, i32, i32, i32, i32 }
%struct.ablkcipher_tfm = type { i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@setkey = common dso_local global i32 0, align 4
@no_givdecrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32)* @crypto_init_givcipher_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_givcipher_ops(%struct.crypto_tfm* %0, i32 %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.ablkcipher_alg* %13, %struct.ablkcipher_alg** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %14, i32 0, i32 1
  store %struct.ablkcipher_tfm* %15, %struct.ablkcipher_tfm** %9, align 8
  %16 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %17 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sdiv i32 %19, 8
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %27 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @setkey, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  %42 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %43 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %45 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %48 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %50 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %53 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %55 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %58 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %60 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  br label %67

64:                                               ; preds = %40
  %65 = load i32, i32* @no_givdecrypt, align 4
  %66 = sext i32 %65 to i64
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i64 [ %61, %63 ], [ %66, %64 ]
  %69 = trunc i64 %68 to i32
  %70 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %71 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %73 = call i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm* %72)
  %74 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %75 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %77 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %9, align 8
  %80 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %67, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
