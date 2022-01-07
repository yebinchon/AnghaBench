; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des3_ede_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des3_ede_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.des3_ede_ctx = type { i32* }

@CRYPTO_TFM_REQ_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DES_EXPKEY_WORDS = common dso_local global i32 0, align 4
@DES_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @des3_ede_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_ede_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.des3_ede_ctx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %14 = call %struct.des3_ede_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.des3_ede_ctx* %14, %struct.des3_ede_ctx** %9, align 8
  %15 = load %struct.des3_ede_ctx*, %struct.des3_ede_ctx** %9, align 8
  %16 = getelementptr inbounds %struct.des3_ede_ctx, %struct.des3_ede_ctx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %18, i32 0, i32 0
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %22, %25
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %29, %32
  %34 = or i32 %26, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %3
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %39, %42
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %46, %49
  %51 = or i32 %43, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %36, %3
  %55 = phi i1 [ true, %3 ], [ %53, %36 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CRYPTO_TFM_REQ_WEAK_KEY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %98

72:                                               ; preds = %59, %54
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @des_ekey(i32* %73, i32* %74)
  %76 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %10, align 8
  %80 = load i32, i32* @DES_KEY_SIZE, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @dkey(i32* %84, i32* %85)
  %87 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %10, align 8
  %91 = load i32, i32* @DES_KEY_SIZE, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %6, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @des_ekey(i32* %95, i32* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %72, %65
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.des3_ede_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @des_ekey(i32*, i32*) #1

declare dso_local i32 @dkey(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
