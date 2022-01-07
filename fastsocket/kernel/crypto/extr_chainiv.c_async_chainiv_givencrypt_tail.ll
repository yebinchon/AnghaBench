; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_givencrypt_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_givencrypt_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_givcrypt_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.async_chainiv_ctx = type { i32, i64 }
%struct.ablkcipher_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_givcrypt_request*)* @async_chainiv_givencrypt_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_chainiv_givencrypt_tail(%struct.skcipher_givcrypt_request* %0) #0 {
  %2 = alloca %struct.skcipher_givcrypt_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.async_chainiv_ctx*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i32, align 4
  store %struct.skcipher_givcrypt_request* %0, %struct.skcipher_givcrypt_request** %2, align 8
  %7 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %8 = call %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request* %7)
  store %struct.crypto_ablkcipher* %8, %struct.crypto_ablkcipher** %3, align 8
  %9 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %10 = call %struct.async_chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %9)
  store %struct.async_chainiv_ctx* %10, %struct.async_chainiv_ctx** %4, align 8
  %11 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %12 = call %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request* %11)
  store %struct.ablkcipher_request* %12, %struct.ablkcipher_request** %5, align 8
  %13 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %14 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %16 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @memcpy(i32 %17, i32 %20, i32 %21)
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %24 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @memcpy(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %32 = call i64 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %31)
  %33 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %49

40:                                               ; preds = %1
  %41 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %45 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i32 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %39
  %50 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %4, align 8
  %51 = call i32 @async_chainiv_schedule_work(%struct.async_chainiv_ctx* %50)
  ret i32 %51
}

declare dso_local %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request*) #1

declare dso_local %struct.async_chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @async_chainiv_schedule_work(%struct.async_chainiv_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
