; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_ctx = type { %struct.crypto_cipher*, %struct.crypto_ablkcipher* }
%struct.crypto_cipher = type { i32 }
%struct.crypto_ablkcipher = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @crypto_ccm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_ccm_ctx*, align 8
  %8 = alloca %struct.crypto_ablkcipher*, align 8
  %9 = alloca %struct.crypto_cipher*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %12 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.crypto_ccm_ctx* %12, %struct.crypto_ccm_ctx** %7, align 8
  %13 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %13, i32 0, i32 1
  %15 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %14, align 8
  store %struct.crypto_ablkcipher* %15, %struct.crypto_ablkcipher** %8, align 8
  %16 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %16, i32 0, i32 0
  %18 = load %struct.crypto_cipher*, %struct.crypto_cipher** %17, align 8
  store %struct.crypto_cipher* %18, %struct.crypto_cipher** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %20 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %21 = call i32 @crypto_ablkcipher_clear_flags(%struct.crypto_ablkcipher* %19, i32 %20)
  %22 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %24 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %23)
  %25 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %22, i32 %26)
  %28 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @crypto_ablkcipher_setkey(%struct.crypto_ablkcipher* %28, i32* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %33 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %34 = call i32 @crypto_ablkcipher_get_flags(%struct.crypto_ablkcipher* %33)
  %35 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %32, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %61

41:                                               ; preds = %3
  %42 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %43 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %44 = call i32 @crypto_cipher_clear_flags(%struct.crypto_cipher* %42, i32 %43)
  %45 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %46 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %47 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %46)
  %48 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @crypto_cipher_set_flags(%struct.crypto_cipher* %45, i32 %49)
  %51 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %51, i32* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %56 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %57 = call i32 @crypto_cipher_get_flags(%struct.crypto_cipher* %56)
  %58 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %55, i32 %59)
  br label %61

61:                                               ; preds = %41, %40
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_ablkcipher_clear_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_ablkcipher_setkey(%struct.crypto_ablkcipher*, i32*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_ablkcipher_get_flags(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_cipher_clear_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_cipher_set_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_cipher_setkey(%struct.crypto_cipher*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_get_flags(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
