; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.nx_crypto_ctx = type { i32*, i32*, %struct.nx_csbcpb*, %struct.nx_csbcpb* }
%struct.nx_csbcpb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@HCOP_FC_AES = common dso_local global i32 0, align 4
@NX_KS_AES_128 = common dso_local global i32 0, align 4
@NX_PROPS_AES_128 = common dso_local global i64 0, align 8
@NX_KS_AES_192 = common dso_local global i32 0, align 4
@NX_PROPS_AES_192 = common dso_local global i64 0, align 8
@NX_KS_AES_256 = common dso_local global i32 0, align 4
@NX_PROPS_AES_256 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NX_MODE_AES_GCM = common dso_local global i32 0, align 4
@NX_MODE_AES_GCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @gcm_aes_nx_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_aes_nx_set_key(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nx_crypto_ctx*, align 8
  %9 = alloca %struct.nx_csbcpb*, align 8
  %10 = alloca %struct.nx_csbcpb*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %11, i32 0, i32 0
  %13 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32* %12)
  store %struct.nx_crypto_ctx* %13, %struct.nx_crypto_ctx** %8, align 8
  %14 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %14, i32 0, i32 3
  %16 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %15, align 8
  store %struct.nx_csbcpb* %16, %struct.nx_csbcpb** %9, align 8
  %17 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %17, i32 0, i32 2
  %19 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %18, align 8
  store %struct.nx_csbcpb* %19, %struct.nx_csbcpb** %10, align 8
  %20 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %21 = load i32, i32* @HCOP_FC_AES, align 4
  %22 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %66 [
    i32 130, label %24
    i32 129, label %38
    i32 128, label %52
  ]

24:                                               ; preds = %3
  %25 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %26 = load i32, i32* @NX_KS_AES_128, align 4
  %27 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %25, i32 %26)
  %28 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %29 = load i32, i32* @NX_KS_AES_128, align 4
  %30 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %28, i32 %29)
  %31 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NX_PROPS_AES_128, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %69

38:                                               ; preds = %3
  %39 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %40 = load i32, i32* @NX_KS_AES_192, align 4
  %41 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %39, i32 %40)
  %42 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %43 = load i32, i32* @NX_KS_AES_192, align 4
  %44 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %42, i32 %43)
  %45 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @NX_PROPS_AES_192, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  br label %69

52:                                               ; preds = %3
  %53 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %54 = load i32, i32* @NX_KS_AES_256, align 4
  %55 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %53, i32 %54)
  %56 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %57 = load i32, i32* @NX_KS_AES_256, align 4
  %58 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %56, i32 %57)
  %59 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @NX_PROPS_AES_256, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  br label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %96

69:                                               ; preds = %52, %38, %24
  %70 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %71 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %72 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  %75 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %76 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @memcpy(i32 %79, i32* %80, i32 %81)
  %83 = load i32, i32* @NX_MODE_AES_GCA, align 4
  %84 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %85 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %89 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @memcpy(i32 %92, i32* %93, i32 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %69, %66
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
