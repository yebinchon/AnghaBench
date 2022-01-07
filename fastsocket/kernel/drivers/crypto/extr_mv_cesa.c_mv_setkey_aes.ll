; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_mv_setkey_aes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_mv_setkey_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.mv_ctx = type { i32, i32, i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AES_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @mv_setkey_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_setkey_aes(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.mv_ctx*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %10)
  store %struct.crypto_tfm* %11, %struct.crypto_tfm** %8, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %13 = call %struct.mv_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.mv_ctx* %13, %struct.mv_ctx** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %16 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %3, %3, %3
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %18 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %19 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %17, i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mv_ctx*, %struct.mv_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mv_ctx*, %struct.mv_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.mv_ctx*, %struct.mv_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @AES_KEY_LEN, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.mv_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
