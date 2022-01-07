; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.ixp_ctx = type { i32, i32, i32, i32 }
%struct.rtattr = type { i64, i32 }
%struct.crypto_authenc_key_param = type { i32 }

@CRYPTO_AUTHENC_KEYA_PARAM = common dso_local global i64 0, align 8
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixp_ctx*, align 8
  %9 = alloca %struct.rtattr*, align 8
  %10 = alloca %struct.crypto_authenc_key_param*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = call %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.ixp_ctx* %12, %struct.ixp_ctx** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.rtattr*
  store %struct.rtattr* %14, %struct.rtattr** %9, align 8
  %15 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @RTA_OK(%struct.rtattr* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %22 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CRYPTO_AUTHENC_KEYA_PARAM, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %95

27:                                               ; preds = %20
  %28 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %29 = call i32 @RTA_PAYLOAD(%struct.rtattr* %28)
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %95

33:                                               ; preds = %27
  %34 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %35 = call %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr* %34)
  store %struct.crypto_authenc_key_param* %35, %struct.crypto_authenc_key_param** %10, align 8
  %36 = load %struct.crypto_authenc_key_param*, %struct.crypto_authenc_key_param** %10, align 8
  %37 = getelementptr inbounds %struct.crypto_authenc_key_param, %struct.crypto_authenc_key_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %43 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @RTA_ALIGN(i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32* %47, i32** %6, align 8
  %48 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %49 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @RTA_ALIGN(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %33
  br label %95

62:                                               ; preds = %33
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %63, %66
  %68 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %72, i32* %78, i32 %81)
  %83 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32 %85, i32* %86, i32 %89)
  %91 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %92 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %93 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %92)
  %94 = call i32 @aead_setup(%struct.crypto_aead* %91, i32 %93)
  store i32 %94, i32* %4, align 4
  br label %103

95:                                               ; preds = %61, %32, %26, %19
  %96 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %99 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %100 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %98, i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %95, %62
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @RTA_OK(%struct.rtattr*, i32) #1

declare dso_local i32 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @RTA_ALIGN(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @aead_setup(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
