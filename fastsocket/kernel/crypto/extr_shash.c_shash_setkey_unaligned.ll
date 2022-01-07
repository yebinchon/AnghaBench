; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_setkey_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_setkey_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.crypto_shash.0*, i32*, i32)* }
%struct.crypto_shash.0 = type opaque

@CRYPTO_MINALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @shash_setkey_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_setkey_unaligned(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shash_alg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %15 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %14)
  store %struct.shash_alg* %15, %struct.shash_alg** %8, align 8
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %17 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* @CRYPTO_MINALIGN, align 4
  %22 = sub nsw i32 %21, 1
  %23 = xor i32 %22, -1
  %24 = sext i32 %23 to i64
  %25 = and i64 %20, %24
  %26 = add i64 %19, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i64 %27, i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %3
  %36 = load i32*, i32** %11, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  %40 = call i64 @ALIGN(i64 %37, i64 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %47 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %46, i32 0, i32 0
  %48 = load i32 (%struct.crypto_shash.0*, i32*, i32)*, i32 (%struct.crypto_shash.0*, i32*, i32)** %47, align 8
  %49 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %50 = bitcast %struct.crypto_shash* %49 to %struct.crypto_shash.0*
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 %48(%struct.crypto_shash.0* %50, i32* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @kzfree(i32* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %35, %32
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
