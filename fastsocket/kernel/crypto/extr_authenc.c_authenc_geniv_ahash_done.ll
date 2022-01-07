; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_authenc_geniv_ahash_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_authenc_geniv_ahash_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i64 }
%struct.authenc_request_ctx = type { i32, i32, i64 }
%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @authenc_geniv_ahash_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authenc_geniv_ahash_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.crypto_authenc_ctx*, align 8
  %8 = alloca %struct.authenc_request_ctx*, align 8
  %9 = alloca %struct.ahash_request*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %10, i32 0, i32 0
  %12 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  store %struct.aead_request* %12, %struct.aead_request** %5, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %6, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %16 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_authenc_ctx* %16, %struct.crypto_authenc_ctx** %7, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %18 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %17)
  store %struct.authenc_request_ctx* %18, %struct.authenc_request_ctx** %8, align 8
  %19 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.ahash_request*
  store %struct.ahash_request* %27, %struct.ahash_request** %9, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %33 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %42 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %41)
  %43 = call i32 @scatterwalk_map_and_copy(i32 %34, i32 %37, i32 %40, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %31, %30
  %45 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @aead_request_complete(%struct.aead_request* %45, i32 %46)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
