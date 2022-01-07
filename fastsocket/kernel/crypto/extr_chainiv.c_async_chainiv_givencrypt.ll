; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_givcrypt_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.async_chainiv_ctx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ablkcipher_request = type { i32 }

@CHAINIV_STATE_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_givcrypt_request*)* @async_chainiv_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_chainiv_givencrypt(%struct.skcipher_givcrypt_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_givcrypt_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.async_chainiv_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  store %struct.skcipher_givcrypt_request* %0, %struct.skcipher_givcrypt_request** %3, align 8
  %7 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %8 = call %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request* %7)
  store %struct.crypto_ablkcipher* %8, %struct.crypto_ablkcipher** %4, align 8
  %9 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %10 = call %struct.async_chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %9)
  store %struct.async_chainiv_ctx* %10, %struct.async_chainiv_ctx** %5, align 8
  %11 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %12 = call %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request* %11)
  store %struct.ablkcipher_request* %12, %struct.ablkcipher_request** %6, align 8
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %15 = call i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher* %14)
  %16 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %13, i32 %15)
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %18 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %19 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %24 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %29 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %17, i32 %22, i32 %27, i32 %32)
  %34 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %35 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %36 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %40 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %44 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %48 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %34, i32 %38, i32 %42, i32 %46, i32 %50)
  %52 = load i32, i32* @CHAINIV_STATE_INUSE, align 4
  %53 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %53, i32 0, i32 0
  %55 = call i64 @test_and_set_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %1
  br label %72

58:                                               ; preds = %1
  %59 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @CHAINIV_STATE_INUSE, align 4
  %66 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  br label %72

69:                                               ; preds = %58
  %70 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %71 = call i32 @async_chainiv_givencrypt_tail(%struct.skcipher_givcrypt_request* %70)
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %64, %57
  %73 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %74 = call i32 @async_chainiv_postpone_request(%struct.skcipher_givcrypt_request* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request*) #1

declare dso_local %struct.async_chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32, i32, i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @async_chainiv_givencrypt_tail(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @async_chainiv_postpone_request(%struct.skcipher_givcrypt_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
