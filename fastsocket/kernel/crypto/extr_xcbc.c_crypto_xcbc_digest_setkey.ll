; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xcbc.c_crypto_xcbc_digest_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xcbc.c_crypto_xcbc_digest_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.xcbc_tfm_ctx = type { i32, i32* }

@ks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @crypto_xcbc_digest_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_xcbc_digest_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.xcbc_tfm_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %17 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %19 = call %struct.xcbc_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash* %18)
  store %struct.xcbc_tfm_ctx* %19, %struct.xcbc_tfm_ctx** %9, align 8
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %21 = call i32 @crypto_shash_blocksize(%struct.crypto_shash* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  %28 = call i32* @PTR_ALIGN(i32* %25, i64 %27)
  store i32* %28, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @crypto_cipher_setkey(i32 %35, i32* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %78

42:                                               ; preds = %3
  %43 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* @ks, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @crypto_cipher_encrypt_one(i32 %45, i32* %46, i32* %51)
  %53 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i64, i64* @ks, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i32 @crypto_cipher_encrypt_one(i32 %55, i32* %59, i32* %65)
  %67 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %9, align 8
  %68 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @ks, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @crypto_cipher_encrypt_one(i32 %69, i32* %32, i32* %71)
  %73 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %9, align 8
  %74 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @crypto_cipher_setkey(i32 %75, i32* %32, i32 %76)
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %78

78:                                               ; preds = %42, %40
  %79 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local %struct.xcbc_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_blocksize(%struct.crypto_shash*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_cipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
