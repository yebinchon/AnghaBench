; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c___ablk_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c___ablk_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32, i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.async_helper_ctx = type { i32 }
%struct.blkcipher_desc = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.blkcipher_desc*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ablk_encrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.async_helper_ctx*, align 8
  %5 = alloca %struct.blkcipher_desc, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %6 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %7 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %6)
  store %struct.crypto_ablkcipher* %7, %struct.crypto_ablkcipher** %3, align 8
  %8 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %9 = call %struct.async_helper_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %8)
  store %struct.async_helper_ctx* %9, %struct.async_helper_ctx** %4, align 8
  %10 = load %struct.async_helper_ctx*, %struct.async_helper_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.async_helper_ctx, %struct.async_helper_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cryptd_ablkcipher_child(i32 %12)
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_2__* @crypto_blkcipher_crt(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.blkcipher_desc*, i32, i32, i32)*, i32 (%struct.blkcipher_desc*, i32, i32, i32)** %23, align 8
  %25 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %26 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %29 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %32 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %24(%struct.blkcipher_desc* %5, i32 %27, i32 %30, i32 %33)
  ret i32 %34
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.async_helper_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @cryptd_ablkcipher_child(i32) #1

declare dso_local %struct.TYPE_2__* @crypto_blkcipher_crt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
