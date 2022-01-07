; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_fallback_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_fallback_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_xts_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @xts_fallback_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_fallback_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_xts_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = call %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.s390_xts_ctx* %10, %struct.s390_xts_ctx** %7, align 8
  %11 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %21 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @crypto_blkcipher_setkey(%struct.TYPE_4__* %34, i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %3
  %41 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %44 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %56 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %40, %3
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_blkcipher_setkey(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
