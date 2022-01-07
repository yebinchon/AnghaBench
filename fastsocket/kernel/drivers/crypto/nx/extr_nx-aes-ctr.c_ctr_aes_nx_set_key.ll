; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr_aes_nx_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr_aes_nx_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.nx_crypto_ctx = type { i32*, i32*, %struct.nx_csbcpb* }
%struct.nx_csbcpb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@HCOP_FC_AES = common dso_local global i32 0, align 4
@NX_KS_AES_128 = common dso_local global i32 0, align 4
@NX_PROPS_AES_128 = common dso_local global i64 0, align 8
@NX_KS_AES_192 = common dso_local global i32 0, align 4
@NX_PROPS_AES_192 = common dso_local global i64 0, align 8
@NX_KS_AES_256 = common dso_local global i32 0, align 4
@NX_PROPS_AES_256 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NX_MODE_AES_CTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @ctr_aes_nx_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_aes_nx_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nx_crypto_ctx*, align 8
  %9 = alloca %struct.nx_csbcpb*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.nx_crypto_ctx* %11, %struct.nx_crypto_ctx** %8, align 8
  %12 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %12, i32 0, i32 2
  %14 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %13, align 8
  store %struct.nx_csbcpb* %14, %struct.nx_csbcpb** %9, align 8
  %15 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %16 = load i32, i32* @HCOP_FC_AES, align 4
  %17 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %52 [
    i32 130, label %19
    i32 129, label %30
    i32 128, label %41
  ]

19:                                               ; preds = %3
  %20 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %21 = load i32, i32* @NX_KS_AES_128, align 4
  %22 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %20, i32 %21)
  %23 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @NX_PROPS_AES_128, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  br label %55

30:                                               ; preds = %3
  %31 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %32 = load i32, i32* @NX_KS_AES_192, align 4
  %33 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %31, i32 %32)
  %34 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @NX_PROPS_AES_192, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  br label %55

41:                                               ; preds = %3
  %42 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %43 = load i32, i32* @NX_KS_AES_256, align 4
  %44 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %42, i32 %43)
  %45 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @NX_PROPS_AES_256, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %69

55:                                               ; preds = %41, %30, %19
  %56 = load i32, i32* @NX_MODE_AES_CTR, align 4
  %57 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %58 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %62 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @memcpy(i32 %65, i32* %66, i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %55, %52
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
