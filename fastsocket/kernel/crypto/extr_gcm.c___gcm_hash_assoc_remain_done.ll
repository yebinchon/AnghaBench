; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c___gcm_hash_assoc_remain_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c___gcm_hash_assoc_remain_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.crypto_gcm_ghash_ctx }
%struct.crypto_gcm_ghash_ctx = type { i64, i32 }

@gcm_hash_crypt_done = common dso_local global i32 0, align 4
@gcm_hash_crypt_remain_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32)* @__gcm_hash_assoc_remain_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gcm_hash_assoc_remain_done(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %10 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %9)
  store %struct.crypto_gcm_req_priv_ctx* %10, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %11 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %11, i32 0, i32 0
  store %struct.crypto_gcm_ghash_ctx* %12, %struct.crypto_gcm_ghash_ctx** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %2
  %16 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @gcm_remain(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @gcm_hash_crypt_done, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @gcm_hash_crypt_remain_done, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  %33 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %34 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gcm_hash_update(%struct.aead_request* %33, %struct.crypto_gcm_req_priv_ctx* %34, i32 %35, i32 %38, i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @EINPROGRESS, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %31
  br label %65

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %15, %2
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @__gcm_hash_crypt_done(%struct.aead_request* %58, i32 %59)
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @__gcm_hash_crypt_remain_done(%struct.aead_request* %62, i32 %63)
  br label %65

65:                                               ; preds = %52, %61, %57
  ret void
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @gcm_remain(i64) #1

declare dso_local i32 @gcm_hash_update(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*, i32, i32, i64) #1

declare dso_local i32 @__gcm_hash_crypt_done(%struct.aead_request*, i32) #1

declare dso_local i32 @__gcm_hash_crypt_remain_done(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
