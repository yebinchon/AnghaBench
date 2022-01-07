; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ghash_async_ctx = type { %struct.cryptd_ahash* }
%struct.cryptd_ahash = type { i32 }
%struct.shash_desc = type { i32, %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ghash_async_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_async_init(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.ghash_async_ctx*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.cryptd_ahash*, align 8
  %8 = alloca %struct.shash_desc*, align 8
  %9 = alloca %struct.crypto_shash*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %4, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %13 = call %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %12)
  store %struct.ghash_async_ctx* %13, %struct.ghash_async_ctx** %5, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request* %14)
  store %struct.ahash_request* %15, %struct.ahash_request** %6, align 8
  %16 = load %struct.ghash_async_ctx*, %struct.ghash_async_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ghash_async_ctx, %struct.ghash_async_ctx* %16, i32 0, i32 0
  %18 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %17, align 8
  store %struct.cryptd_ahash* %18, %struct.cryptd_ahash** %7, align 8
  %19 = call i32 (...) @irq_fpu_usable()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %23 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %24 = call i32 @memcpy(%struct.ahash_request* %22, %struct.ahash_request* %23, i32 4)
  %25 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %26 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %7, align 8
  %27 = getelementptr inbounds %struct.cryptd_ahash, %struct.cryptd_ahash* %26, i32 0, i32 0
  %28 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %25, i32* %27)
  %29 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %30 = call i32 @crypto_ahash_init(%struct.ahash_request* %29)
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %1
  %32 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %33 = call %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request* %32)
  store %struct.shash_desc* %33, %struct.shash_desc** %8, align 8
  %34 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %7, align 8
  %35 = call %struct.crypto_shash* @cryptd_ahash_child(%struct.cryptd_ahash* %34)
  store %struct.crypto_shash* %35, %struct.crypto_shash** %9, align 8
  %36 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %37 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %38 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %37, i32 0, i32 1
  store %struct.crypto_shash* %36, %struct.crypto_shash** %38, align 8
  %39 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %40 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %44 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %46 = call i32 @crypto_shash_init(%struct.shash_desc* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %31, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @irq_fpu_usable(...) #1

declare dso_local i32 @memcpy(%struct.ahash_request*, %struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, i32*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request*) #1

declare dso_local %struct.crypto_shash* @cryptd_ahash_child(%struct.cryptd_ahash*) #1

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
