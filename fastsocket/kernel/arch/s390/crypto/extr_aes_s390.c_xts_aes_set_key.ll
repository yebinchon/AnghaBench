; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_aes_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_aes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_xts_ctx = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KM_XTS_128_ENCRYPT = common dso_local global i32 0, align 4
@KM_XTS_128_DECRYPT = common dso_local global i32 0, align 4
@KM_XTS_256_ENCRYPT = common dso_local global i32 0, align 4
@KM_XTS_256_DECRYPT = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @xts_aes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s390_xts_ctx*, align 8
  %9 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.s390_xts_ctx* %11, %struct.s390_xts_ctx** %8, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %12, i32 0, i32 0
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %64 [
    i32 32, label %15
    i32 48, label %36
    i32 64, label %45
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @KM_XTS_128_ENCRYPT, align 4
  %17 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @KM_XTS_128_DECRYPT, align 4
  %20 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 16
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @memcpy(i32 %25, i32* %26, i32 16)
  %28 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 16
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 16
  %35 = call i32 @memcpy(i32 %32, i32* %34, i32 16)
  br label %71

36:                                               ; preds = %3
  %37 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %37, i32 0, i32 4
  store i32 0, i32* %38, align 4
  %39 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @xts_fallback_setkey(%struct.crypto_tfm* %41, i32* %42, i32 %43)
  br label %71

45:                                               ; preds = %3
  %46 = load i32, i32* @KM_XTS_256_ENCRYPT, align 4
  %47 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @KM_XTS_256_DECRYPT, align 4
  %50 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @memcpy(i32 %54, i32* %55, i32 32)
  %57 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 32
  %63 = call i32 @memcpy(i32 %60, i32* %62, i32 32)
  br label %71

64:                                               ; preds = %3
  %65 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %75

71:                                               ; preds = %45, %36, %15
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @xts_fallback_setkey(%struct.crypto_tfm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
