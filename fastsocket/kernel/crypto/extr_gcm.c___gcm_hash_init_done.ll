; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c___gcm_hash_init_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c___gcm_hash_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32 }

@gcm_hash_assoc_done = common dso_local global i32 0, align 4
@gcm_hash_assoc_remain_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32)* @__gcm_hash_init_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gcm_hash_init_done(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %8)
  store %struct.crypto_gcm_req_priv_ctx* %9, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %12
  %18 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %19 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gcm_remain(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @gcm_hash_assoc_done, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @gcm_hash_assoc_remain_done, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %6, align 4
  %30 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %31 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gcm_hash_update(%struct.aead_request* %30, %struct.crypto_gcm_req_priv_ctx* %31, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @EINPROGRESS, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %28
  br label %62

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %12, %2
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @__gcm_hash_assoc_done(%struct.aead_request* %55, i32 %56)
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @__gcm_hash_assoc_remain_done(%struct.aead_request* %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %58, %54
  ret void
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @gcm_remain(i32) #1

declare dso_local i32 @gcm_hash_update(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*, i32, i32, i32) #1

declare dso_local i32 @__gcm_hash_assoc_done(%struct.aead_request*, i32) #1

declare dso_local i32 @__gcm_hash_assoc_remain_done(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
