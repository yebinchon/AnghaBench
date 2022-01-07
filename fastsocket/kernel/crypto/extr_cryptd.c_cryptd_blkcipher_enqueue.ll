; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_blkcipher_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_blkcipher_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cryptd_blkcipher_request_ctx = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.cryptd_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @cryptd_blkcipher_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_blkcipher_enqueue(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptd_blkcipher_request_ctx*, align 8
  %6 = alloca %struct.crypto_ablkcipher*, align 8
  %7 = alloca %struct.cryptd_queue*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = call %struct.cryptd_blkcipher_request_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %8)
  store %struct.cryptd_blkcipher_request_ctx* %9, %struct.cryptd_blkcipher_request_ctx** %5, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %11 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %10)
  store %struct.crypto_ablkcipher* %11, %struct.crypto_ablkcipher** %6, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %13 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %12)
  %14 = call %struct.cryptd_queue* @cryptd_get_queue(i32 %13)
  store %struct.cryptd_queue* %14, %struct.cryptd_queue** %7, align 8
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cryptd_blkcipher_request_ctx*, %struct.cryptd_blkcipher_request_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.cryptd_blkcipher_request_ctx, %struct.cryptd_blkcipher_request_ctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.cryptd_queue*, %struct.cryptd_queue** %7, align 8
  %26 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %27 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %26, i32 0, i32 0
  %28 = call i32 @cryptd_enqueue_request(%struct.cryptd_queue* %25, %struct.TYPE_2__* %27)
  ret i32 %28
}

declare dso_local %struct.cryptd_blkcipher_request_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.cryptd_queue* @cryptd_get_queue(i32) #1

declare dso_local i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @cryptd_enqueue_request(%struct.cryptd_queue*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
