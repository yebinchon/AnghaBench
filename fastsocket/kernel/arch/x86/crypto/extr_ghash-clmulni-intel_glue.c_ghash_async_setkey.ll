; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.ghash_async_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.crypto_ahash }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @ghash_async_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_async_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ghash_async_ctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %11 = call %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.ghash_async_ctx* %11, %struct.ghash_async_ctx** %7, align 8
  %12 = load %struct.ghash_async_ctx*, %struct.ghash_async_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.ghash_async_ctx, %struct.ghash_async_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %8, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %17 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %18 = call i32 @crypto_ahash_clear_flags(%struct.crypto_ahash* %16, i32 %17)
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %21 = call i32 @crypto_ahash_get_flags(%struct.crypto_ahash* %20)
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %19, i32 %23)
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @crypto_ahash_setkey(%struct.crypto_ahash* %25, i32* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %30 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %31 = call i32 @crypto_ahash_get_flags(%struct.crypto_ahash* %30)
  %32 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %29, i32 %33)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_clear_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_ahash_get_flags(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_setkey(%struct.crypto_ahash*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
