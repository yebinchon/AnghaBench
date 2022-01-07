; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32*, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_ctx = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { i32*, %struct.scatterlist*, i32, %struct.scatterlist*, %struct.ablkcipher_request }
%struct.scatterlist = type { i32 }
%struct.ablkcipher_request = type { i32 }

@crypto_ccm_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_ccm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_ccm_ctx*, align 8
  %6 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %7 = alloca %struct.ablkcipher_request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %4, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_ccm_ctx* %16, %struct.crypto_ccm_ctx** %5, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %17)
  store %struct.crypto_ccm_req_priv_ctx* %18, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %19 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %19, i32 0, i32 4
  store %struct.ablkcipher_request* %20, %struct.ablkcipher_request** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @crypto_ccm_check_iv(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %2, align 4
  br label %149

36:                                               ; preds = %1
  %37 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %38 = call i32 @aead_request_flags(%struct.aead_request* %37)
  %39 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @crypto_ccm_auth(%struct.aead_request* %41, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %2, align 4
  br label %149

51:                                               ; preds = %36
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 15
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @memset(i32* %59, i32 0, i32 %63)
  %65 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %65, i32 0, i32 1
  %67 = load %struct.scatterlist*, %struct.scatterlist** %66, align 8
  %68 = call i32 @sg_init_table(%struct.scatterlist* %67, i32 2)
  %69 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %69, i32 0, i32 1
  %71 = load %struct.scatterlist*, %struct.scatterlist** %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @sg_set_buf(%struct.scatterlist* %71, i32* %72, i32 16)
  %74 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %74, i32 0, i32 1
  %76 = load %struct.scatterlist*, %struct.scatterlist** %75, align 8
  %77 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %78 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @scatterwalk_sg_chain(%struct.scatterlist* %76, i32 2, i32 %79)
  %81 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %81, i32 0, i32 1
  %83 = load %struct.scatterlist*, %struct.scatterlist** %82, align 8
  store %struct.scatterlist* %83, %struct.scatterlist** %8, align 8
  %84 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %85 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %88 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %51
  %92 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %92, i32 0, i32 3
  %94 = load %struct.scatterlist*, %struct.scatterlist** %93, align 8
  %95 = call i32 @sg_init_table(%struct.scatterlist* %94, i32 2)
  %96 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %96, i32 0, i32 3
  %98 = load %struct.scatterlist*, %struct.scatterlist** %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @sg_set_buf(%struct.scatterlist* %98, i32* %99, i32 16)
  %101 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %102 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %101, i32 0, i32 3
  %103 = load %struct.scatterlist*, %struct.scatterlist** %102, align 8
  %104 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %105 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @scatterwalk_sg_chain(%struct.scatterlist* %103, i32 2, i32 %106)
  %108 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %109 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %108, i32 0, i32 3
  %110 = load %struct.scatterlist*, %struct.scatterlist** %109, align 8
  store %struct.scatterlist* %110, %struct.scatterlist** %8, align 8
  br label %111

111:                                              ; preds = %91, %51
  %112 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %113 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %112, i32 %115)
  %117 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %118 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %119 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @crypto_ccm_encrypt_done, align 4
  %122 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %123 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %117, i32 %120, i32 %121, %struct.aead_request* %122)
  %124 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %125 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %126 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %125, i32 0, i32 1
  %127 = load %struct.scatterlist*, %struct.scatterlist** %126, align 8
  %128 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = add i32 %129, 16
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %124, %struct.scatterlist* %127, %struct.scatterlist* %128, i32 %130, i32* %131)
  %133 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %134 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %111
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %2, align 4
  br label %149

139:                                              ; preds = %111
  %140 = load i32*, i32** %10, align 8
  %141 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %142 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %146 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %145)
  %147 = call i32 @scatterwalk_map_and_copy(i32* %140, i32 %143, i32 %144, i32 %146, i32 1)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %139, %137, %49, %34
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_ccm_check_iv(i32*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ccm_auth(%struct.aead_request*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @scatterwalk_sg_chain(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
