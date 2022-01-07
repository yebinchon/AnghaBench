; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.hifn_context = type { i32, i32, %struct.hifn_device* }
%struct.hifn_device = type { i32 }

@HIFN_MAX_CRYPT_KEY_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@HIFN_DES_KEY_LENGTH = common dso_local global i32 0, align 4
@DES_EXPKEY_WORDS = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIFN_FLAG_OLD_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @hifn_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.hifn_context*, align 8
  %10 = alloca %struct.hifn_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %16 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %15)
  store %struct.crypto_tfm* %16, %struct.crypto_tfm** %8, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %18 = call %struct.hifn_context* @crypto_tfm_ctx(%struct.crypto_tfm* %17)
  store %struct.hifn_context* %18, %struct.hifn_context** %9, align 8
  %19 = load %struct.hifn_context*, %struct.hifn_context** %9, align 8
  %20 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %19, i32 0, i32 2
  %21 = load %struct.hifn_device*, %struct.hifn_device** %20, align 8
  store %struct.hifn_device* %21, %struct.hifn_device** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @HIFN_MAX_CRYPT_KEY_LENGTH, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %27 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %28 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %26, i32 %27)
  store i32 -1, i32* %4, align 4
  br label %81

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @HIFN_DES_KEY_LENGTH, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %11, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @des_ekey(i32* %37, i32* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %47 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CRYPTO_TFM_REQ_WEAK_KEY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %54 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %55 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %61

60:                                               ; preds = %45, %33
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %14, align 4
  switch i32 %63, label %83 [
    i32 0, label %64
    i32 1, label %81
  ]

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %29
  %66 = load i32, i32* @HIFN_FLAG_OLD_KEY, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.hifn_device*, %struct.hifn_device** %10, align 8
  %69 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.hifn_context*, %struct.hifn_context** %9, align 8
  %73 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @memcpy(i32 %74, i32* %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.hifn_context*, %struct.hifn_context** %9, align 8
  %80 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %65, %61, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82

83:                                               ; preds = %61
  unreachable
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.hifn_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @des_ekey(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
