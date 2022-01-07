; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_givencrypt_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_givencrypt_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_givcrypt_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.async_chainiv_ctx = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@CHAINIV_STATE_INUSE = common dso_local global i32 0, align 4
@crypto_default_rng = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_givcrypt_request*)* @async_chainiv_givencrypt_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_chainiv_givencrypt_first(%struct.skcipher_givcrypt_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_givcrypt_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.async_chainiv_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.skcipher_givcrypt_request* %0, %struct.skcipher_givcrypt_request** %3, align 8
  %7 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %8 = call %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request* %7)
  store %struct.crypto_ablkcipher* %8, %struct.crypto_ablkcipher** %4, align 8
  %9 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %10 = call %struct.async_chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %9)
  store %struct.async_chainiv_ctx* %10, %struct.async_chainiv_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @CHAINIV_STATE_INUSE, align 4
  %12 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %12, i32 0, i32 0
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %19 = call %struct.TYPE_2__* @crypto_ablkcipher_crt(%struct.crypto_ablkcipher* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32 (%struct.skcipher_givcrypt_request*)*
  %23 = icmp ne i32 (%struct.skcipher_givcrypt_request*)* %22, @async_chainiv_givencrypt_first
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %36

25:                                               ; preds = %17
  %26 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %27 = call %struct.TYPE_2__* @crypto_ablkcipher_crt(%struct.crypto_ablkcipher* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 ptrtoint (i32 (%struct.skcipher_givcrypt_request*)* @async_chainiv_givencrypt to i64), i64* %28, align 8
  %29 = load i32, i32* @crypto_default_rng, align 4
  %30 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %34 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %33)
  %35 = call i32 @crypto_rng_get_bytes(i32 %29, i32 %32, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %25, %24
  %37 = load i32, i32* @CHAINIV_STATE_INUSE, align 4
  %38 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %16
  %47 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %48 = call i32 @async_chainiv_givencrypt(%struct.skcipher_givcrypt_request* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request*) #1

declare dso_local %struct.async_chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @crypto_ablkcipher_crt(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @async_chainiv_givencrypt(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @crypto_rng_get_bytes(i32, i32, i32) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
