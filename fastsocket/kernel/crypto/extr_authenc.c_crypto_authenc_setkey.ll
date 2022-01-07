; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { %struct.crypto_ablkcipher*, %struct.crypto_ahash* }
%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.rtattr = type { i64, i32 }
%struct.crypto_authenc_key_param = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_AUTHENC_KEYA_PARAM = common dso_local global i64 0, align 8
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @crypto_authenc_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_authenc_ctx*, align 8
  %10 = alloca %struct.crypto_ahash*, align 8
  %11 = alloca %struct.crypto_ablkcipher*, align 8
  %12 = alloca %struct.rtattr*, align 8
  %13 = alloca %struct.crypto_authenc_key_param*, align 8
  %14 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_authenc_ctx* %16, %struct.crypto_authenc_ctx** %9, align 8
  %17 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %17, i32 0, i32 1
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %18, align 8
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %10, align 8
  %20 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %20, i32 0, i32 0
  %22 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %21, align 8
  store %struct.crypto_ablkcipher* %22, %struct.crypto_ablkcipher** %11, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = bitcast i8* %24 to %struct.rtattr*
  store %struct.rtattr* %25, %struct.rtattr** %12, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RTA_OK(%struct.rtattr* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  br label %122

33:                                               ; preds = %3
  %34 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %35 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CRYPTO_AUTHENC_KEYA_PARAM, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %122

40:                                               ; preds = %33
  %41 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %42 = call i32 @RTA_PAYLOAD(%struct.rtattr* %41)
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %122

46:                                               ; preds = %40
  %47 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %48 = call %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr* %47)
  store %struct.crypto_authenc_key_param* %48, %struct.crypto_authenc_key_param** %13, align 8
  %49 = load %struct.crypto_authenc_key_param*, %struct.crypto_authenc_key_param** %13, align 8
  %50 = getelementptr inbounds %struct.crypto_authenc_key_param, %struct.crypto_authenc_key_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %54 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @RTA_ALIGN(i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 %56
  store i32* %58, i32** %5, align 8
  %59 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %60 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @RTA_ALIGN(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %46
  br label %122

71:                                               ; preds = %46
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %72, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %76 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %77 = call i32 @crypto_ahash_clear_flags(%struct.crypto_ahash* %75, i32 %76)
  %78 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %79 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %80 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %79)
  %81 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %82 = and i32 %80, %81
  %83 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %78, i32 %82)
  %84 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @crypto_ahash_setkey(%struct.crypto_ahash* %84, i32* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %89 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %90 = call i32 @crypto_ahash_get_flags(%struct.crypto_ahash* %89)
  %91 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %88, i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %71
  br label %120

97:                                               ; preds = %71
  %98 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %11, align 8
  %99 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %100 = call i32 @crypto_ablkcipher_clear_flags(%struct.crypto_ablkcipher* %98, i32 %99)
  %101 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %11, align 8
  %102 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %103 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %102)
  %104 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %101, i32 %105)
  %107 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %11, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @crypto_ablkcipher_setkey(%struct.crypto_ablkcipher* %107, i32* %111, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %115 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %11, align 8
  %116 = call i32 @crypto_ablkcipher_get_flags(%struct.crypto_ablkcipher* %115)
  %117 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %118 = and i32 %116, %117
  %119 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %114, i32 %118)
  br label %120

120:                                              ; preds = %122, %97, %96
  %121 = load i32, i32* %14, align 4
  ret i32 %121

122:                                              ; preds = %70, %45, %39, %32
  %123 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %124 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %125 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %123, i32 %124)
  br label %120
}

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @RTA_OK(%struct.rtattr*, i32) #1

declare dso_local i32 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @RTA_ALIGN(i32) #1

declare dso_local i32 @crypto_ahash_clear_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_ahash_setkey(%struct.crypto_ahash*, i32*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_ahash_get_flags(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ablkcipher_clear_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @crypto_ablkcipher_setkey(%struct.crypto_ablkcipher*, i32*, i32) #1

declare dso_local i32 @crypto_ablkcipher_get_flags(%struct.crypto_ablkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
