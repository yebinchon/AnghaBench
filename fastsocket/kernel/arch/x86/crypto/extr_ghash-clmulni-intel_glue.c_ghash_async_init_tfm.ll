; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cryptd_ahash = type { i32 }
%struct.ghash_async_ctx = type { %struct.cryptd_ahash* }

@.str = private unnamed_addr constant [20 x i8] c"__ghash-pclmulqdqni\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @ghash_async_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_async_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.cryptd_ahash*, align 8
  %5 = alloca %struct.ghash_async_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.ghash_async_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %6)
  store %struct.ghash_async_ctx* %7, %struct.ghash_async_ctx** %5, align 8
  %8 = call %struct.cryptd_ahash* @cryptd_alloc_ahash(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.cryptd_ahash* %8, %struct.cryptd_ahash** %4, align 8
  %9 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %4, align 8
  %10 = call i64 @IS_ERR(%struct.cryptd_ahash* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.cryptd_ahash* %13)
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %4, align 8
  %17 = load %struct.ghash_async_ctx*, %struct.ghash_async_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ghash_async_ctx, %struct.ghash_async_ctx* %17, i32 0, i32 0
  store %struct.cryptd_ahash* %16, %struct.cryptd_ahash** %18, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %20 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %19)
  %21 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %4, align 8
  %22 = getelementptr inbounds %struct.cryptd_ahash, %struct.cryptd_ahash* %21, i32 0, i32 0
  %23 = call i64 @crypto_ahash_reqsize(i32* %22)
  %24 = add i64 4, %23
  %25 = call i32 @crypto_ahash_set_reqsize(i32 %20, i64 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.ghash_async_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.cryptd_ahash* @cryptd_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.cryptd_ahash*) #1

declare dso_local i32 @PTR_ERR(%struct.cryptd_ahash*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i64) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i64 @crypto_ahash_reqsize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
