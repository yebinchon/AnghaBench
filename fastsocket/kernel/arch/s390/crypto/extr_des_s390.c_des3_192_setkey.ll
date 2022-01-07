; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_des3_192_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_des3_192_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypt_s390_des3_192_ctx = type { i32 }

@DES_KEY_SIZE = common dso_local global i64 0, align 8
@CRYPTO_TFM_REQ_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @des3_192_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_192_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypt_s390_des3_192_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %14 = call %struct.crypt_s390_des3_192_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.crypt_s390_des3_192_ctx* %14, %struct.crypt_s390_des3_192_ctx** %10, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %11, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %17 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %16, i32 0, i32 0
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* @DES_KEY_SIZE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i64, i64* @DES_KEY_SIZE, align 8
  %23 = call i64 @memcmp(i32* %18, i32* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* @DES_KEY_SIZE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* @DES_KEY_SIZE, align 8
  %31 = mul i64 %30, 2
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i64, i64* @DES_KEY_SIZE, align 8
  %34 = call i64 @memcmp(i32* %28, i32* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %25, %3
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CRYPTO_TFM_REQ_WEAK_KEY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %76

49:                                               ; preds = %36, %25
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* @DES_KEY_SIZE, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @crypto_des_check_key(i32* %54, i64 %55, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %76

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load i64, i64* @DES_KEY_SIZE, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %11, align 8
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.crypt_s390_des3_192_ctx*, %struct.crypt_s390_des3_192_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.crypt_s390_des3_192_ctx, %struct.crypt_s390_des3_192_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @memcpy(i32 %72, i32* %73, i32 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %69, %60, %42
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.crypt_s390_des3_192_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @crypto_des_check_key(i32*, i64, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
