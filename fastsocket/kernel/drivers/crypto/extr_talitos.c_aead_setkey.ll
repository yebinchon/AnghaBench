; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32, i32, i32, i32 }
%struct.rtattr = type { i64, i32 }
%struct.crypto_authenc_key_param = type { i32 }

@CRYPTO_AUTHENC_KEYA_PARAM = common dso_local global i64 0, align 8
@TALITOS_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.talitos_ctx*, align 8
  %9 = alloca %struct.rtattr*, align 8
  %10 = alloca %struct.crypto_authenc_key_param*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %14 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %13)
  store %struct.talitos_ctx* %14, %struct.talitos_ctx** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.rtattr*
  store %struct.rtattr* %17, %struct.rtattr** %9, align 8
  %18 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @RTA_OK(%struct.rtattr* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %84

23:                                               ; preds = %3
  %24 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %25 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CRYPTO_AUTHENC_KEYA_PARAM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %84

30:                                               ; preds = %23
  %31 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %32 = call i32 @RTA_PAYLOAD(%struct.rtattr* %31)
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %84

36:                                               ; preds = %30
  %37 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %38 = call %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr* %37)
  store %struct.crypto_authenc_key_param* %38, %struct.crypto_authenc_key_param** %10, align 8
  %39 = load %struct.crypto_authenc_key_param*, %struct.crypto_authenc_key_param** %10, align 8
  %40 = getelementptr inbounds %struct.crypto_authenc_key_param, %struct.crypto_authenc_key_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %44 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @RTA_ALIGN(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %6, align 8
  %49 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %50 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @RTA_ALIGN(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  br label %84

61:                                               ; preds = %36
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub i32 %62, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TALITOS_MAX_KEY_SIZE, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %84

69:                                               ; preds = %61
  %70 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %70, i32 0, i32 3
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @memcpy(i32* %71, i32* %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %90

84:                                               ; preds = %68, %60, %35, %29, %22
  %85 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %86 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %87 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %85, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %69
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @RTA_OK(%struct.rtattr*, i32) #1

declare dso_local i32 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @RTA_ALIGN(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
