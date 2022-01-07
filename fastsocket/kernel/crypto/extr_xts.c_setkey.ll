; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.priv = type { %struct.crypto_cipher*, %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.crypto_cipher*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %13 = call %struct.priv* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.priv* %13, %struct.priv** %8, align 8
  %14 = load %struct.priv*, %struct.priv** %8, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = load %struct.crypto_cipher*, %struct.crypto_cipher** %15, align 8
  store %struct.crypto_cipher* %16, %struct.crypto_cipher** %9, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %18 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %17, i32 0, i32 0
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = urem i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %87

29:                                               ; preds = %3
  %30 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %31 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %32 = call i32 @crypto_cipher_clear_flags(%struct.crypto_cipher* %30, i32 %31)
  %33 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %34 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %35 = call i32 @crypto_tfm_get_flags(%struct.crypto_tfm* %34)
  %36 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @crypto_cipher_set_flags(%struct.crypto_cipher* %33, i32 %37)
  %39 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = udiv i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %7, align 4
  %46 = udiv i32 %45, 2
  %47 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %39, i32* %44, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %87

52:                                               ; preds = %29
  %53 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %54 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %55 = call i32 @crypto_cipher_get_flags(%struct.crypto_cipher* %54)
  %56 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %53, i32 %57)
  %59 = load %struct.priv*, %struct.priv** %8, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load %struct.crypto_cipher*, %struct.crypto_cipher** %60, align 8
  store %struct.crypto_cipher* %61, %struct.crypto_cipher** %9, align 8
  %62 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %63 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %64 = call i32 @crypto_cipher_clear_flags(%struct.crypto_cipher* %62, i32 %63)
  %65 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %66 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %67 = call i32 @crypto_tfm_get_flags(%struct.crypto_tfm* %66)
  %68 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @crypto_cipher_set_flags(%struct.crypto_cipher* %65, i32 %69)
  %71 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = udiv i32 %73, 2
  %75 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %71, i32* %72, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %52
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %87

80:                                               ; preds = %52
  %81 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %82 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %83 = call i32 @crypto_cipher_get_flags(%struct.crypto_cipher* %82)
  %84 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %81, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %78, %50, %22
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.priv* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_cipher_clear_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_cipher_set_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_tfm_get_flags(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_cipher_setkey(%struct.crypto_cipher*, i32*, i32) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

declare dso_local i32 @crypto_cipher_get_flags(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
