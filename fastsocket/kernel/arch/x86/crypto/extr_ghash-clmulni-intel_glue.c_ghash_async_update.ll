; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_async_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ghash_async_ctx = type { %struct.cryptd_ahash* }
%struct.cryptd_ahash = type { i32 }
%struct.shash_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ghash_async_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_async_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.ghash_async_ctx*, align 8
  %7 = alloca %struct.cryptd_ahash*, align 8
  %8 = alloca %struct.shash_desc*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.ahash_request* %10, %struct.ahash_request** %4, align 8
  %11 = call i32 (...) @irq_fpu_usable()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %5, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %17 = call %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %16)
  store %struct.ghash_async_ctx* %17, %struct.ghash_async_ctx** %6, align 8
  %18 = load %struct.ghash_async_ctx*, %struct.ghash_async_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.ghash_async_ctx, %struct.ghash_async_ctx* %18, i32 0, i32 0
  %20 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %19, align 8
  store %struct.cryptd_ahash* %20, %struct.cryptd_ahash** %7, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %23 = call i32 @memcpy(%struct.ahash_request* %21, %struct.ahash_request* %22, i32 4)
  %24 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %25 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %7, align 8
  %26 = getelementptr inbounds %struct.cryptd_ahash, %struct.cryptd_ahash* %25, i32 0, i32 0
  %27 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %24, i32* %26)
  %28 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %29 = call i32 @crypto_ahash_update(%struct.ahash_request* %28)
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %32 = call %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request* %31)
  store %struct.shash_desc* %32, %struct.shash_desc** %8, align 8
  %33 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %34 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %35 = call i32 @shash_ahash_update(%struct.ahash_request* %33, %struct.shash_desc* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @irq_fpu_usable(...) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @memcpy(%struct.ahash_request*, %struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, i32*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request*) #1

declare dso_local i32 @shash_ahash_update(%struct.ahash_request*, %struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
