; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cipher.c_setkey_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cipher.c_setkey_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32 (%struct.crypto_tfm*, i32*, i32)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @setkey_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey_unaligned(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cipher_alg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.cipher_alg* %17, %struct.cipher_alg** %8, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %19 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32* @kmalloc(i64 %24, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %3
  %33 = load i32*, i32** %11, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = call i64 @ALIGN(i64 %34, i64 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @memcpy(i32* %39, i32* %40, i32 %41)
  %43 = load %struct.cipher_alg*, %struct.cipher_alg** %8, align 8
  %44 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %43, i32 0, i32 0
  %45 = load i32 (%struct.crypto_tfm*, i32*, i32)*, i32 (%struct.crypto_tfm*, i32*, i32)** %44, align 8
  %46 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 %45(%struct.crypto_tfm* %46, i32* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memset(i32* %50, i32 0, i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %32, %29
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

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
