; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c_ablk_init_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c_ablk_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.async_helper_ctx = type { %struct.cryptd_ablkcipher* }
%struct.cryptd_ablkcipher = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ablk_init_common(%struct.crypto_tfm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.async_helper_ctx*, align 8
  %7 = alloca %struct.cryptd_ablkcipher*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call %struct.async_helper_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.async_helper_ctx* %9, %struct.async_helper_ctx** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.cryptd_ablkcipher* @cryptd_alloc_ablkcipher(i8* %10, i32 0, i32 0)
  store %struct.cryptd_ablkcipher* %11, %struct.cryptd_ablkcipher** %7, align 8
  %12 = load %struct.cryptd_ablkcipher*, %struct.cryptd_ablkcipher** %7, align 8
  %13 = call i64 @IS_ERR(%struct.cryptd_ablkcipher* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.cryptd_ablkcipher*, %struct.cryptd_ablkcipher** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.cryptd_ablkcipher* %16)
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.cryptd_ablkcipher*, %struct.cryptd_ablkcipher** %7, align 8
  %20 = load %struct.async_helper_ctx*, %struct.async_helper_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.async_helper_ctx, %struct.async_helper_ctx* %20, i32 0, i32 0
  store %struct.cryptd_ablkcipher* %19, %struct.cryptd_ablkcipher** %21, align 8
  %22 = load %struct.cryptd_ablkcipher*, %struct.cryptd_ablkcipher** %7, align 8
  %23 = getelementptr inbounds %struct.cryptd_ablkcipher, %struct.cryptd_ablkcipher* %22, i32 0, i32 0
  %24 = call i64 @crypto_ablkcipher_reqsize(i32* %23)
  %25 = add i64 4, %24
  %26 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %27 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.async_helper_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.cryptd_ablkcipher* @cryptd_alloc_ablkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.cryptd_ablkcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.cryptd_ablkcipher*) #1

declare dso_local i64 @crypto_ablkcipher_reqsize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
