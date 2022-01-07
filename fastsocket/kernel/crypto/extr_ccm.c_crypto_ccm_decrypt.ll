; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32*, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_ctx = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { i32*, i32*, %struct.scatterlist*, i32, %struct.scatterlist*, %struct.ablkcipher_request }
%struct.scatterlist = type { i32 }
%struct.ablkcipher_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@crypto_ccm_decrypt_done = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_ccm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_ccm_ctx*, align 8
  %6 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %7 = alloca %struct.ablkcipher_request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %4, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %18 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %17)
  store %struct.crypto_ccm_ctx* %18, %struct.crypto_ccm_ctx** %5, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %20 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %19)
  store %struct.crypto_ccm_req_priv_ctx* %20, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %21 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %21, i32 0, i32 5
  store %struct.ablkcipher_request* %22, %struct.ablkcipher_request** %7, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %24 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  %34 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %13, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %174

43:                                               ; preds = %1
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @crypto_ccm_check_iv(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %2, align 4
  br label %174

53:                                               ; preds = %43
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = call i32 @aead_request_flags(%struct.aead_request* %54)
  %56 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %60 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @scatterwalk_map_and_copy(i32* %58, i32 %61, i32 %62, i32 %63, i32 0)
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 15
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @memset(i32* %72, i32 0, i32 %76)
  %78 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %78, i32 0, i32 2
  %80 = load %struct.scatterlist*, %struct.scatterlist** %79, align 8
  %81 = call i32 @sg_init_table(%struct.scatterlist* %80, i32 2)
  %82 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %82, i32 0, i32 2
  %84 = load %struct.scatterlist*, %struct.scatterlist** %83, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @sg_set_buf(%struct.scatterlist* %84, i32* %85, i32 16)
  %87 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %87, i32 0, i32 2
  %89 = load %struct.scatterlist*, %struct.scatterlist** %88, align 8
  %90 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %91 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @scatterwalk_sg_chain(%struct.scatterlist* %89, i32 2, i32 %92)
  %94 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %95 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %94, i32 0, i32 2
  %96 = load %struct.scatterlist*, %struct.scatterlist** %95, align 8
  store %struct.scatterlist* %96, %struct.scatterlist** %8, align 8
  %97 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %98 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %101 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %53
  %105 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %105, i32 0, i32 4
  %107 = load %struct.scatterlist*, %struct.scatterlist** %106, align 8
  %108 = call i32 @sg_init_table(%struct.scatterlist* %107, i32 2)
  %109 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %109, i32 0, i32 4
  %111 = load %struct.scatterlist*, %struct.scatterlist** %110, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @sg_set_buf(%struct.scatterlist* %111, i32* %112, i32 16)
  %114 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %114, i32 0, i32 4
  %116 = load %struct.scatterlist*, %struct.scatterlist** %115, align 8
  %117 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %118 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @scatterwalk_sg_chain(%struct.scatterlist* %116, i32 2, i32 %119)
  %121 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %121, i32 0, i32 4
  %123 = load %struct.scatterlist*, %struct.scatterlist** %122, align 8
  store %struct.scatterlist* %123, %struct.scatterlist** %8, align 8
  br label %124

124:                                              ; preds = %104, %53
  %125 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %126 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %5, align 8
  %127 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %125, i32 %128)
  %130 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %131 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %132 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @crypto_ccm_decrypt_done, align 4
  %135 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %136 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %130, i32 %133, i32 %134, %struct.aead_request* %135)
  %137 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %138 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %139 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %138, i32 0, i32 2
  %140 = load %struct.scatterlist*, %struct.scatterlist** %139, align 8
  %141 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %142, 16
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %137, %struct.scatterlist* %140, %struct.scatterlist* %141, i32 %143, i32* %144)
  %146 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %147 = call i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %124
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %2, align 4
  br label %174

152:                                              ; preds = %124
  %153 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %154 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %155 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @crypto_ccm_auth(%struct.aead_request* %153, i32 %156, i32 %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %2, align 4
  br label %174

163:                                              ; preds = %152
  %164 = load i32*, i32** %11, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i64 @memcmp(i32* %164, i32* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i32, i32* @EBADMSG, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %174

172:                                              ; preds = %163
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %169, %161, %150, %51, %40
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_ccm_check_iv(i32*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @scatterwalk_sg_chain(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_ablkcipher_decrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_ccm_auth(%struct.aead_request*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
