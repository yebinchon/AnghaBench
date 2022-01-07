; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_hash_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_hash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }
%struct.cryptd_hash_request_ctx = type { i32 (%struct.TYPE_2__*, i32)*, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @cryptd_hash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryptd_hash_final(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.cryptd_hash_request_ctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %7)
  store %struct.ahash_request* %8, %struct.ahash_request** %5, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %10 = call %struct.cryptd_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.cryptd_hash_request_ctx* %10, %struct.cryptd_hash_request_ctx** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EINPROGRESS, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.cryptd_hash_request_ctx*, %struct.cryptd_hash_request_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.cryptd_hash_request_ctx, %struct.cryptd_hash_request_ctx* %20, i32 0, i32 1
  %22 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %23 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @crypto_shash_final(i32* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.cryptd_hash_request_ctx*, %struct.cryptd_hash_request_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.cryptd_hash_request_ctx, %struct.cryptd_hash_request_ctx* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %27, align 8
  %29 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %30 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 (%struct.TYPE_2__*, i32)* %28, i32 (%struct.TYPE_2__*, i32)** %31, align 8
  br label %32

32:                                               ; preds = %19, %18
  %33 = call i32 (...) @local_bh_disable()
  %34 = load %struct.cryptd_hash_request_ctx*, %struct.cryptd_hash_request_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.cryptd_hash_request_ctx, %struct.cryptd_hash_request_ctx* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %35, align 8
  %37 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %38 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %37, i32 0, i32 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 %36(%struct.TYPE_2__* %38, i32 %39)
  %41 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.cryptd_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_shash_final(i32*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
