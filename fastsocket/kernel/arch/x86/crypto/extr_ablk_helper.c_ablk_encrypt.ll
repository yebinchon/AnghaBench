; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c_ablk_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_ablk_helper.c_ablk_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.async_helper_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ablk_encrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.async_helper_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %7 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %8 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %7)
  store %struct.crypto_ablkcipher* %8, %struct.crypto_ablkcipher** %4, align 8
  %9 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %10 = call %struct.async_helper_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %9)
  store %struct.async_helper_ctx* %10, %struct.async_helper_ctx** %5, align 8
  %11 = call i32 (...) @irq_fpu_usable()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %15 = call %struct.ablkcipher_request* @ablkcipher_request_ctx(%struct.ablkcipher_request* %14)
  store %struct.ablkcipher_request* %15, %struct.ablkcipher_request** %6, align 8
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %18 = call i32 @memcpy(%struct.ablkcipher_request* %16, %struct.ablkcipher_request* %17, i32 4)
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %20 = load %struct.async_helper_ctx*, %struct.async_helper_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.async_helper_ctx, %struct.async_helper_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %19, i32* %23)
  %25 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %26 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %25)
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %29 = call i32 @__ablk_encrypt(%struct.ablkcipher_request* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.async_helper_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @irq_fpu_usable(...) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(%struct.ablkcipher_request*, %struct.ablkcipher_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32*) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @__ablk_encrypt(%struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
