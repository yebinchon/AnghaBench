; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.des_ctx = type { i32 }

@DES_EXPKEY_WORDS = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @des_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.des_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = call %struct.des_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.des_ctx* %15, %struct.des_ctx** %8, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %17 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %16, i32 0, i32 0
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @des_ekey(i32* %21, i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRYPTO_TFM_REQ_WEAK_KEY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %47

42:                                               ; preds = %29, %3
  %43 = load %struct.des_ctx*, %struct.des_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %45, i32* %21, i32 4)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.des_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @des_ekey(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
