; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c_ablk_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c_ablk_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32, i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.async_helper_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.blkcipher_desc = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.blkcipher_desc*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ablk_decrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.async_helper_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca %struct.blkcipher_desc, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %8)
  store %struct.crypto_ablkcipher* %9, %struct.crypto_ablkcipher** %4, align 8
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %11 = call %struct.async_helper_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.async_helper_ctx* %11, %struct.async_helper_ctx** %5, align 8
  %12 = call i32 (...) @irq_fpu_usable()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %16 = call %struct.ablkcipher_request* @ablkcipher_request_ctx(%struct.ablkcipher_request* %15)
  store %struct.ablkcipher_request* %16, %struct.ablkcipher_request** %6, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %19 = call i32 @memcpy(%struct.ablkcipher_request* %17, %struct.ablkcipher_request* %18, i32 16)
  %20 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %21 = load %struct.async_helper_ctx*, %struct.async_helper_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.async_helper_ctx, %struct.async_helper_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %20, i32* %24)
  %26 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %27 = call i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %26)
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = load %struct.async_helper_ctx*, %struct.async_helper_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.async_helper_ctx, %struct.async_helper_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @cryptd_ablkcipher_child(%struct.TYPE_4__* %31)
  %33 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %35 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_3__* @crypto_blkcipher_crt(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.blkcipher_desc*, i32, i32, i32)*, i32 (%struct.blkcipher_desc*, i32, i32, i32)** %42, align 8
  %44 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %45 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %48 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %51 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %43(%struct.blkcipher_desc* %7, i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %28, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.async_helper_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @irq_fpu_usable(...) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(%struct.ablkcipher_request*, %struct.ablkcipher_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32*) #1

declare dso_local i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @cryptd_ablkcipher_child(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_3__* @crypto_blkcipher_crt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
