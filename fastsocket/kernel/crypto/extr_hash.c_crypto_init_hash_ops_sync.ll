; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_crypto_init_hash_ops_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_crypto_init_hash_ops_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__*, %struct.hash_tfm }
%struct.TYPE_2__ = type { %struct.hash_alg }
%struct.hash_alg = type { i32, i32, i32, i32, i32 }
%struct.hash_tfm = type { i32, i32, i32, i32, i32, i32 }

@hash_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_init_hash_ops_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_hash_ops_sync(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.hash_tfm*, align 8
  %4 = alloca %struct.hash_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %5, i32 0, i32 1
  store %struct.hash_tfm* %6, %struct.hash_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %8 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.hash_alg* %10, %struct.hash_alg** %4, align 8
  %11 = load %struct.hash_alg*, %struct.hash_alg** %4, align 8
  %12 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hash_tfm*, %struct.hash_tfm** %3, align 8
  %15 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.hash_alg*, %struct.hash_alg** %4, align 8
  %17 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hash_tfm*, %struct.hash_tfm** %3, align 8
  %20 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hash_alg*, %struct.hash_alg** %4, align 8
  %22 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hash_tfm*, %struct.hash_tfm** %3, align 8
  %25 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hash_alg*, %struct.hash_alg** %4, align 8
  %27 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hash_tfm*, %struct.hash_tfm** %3, align 8
  %30 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @hash_setkey, align 4
  %32 = load %struct.hash_tfm*, %struct.hash_tfm** %3, align 8
  %33 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hash_alg*, %struct.hash_alg** %4, align 8
  %35 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hash_tfm*, %struct.hash_tfm** %3, align 8
  %38 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
