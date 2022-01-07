; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_aes_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KM_AES_128_ENCRYPT = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@KM_AES_192_ENCRYPT = common dso_local global i32 0, align 4
@KM_AES_256_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @aes_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.s390_aes_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.s390_aes_ctx* %9, %struct.s390_aes_ctx** %7, align 8
  %10 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %11 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @need_fallback(i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @crypto_cipher_encrypt_one(i32 %20, i32* %21, i32* %22)
  br label %52

24:                                               ; preds = %3
  %25 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %52 [
    i32 16, label %28
    i32 24, label %36
    i32 32, label %44
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @KM_AES_128_ENCRYPT, align 4
  %30 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %30, i32 0, i32 1
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %35 = call i32 @crypt_s390_km(i32 %29, i32* %31, i32* %32, i32* %33, i32 %34)
  br label %52

36:                                               ; preds = %24
  %37 = load i32, i32* @KM_AES_192_ENCRYPT, align 4
  %38 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %38, i32 0, i32 1
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %43 = call i32 @crypt_s390_km(i32 %37, i32* %39, i32* %40, i32* %41, i32 %42)
  br label %52

44:                                               ; preds = %24
  %45 = load i32, i32* @KM_AES_256_ENCRYPT, align 4
  %46 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %46, i32 0, i32 1
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %51 = call i32 @crypt_s390_km(i32 %45, i32* %47, i32* %48, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %16, %24, %44, %36, %28
  ret void
}

declare dso_local %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @need_fallback(i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(i32, i32*, i32*) #1

declare dso_local i32 @crypt_s390_km(i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
