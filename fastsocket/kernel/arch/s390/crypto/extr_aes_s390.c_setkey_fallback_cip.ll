; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_setkey_fallback_cip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_setkey_fallback_cip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_aes_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @setkey_fallback_cip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey_fallback_cip(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_aes_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = call %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.s390_aes_ctx* %10, %struct.s390_aes_ctx** %7, align 8
  %11 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %12
  store i32 %20, i32* %18, align 4
  %21 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %22 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @crypto_cipher_setkey(i32 %37, i32* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %3
  %44 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %47 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %60 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %43, %3
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_cipher_setkey(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
