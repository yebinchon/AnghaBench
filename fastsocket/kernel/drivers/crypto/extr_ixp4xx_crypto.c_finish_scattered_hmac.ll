; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_finish_scattered_hmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_finish_scattered_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_ctl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.aead_request* }
%struct.aead_request = type { i32, i32 }
%struct.aead_ctx = type { i32, i64 }
%struct.crypto_aead = type { i32 }

@buffer_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_ctl*)* @finish_scattered_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_scattered_hmac(%struct.crypt_ctl* %0) #0 {
  %2 = alloca %struct.crypt_ctl*, align 8
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.aead_ctx*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crypt_ctl* %0, %struct.crypt_ctl** %2, align 8
  %8 = load %struct.crypt_ctl*, %struct.crypt_ctl** %2, align 8
  %9 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.aead_request*, %struct.aead_request** %10, align 8
  store %struct.aead_request* %11, %struct.aead_request** %3, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %13 = call %struct.aead_ctx* @aead_request_ctx(%struct.aead_request* %12)
  store %struct.aead_ctx* %13, %struct.aead_ctx** %4, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %5, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %17 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %19 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.aead_ctx*, %struct.aead_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.aead_ctx*, %struct.aead_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %32 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @scatterwalk_map_and_copy(i32 %30, i32 %33, i32 %34, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %27, %1
  %38 = load i32, i32* @buffer_pool, align 4
  %39 = load %struct.aead_ctx*, %struct.aead_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.crypt_ctl*, %struct.crypt_ctl** %2, align 8
  %43 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_pool_free(i32 %38, i32 %41, i32 %44)
  ret void
}

declare dso_local %struct.aead_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
