; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_hash_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_hash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hash_alg }
%struct.hash_alg = type { i32 (%struct.crypto_hash.0*, i32*, i32)* }
%struct.crypto_hash.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_hash*, i32*, i32)* @hash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_setkey(%struct.crypto_hash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_hash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.hash_alg*, align 8
  %10 = alloca i64, align 8
  store %struct.crypto_hash* %0, %struct.crypto_hash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %12 = call %struct.crypto_tfm* @crypto_hash_tfm(%struct.crypto_hash* %11)
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %8, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %14 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.hash_alg* %16, %struct.hash_alg** %9, align 8
  %17 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %18 = call i64 @crypto_hash_alignmask(%struct.crypto_hash* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = ptrtoint i32* %19 to i64
  %21 = load i64, i64* %10, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @hash_setkey_unaligned(%struct.crypto_hash* %25, i32* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.hash_alg*, %struct.hash_alg** %9, align 8
  %31 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %30, i32 0, i32 0
  %32 = load i32 (%struct.crypto_hash.0*, i32*, i32)*, i32 (%struct.crypto_hash.0*, i32*, i32)** %31, align 8
  %33 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %34 = bitcast %struct.crypto_hash* %33 to %struct.crypto_hash.0*
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %32(%struct.crypto_hash.0* %34, i32* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.crypto_tfm* @crypto_hash_tfm(%struct.crypto_hash*) #1

declare dso_local i64 @crypto_hash_alignmask(%struct.crypto_hash*) #1

declare dso_local i32 @hash_setkey_unaligned(%struct.crypto_hash*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
