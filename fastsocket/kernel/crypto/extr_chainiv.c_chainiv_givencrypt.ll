; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_chainiv_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_chainiv_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_givcrypt_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.chainiv_ctx = type { i32, i32 }
%struct.ablkcipher_request = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_givcrypt_request*)* @chainiv_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chainiv_givencrypt(%struct.skcipher_givcrypt_request* %0) #0 {
  %2 = alloca %struct.skcipher_givcrypt_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.chainiv_ctx*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_givcrypt_request* %0, %struct.skcipher_givcrypt_request** %2, align 8
  %8 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %9 = call %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request* %8)
  store %struct.crypto_ablkcipher* %9, %struct.crypto_ablkcipher** %3, align 8
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %11 = call %struct.chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.chainiv_ctx* %11, %struct.chainiv_ctx** %4, align 8
  %12 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %13 = call %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request* %12)
  store %struct.ablkcipher_request* %13, %struct.ablkcipher_request** %5, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %15 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %16 = call i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher* %15)
  %17 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %14, i32 %16)
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %19 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %20 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %28 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %33 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %18, i32 %26, i32 %31, i32 %36)
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %39 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %40 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %44 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %48 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %52 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %38, i32 %42, i32 %46, i32 %50, i32 %54)
  %56 = load %struct.chainiv_ctx*, %struct.chainiv_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.chainiv_ctx, %struct.chainiv_ctx* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_bh(i32* %57)
  %59 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %60 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %2, align 8
  %62 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.chainiv_ctx*, %struct.chainiv_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.chainiv_ctx, %struct.chainiv_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @memcpy(i32 %63, i32 %66, i32 %67)
  %69 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %70 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.chainiv_ctx*, %struct.chainiv_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.chainiv_ctx, %struct.chainiv_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @memcpy(i32 %71, i32 %74, i32 %75)
  %77 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %78 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %1
  br label %91

82:                                               ; preds = %1
  %83 = load %struct.chainiv_ctx*, %struct.chainiv_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.chainiv_ctx, %struct.chainiv_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %87 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @memcpy(i32 %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %81
  %92 = load %struct.chainiv_ctx*, %struct.chainiv_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.chainiv_ctx, %struct.chainiv_ctx* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request*) #1

declare dso_local %struct.chainiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
