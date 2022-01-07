; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_shash_digest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_shash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.shash_desc*, i32*, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_shash_digest(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shash_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.crypto_shash*, align 8
  %11 = alloca %struct.shash_alg*, align 8
  %12 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %14 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %13, i32 0, i32 0
  %15 = load %struct.crypto_shash*, %struct.crypto_shash** %14, align 8
  store %struct.crypto_shash* %15, %struct.crypto_shash** %10, align 8
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %17 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %16)
  store %struct.shash_alg* %17, %struct.shash_alg** %11, align 8
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %19 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %18)
  store i64 %19, i64* %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = load i32*, i32** %9, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = or i64 %21, %23
  %25 = load i64, i64* %12, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @shash_digest_unaligned(%struct.shash_desc* %29, i32* %30, i32 %31, i32* %32)
  store i32 %33, i32* %5, align 4
  br label %43

34:                                               ; preds = %4
  %35 = load %struct.shash_alg*, %struct.shash_alg** %11, align 8
  %36 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %35, i32 0, i32 0
  %37 = load i32 (%struct.shash_desc*, i32*, i32, i32*)*, i32 (%struct.shash_desc*, i32*, i32, i32*)** %36, align 8
  %38 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 %37(%struct.shash_desc* %38, i32* %39, i32 %40, i32* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %34, %28
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local i32 @shash_digest_unaligned(%struct.shash_desc*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
