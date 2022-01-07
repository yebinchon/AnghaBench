; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_init_blkcipher_ops_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_init_blkcipher_ops_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__*, %struct.blkcipher_tfm }
%struct.TYPE_2__ = type { i64, %struct.blkcipher_alg }
%struct.blkcipher_alg = type { i32, i32 }
%struct.blkcipher_tfm = type { i8*, i32, i32, i32 }

@setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_init_blkcipher_ops_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_blkcipher_ops_sync(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.blkcipher_tfm*, align 8
  %4 = alloca %struct.blkcipher_alg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %8 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %7, i32 0, i32 1
  store %struct.blkcipher_tfm* %8, %struct.blkcipher_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.blkcipher_alg* %12, %struct.blkcipher_alg** %4, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %14 = call i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* @setkey, align 4
  %18 = load %struct.blkcipher_tfm*, %struct.blkcipher_tfm** %3, align 8
  %19 = getelementptr inbounds %struct.blkcipher_tfm, %struct.blkcipher_tfm* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %4, align 8
  %21 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.blkcipher_tfm*, %struct.blkcipher_tfm** %3, align 8
  %24 = getelementptr inbounds %struct.blkcipher_tfm, %struct.blkcipher_tfm* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %4, align 8
  %26 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.blkcipher_tfm*, %struct.blkcipher_tfm** %3, align 8
  %29 = getelementptr inbounds %struct.blkcipher_tfm, %struct.blkcipher_tfm* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %31 = call i64 @crypto_tfm_ctx(%struct.crypto_tfm* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @ALIGN(i64 %32, i64 %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %36 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @ALIGN(i64 %39, i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.blkcipher_tfm*, %struct.blkcipher_tfm** %3, align 8
  %47 = getelementptr inbounds %struct.blkcipher_tfm, %struct.blkcipher_tfm* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  ret i32 0
}

declare dso_local i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i64 @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
