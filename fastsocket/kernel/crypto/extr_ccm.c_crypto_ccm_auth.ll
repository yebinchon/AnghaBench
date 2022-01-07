; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_ctx = type { %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.scatterlist*, i32)* @crypto_ccm_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_auth(%struct.aead_request* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.crypto_ccm_ctx*, align 8
  %9 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %10 = alloca %struct.crypto_cipher*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %7, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %18 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %17)
  store %struct.crypto_ccm_ctx* %18, %struct.crypto_ccm_ctx** %8, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %20 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %19)
  store %struct.crypto_ccm_req_priv_ctx* %20, %struct.crypto_ccm_req_priv_ctx** %9, align 8
  %21 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %21, i32 0, i32 0
  %23 = load %struct.crypto_cipher*, %struct.crypto_cipher** %22, align 8
  store %struct.crypto_cipher* %23, %struct.crypto_cipher** %10, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  %30 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @format_input(i32* %33, %struct.aead_request* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %71

40:                                               ; preds = %3
  %41 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %41, i32* %42, i32* %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @format_adata(i32* %48, i32 %49)
  %51 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %54 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %9, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 1
  %57 = load %struct.scatterlist*, %struct.scatterlist** %56, align 8
  %58 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %59 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @get_data_to_compute(%struct.crypto_cipher* %53, %struct.crypto_ccm_req_priv_ctx* %54, %struct.scatterlist* %57, i32 %60)
  br label %65

62:                                               ; preds = %40
  %63 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %47
  %66 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %67 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %9, align 8
  %68 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @get_data_to_compute(%struct.crypto_cipher* %66, %struct.crypto_ccm_req_priv_ctx* %67, %struct.scatterlist* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %39
  %72 = load i32, i32* %14, align 4
  ret i32 %72
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @format_input(i32*, %struct.aead_request*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

declare dso_local i64 @format_adata(i32*, i32) #1

declare dso_local i32 @get_data_to_compute(%struct.crypto_cipher*, %struct.crypto_ccm_req_priv_ctx*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
