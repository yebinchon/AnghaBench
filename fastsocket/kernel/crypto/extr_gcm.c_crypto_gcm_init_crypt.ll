; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_init_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_gcm_init_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.aead_request = type { i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_gcm_ctx = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.scatterlist*, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ablkcipher_request*, %struct.aead_request*, i32)* @crypto_gcm_init_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_gcm_init_crypt(%struct.ablkcipher_request* %0, %struct.aead_request* %1, i32 %2) #0 {
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.crypto_gcm_ctx*, align 8
  %9 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %7, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %15 = call %struct.crypto_gcm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  store %struct.crypto_gcm_ctx* %15, %struct.crypto_gcm_ctx** %8, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %17 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %16)
  store %struct.crypto_gcm_req_priv_ctx* %17, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %18 = call i32 @cpu_to_be32(i32 1)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @memset(i32 %21, i32 0, i32 4)
  %23 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %24 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 12
  %27 = call i32 @memcpy(i32 %26, i32* %11, i32 4)
  %28 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %28, i32 0, i32 0
  %30 = load %struct.scatterlist*, %struct.scatterlist** %29, align 8
  %31 = call i32 @sg_init_table(%struct.scatterlist* %30, i32 2)
  %32 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %32, i32 0, i32 0
  %34 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %35 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sg_set_buf(%struct.scatterlist* %34, i32 %37, i32 4)
  %39 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %39, i32 0, i32 0
  %41 = load %struct.scatterlist*, %struct.scatterlist** %40, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scatterwalk_sg_chain(%struct.scatterlist* %41, i32 2, i32 %44)
  %46 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %46, i32 0, i32 0
  %48 = load %struct.scatterlist*, %struct.scatterlist** %47, align 8
  store %struct.scatterlist* %48, %struct.scatterlist** %10, align 8
  %49 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %50 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %53 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %3
  %57 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %58 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %57, i32 0, i32 1
  %59 = load %struct.scatterlist*, %struct.scatterlist** %58, align 8
  %60 = call i32 @sg_init_table(%struct.scatterlist* %59, i32 2)
  %61 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %61, i32 0, i32 1
  %63 = load %struct.scatterlist*, %struct.scatterlist** %62, align 8
  %64 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sg_set_buf(%struct.scatterlist* %63, i32 %66, i32 4)
  %68 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %68, i32 0, i32 1
  %70 = load %struct.scatterlist*, %struct.scatterlist** %69, align 8
  %71 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %72 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @scatterwalk_sg_chain(%struct.scatterlist* %70, i32 2, i32 %73)
  %75 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %76 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %75, i32 0, i32 1
  %77 = load %struct.scatterlist*, %struct.scatterlist** %76, align 8
  store %struct.scatterlist* %77, %struct.scatterlist** %10, align 8
  br label %78

78:                                               ; preds = %56, %3
  %79 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %80 = load %struct.crypto_gcm_ctx*, %struct.crypto_gcm_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.crypto_gcm_ctx, %struct.crypto_gcm_ctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %79, i32 %82)
  %84 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %85 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %85, i32 0, i32 0
  %87 = load %struct.scatterlist*, %struct.scatterlist** %86, align 8
  %88 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = add i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %94 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %84, %struct.scatterlist* %87, %struct.scatterlist* %88, i32 %92, i32 %95)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_gcm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @scatterwalk_sg_chain(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
