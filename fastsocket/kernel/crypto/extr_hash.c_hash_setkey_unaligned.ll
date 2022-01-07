; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_hash_setkey_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hash.c_hash_setkey_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hash_alg }
%struct.hash_alg = type { i32 (%struct.crypto_hash.0*, i32*, i32)* }
%struct.crypto_hash.0 = type opaque

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_hash*, i32*, i32)* @hash_setkey_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_setkey_unaligned(%struct.crypto_hash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_hash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.hash_alg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.crypto_hash* %0, %struct.crypto_hash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %16 = call %struct.crypto_tfm* @crypto_hash_tfm(%struct.crypto_hash* %15)
  store %struct.crypto_tfm* %16, %struct.crypto_tfm** %8, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %18 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.hash_alg* %20, %struct.hash_alg** %9, align 8
  %21 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %22 = call i64 @crypto_hash_alignmask(%struct.crypto_hash* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call i32* @kmalloc(i64 %27, i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %60

35:                                               ; preds = %3
  %36 = load i32*, i32** %12, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  %40 = call i64 @ALIGN(i64 %37, i64 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load %struct.hash_alg*, %struct.hash_alg** %9, align 8
  %47 = getelementptr inbounds %struct.hash_alg, %struct.hash_alg* %46, i32 0, i32 0
  %48 = load i32 (%struct.crypto_hash.0*, i32*, i32)*, i32 (%struct.crypto_hash.0*, i32*, i32)** %47, align 8
  %49 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %50 = bitcast %struct.crypto_hash* %49 to %struct.crypto_hash.0*
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 %48(%struct.crypto_hash.0* %50, i32* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @memset(i32* %54, i32 0, i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %35, %32
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.crypto_tfm* @crypto_hash_tfm(%struct.crypto_hash*) #1

declare dso_local i64 @crypto_hash_alignmask(%struct.crypto_hash*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
