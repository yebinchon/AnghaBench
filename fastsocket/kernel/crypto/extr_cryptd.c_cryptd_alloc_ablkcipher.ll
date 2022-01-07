; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_alloc_ablkcipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_alloc_ablkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptd_ablkcipher = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cryptd(%s)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_BLKCIPHER_MASK = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cryptd_ablkcipher* @cryptd_alloc_ablkcipher(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cryptd_ablkcipher*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_tfm*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.cryptd_ablkcipher* @ERR_PTR(i32 %23)
  store %struct.cryptd_ablkcipher* %24, %struct.cryptd_ablkcipher** %4, align 8
  store i32 1, i32* %11, align 4
  br label %71

25:                                               ; preds = %3
  %26 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %27 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %40 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.crypto_tfm* @crypto_alloc_base(i8* %15, i32 %44, i32 %45)
  store %struct.crypto_tfm* %46, %struct.crypto_tfm** %10, align 8
  %47 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  %48 = call i64 @IS_ERR(%struct.crypto_tfm* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %25
  %51 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  %52 = call %struct.cryptd_ablkcipher* @ERR_CAST(%struct.crypto_tfm* %51)
  store %struct.cryptd_ablkcipher* %52, %struct.cryptd_ablkcipher** %4, align 8
  store i32 1, i32* %11, align 4
  br label %71

53:                                               ; preds = %25
  %54 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  %55 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @THIS_MODULE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  %63 = call i32 @crypto_free_tfm(%struct.crypto_tfm* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.cryptd_ablkcipher* @ERR_PTR(i32 %65)
  store %struct.cryptd_ablkcipher* %66, %struct.cryptd_ablkcipher** %4, align 8
  store i32 1, i32* %11, align 4
  br label %71

67:                                               ; preds = %53
  %68 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  %69 = call i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm* %68)
  %70 = call %struct.cryptd_ablkcipher* @__cryptd_ablkcipher_cast(i32 %69)
  store %struct.cryptd_ablkcipher* %70, %struct.cryptd_ablkcipher** %4, align 8
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %61, %50, %21
  %72 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load %struct.cryptd_ablkcipher*, %struct.cryptd_ablkcipher** %4, align 8
  ret %struct.cryptd_ablkcipher* %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.cryptd_ablkcipher* @ERR_PTR(i32) #2

declare dso_local %struct.crypto_tfm* @crypto_alloc_base(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_tfm*) #2

declare dso_local %struct.cryptd_ablkcipher* @ERR_CAST(%struct.crypto_tfm*) #2

declare dso_local i32 @crypto_free_tfm(%struct.crypto_tfm*) #2

declare dso_local %struct.cryptd_ablkcipher* @__cryptd_ablkcipher_cast(i32) #2

declare dso_local i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
