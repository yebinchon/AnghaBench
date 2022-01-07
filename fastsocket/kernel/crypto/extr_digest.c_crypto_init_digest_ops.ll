; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_crypto_init_digest_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_crypto_init_digest_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__*, %struct.hash_tfm }
%struct.TYPE_2__ = type { %struct.digest_alg }
%struct.digest_alg = type { i32, i64 }
%struct.hash_tfm = type { i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@update = common dso_local global i32 0, align 4
@final = common dso_local global i32 0, align 4
@digest = common dso_local global i32 0, align 4
@setkey = common dso_local global i32 0, align 4
@nosetkey = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_digest_ops(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.hash_tfm*, align 8
  %5 = alloca %struct.digest_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %6, i32 0, i32 1
  store %struct.hash_tfm* %7, %struct.hash_tfm** %4, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.digest_alg* %11, %struct.digest_alg** %5, align 8
  %12 = load %struct.digest_alg*, %struct.digest_alg** %5, align 8
  %13 = getelementptr inbounds %struct.digest_alg, %struct.digest_alg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sdiv i32 %15, 8
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load i32, i32* @init, align 4
  %23 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %24 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @update, align 4
  %26 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %27 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @final, align 4
  %29 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %30 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @digest, align 4
  %32 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %33 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.digest_alg*, %struct.digest_alg** %5, align 8
  %35 = getelementptr inbounds %struct.digest_alg, %struct.digest_alg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i32, i32* @setkey, align 4
  br label %42

40:                                               ; preds = %21
  %41 = load i32, i32* @nosetkey, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %45 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.digest_alg*, %struct.digest_alg** %5, align 8
  %47 = getelementptr inbounds %struct.digest_alg, %struct.digest_alg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %50 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
