; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32*, i32* }
%struct.crypto_aead = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*)* @crypto_gcm_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_gcm_verify(%struct.aead_request* %0, %struct.crypto_gcm_req_priv_ctx* %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store %struct.crypto_gcm_req_priv_ctx* %1, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %5, align 8
  %12 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %19 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %21 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @crypto_xor(i32* %25, i32* %26, i32 16)
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @scatterwalk_map_and_copy(i32* %28, i32 %31, i32 %32, i32 %33, i32 0)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @memcmp(i32* %35, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EBADMSG, align 4
  %42 = sub nsw i32 0, %41
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  ret i32 %45
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
