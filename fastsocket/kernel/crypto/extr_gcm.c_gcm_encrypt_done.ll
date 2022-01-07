; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_encrypt_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_encrypt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @gcm_encrypt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_encrypt_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %7, i32 0, i32 0
  %9 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  store %struct.aead_request* %9, %struct.aead_request** %5, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %11 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %10)
  store %struct.crypto_gcm_req_priv_ctx* %11, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %16 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %17 = call i32 @gcm_hash(%struct.aead_request* %15, %struct.crypto_gcm_req_priv_ctx* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %14
  br label %48

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @crypto_xor(i32 %34, i32 %37, i32 16)
  %39 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %40 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %41 = call i32 @gcm_enc_copy_hash(%struct.aead_request* %39, %struct.crypto_gcm_req_priv_ctx* %40)
  br label %42

42:                                               ; preds = %31, %28
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @aead_request_complete(%struct.aead_request* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %27
  ret void
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @gcm_hash(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

declare dso_local i32 @crypto_xor(i32, i32, i32) #1

declare dso_local i32 @gcm_enc_copy_hash(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
