; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_genicv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_genicv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i64, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.authenc_request_ctx = type { i32, i32, i32, %struct.scatterlist*, %struct.scatterlist*, %struct.scatterlist* }
%struct.page = type { i32 }

@authenc_geniv_ahash_done = common dso_local global i32 0, align 4
@authenc_geniv_ahash_update_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32*, i32)* @crypto_authenc_genicv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_genicv(%struct.aead_request* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.authenc_request_ctx*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32* (%struct.aead_request*, i32)*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %21 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %20)
  store %struct.crypto_aead* %21, %struct.crypto_aead** %8, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %23 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %22)
  store %struct.authenc_request_ctx* %23, %struct.authenc_request_ctx** %9, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 3
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  store %struct.scatterlist* %26, %struct.scatterlist** %10, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 2
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  store %struct.scatterlist* %29, %struct.scatterlist** %11, align 8
  %30 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %30, i32 0, i32 5
  %32 = load %struct.scatterlist*, %struct.scatterlist** %31, align 8
  store %struct.scatterlist* %32, %struct.scatterlist** %12, align 8
  %33 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %33, i32 0, i32 4
  %35 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  store %struct.scatterlist* %35, %struct.scatterlist** %13, align 8
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %37 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %15, align 4
  store i32* (%struct.aead_request*, i32)* @crypto_authenc_ahash_fb, i32* (%struct.aead_request*, i32)** %16, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %42 = call %struct.page* @sg_page(%struct.scatterlist* %41)
  store %struct.page* %42, %struct.page** %17, align 8
  %43 = load %struct.page*, %struct.page** %17, align 8
  %44 = call i64 @PageHighMem(%struct.page* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  br label %55

47:                                               ; preds = %3
  %48 = load %struct.page*, %struct.page** %17, align 8
  %49 = call i32* @page_address(%struct.page* %48)
  %50 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  br label %55

55:                                               ; preds = %47, %46
  %56 = phi i32* [ null, %46 ], [ %54, %47 ]
  store i32* %56, i32** %18, align 8
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %61 = call i32 @sg_init_table(%struct.scatterlist* %60, i32 2)
  %62 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @sg_set_buf(%struct.scatterlist* %62, i32* %63, i32 %64)
  %66 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %67 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = icmp eq i32* %68, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %66, %struct.scatterlist* %67, i32 %74, i32 2)
  %76 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %76, %struct.scatterlist** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %59, %55
  %81 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %82 = call i64 @sg_is_last(%struct.scatterlist* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  store i32* (%struct.aead_request*, i32)* @crypto_authenc_ahash, i32* (%struct.aead_request*, i32)** %16, align 8
  %85 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %86 = call i32 @sg_init_table(%struct.scatterlist* %85, i32 2)
  %87 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %88 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %89 = call %struct.page* @sg_page(%struct.scatterlist* %88)
  %90 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %91 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %94 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sg_set_page(%struct.scatterlist* %87, %struct.page* %89, i32 %92, i32 %95)
  %97 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %98 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %99 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %97, %struct.scatterlist* %98, i32 0, i32 2)
  %100 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* %100, %struct.scatterlist** %10, align 8
  %101 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %102 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %84, %80
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %111 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %113 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %114 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %113, i32 0, i32 3
  store %struct.scatterlist* %112, %struct.scatterlist** %114, align 8
  %115 = load i32, i32* @authenc_geniv_ahash_done, align 4
  %116 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %117 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @authenc_geniv_ahash_update_done, align 4
  %119 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %120 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32* (%struct.aead_request*, i32)*, i32* (%struct.aead_request*, i32)** %16, align 8
  %122 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32* %121(%struct.aead_request* %122, i32 %123)
  store i32* %124, i32** %19, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = call i64 @IS_ERR(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %108
  %129 = load i32*, i32** %19, align 8
  %130 = call i32 @PTR_ERR(i32* %129)
  store i32 %130, i32* %4, align 4
  br label %138

131:                                              ; preds = %108
  %132 = load i32*, i32** %19, align 8
  %133 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %136 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %135)
  %137 = call i32 @scatterwalk_map_and_copy(i32* %132, %struct.scatterlist* %133, i32 %134, i32 %136, i32 1)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %131, %128
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32* @crypto_authenc_ahash_fb(%struct.aead_request*, i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @scatterwalk_crypto_chain(%struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local i32* @crypto_authenc_ahash(%struct.aead_request*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
