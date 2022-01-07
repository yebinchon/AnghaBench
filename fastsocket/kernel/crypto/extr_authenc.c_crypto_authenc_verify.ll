; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.authenc_request_ctx = type { i32, i32, i32 }

@authenc_verify_ahash_done = common dso_local global i32 0, align 4
@authenc_verify_ahash_update_done = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32* (%struct.aead_request*, i32)*)* @crypto_authenc_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_verify(%struct.aead_request* %0, i32* (%struct.aead_request*, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32* (%struct.aead_request*, i32)*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.authenc_request_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32* (%struct.aead_request*, i32)* %1, i32* (%struct.aead_request*, i32)** %5, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %12 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %11)
  store %struct.crypto_aead* %12, %struct.crypto_aead** %6, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.authenc_request_ctx* %14, %struct.authenc_request_ctx** %7, align 8
  %15 = load i32, i32* @authenc_verify_ahash_done, align 4
  %16 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @authenc_verify_ahash_update_done, align 4
  %19 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32* (%struct.aead_request*, i32)*, i32* (%struct.aead_request*, i32)** %5, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %24 = call i32* %21(%struct.aead_request* %22, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @IS_ERR(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @PTR_ERR(i32* %29)
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %33 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @scatterwalk_map_and_copy(i32* %38, i32 %41, i32 %44, i32 %45, i32 0)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @memcmp(i32* %47, i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @EBADMSG, align 4
  %54 = sub nsw i32 0, %53
  br label %56

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %28
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
