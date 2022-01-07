; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_alloc_aead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_alloc_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptd_aead = type { i32 }
%struct.crypto_aead = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cryptd(%s)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cryptd_aead* @cryptd_alloc_aead(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cryptd_aead*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_aead*, align 8
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
  %24 = call %struct.cryptd_aead* @ERR_PTR(i32 %23)
  store %struct.cryptd_aead* %24, %struct.cryptd_aead** %4, align 8
  store i32 1, i32* %11, align 4
  br label %53

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.crypto_aead* @crypto_alloc_aead(i8* %15, i32 %26, i32 %27)
  store %struct.crypto_aead* %28, %struct.crypto_aead** %10, align 8
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %30 = call i64 @IS_ERR(%struct.crypto_aead* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %34 = call %struct.cryptd_aead* @ERR_CAST(%struct.crypto_aead* %33)
  store %struct.cryptd_aead* %34, %struct.cryptd_aead** %4, align 8
  store i32 1, i32* %11, align 4
  br label %53

35:                                               ; preds = %25
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %37 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @THIS_MODULE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %46 = call i32 @crypto_free_aead(%struct.crypto_aead* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.cryptd_aead* @ERR_PTR(i32 %48)
  store %struct.cryptd_aead* %49, %struct.cryptd_aead** %4, align 8
  store i32 1, i32* %11, align 4
  br label %53

50:                                               ; preds = %35
  %51 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %52 = call %struct.cryptd_aead* @__cryptd_aead_cast(%struct.crypto_aead* %51)
  store %struct.cryptd_aead* %52, %struct.cryptd_aead** %4, align 8
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %50, %44, %32, %21
  %54 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load %struct.cryptd_aead*, %struct.cryptd_aead** %4, align 8
  ret %struct.cryptd_aead* %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.cryptd_aead* @ERR_PTR(i32) #2

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #2

declare dso_local %struct.cryptd_aead* @ERR_CAST(%struct.crypto_aead*) #2

declare dso_local i32 @crypto_free_aead(%struct.crypto_aead*) #2

declare dso_local %struct.cryptd_aead* @__cryptd_aead_cast(%struct.crypto_aead*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
