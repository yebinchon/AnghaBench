; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cipher.c_cipher_encrypt_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cipher.c_cipher_encrypt_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32 (%struct.crypto_tfm*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @cipher_encrypt_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cipher_encrypt_unaligned(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cipher_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.cipher_alg* %14, %struct.cipher_alg** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = load i32*, i32** %6, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = or i64 %16, %18
  %20 = load i64, i64* %7, align 8
  %21 = and i64 %19, %20
  %22 = call i64 @unlikely(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.cipher_alg*, %struct.cipher_alg** %8, align 8
  %26 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %25, i32 0, i32 0
  %27 = load i32 (%struct.crypto_tfm*, i32*, i32*)*, i32 (%struct.crypto_tfm*, i32*, i32*)** %26, align 8
  %28 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @cipher_crypt_unaligned(i32 (%struct.crypto_tfm*, i32*, i32*)* %27, %struct.crypto_tfm* %28, i32* %29, i32* %30)
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.cipher_alg*, %struct.cipher_alg** %8, align 8
  %34 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %33, i32 0, i32 0
  %35 = load i32 (%struct.crypto_tfm*, i32*, i32*)*, i32 (%struct.crypto_tfm*, i32*, i32*)** %34, align 8
  %36 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 %35(%struct.crypto_tfm* %36, i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %32, %24
  ret void
}

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @cipher_crypt_unaligned(i32 (%struct.crypto_tfm*, i32*, i32*)*, %struct.crypto_tfm*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
