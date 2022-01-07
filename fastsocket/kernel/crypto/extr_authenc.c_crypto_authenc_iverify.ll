; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_iverify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_authenc.c_crypto_authenc_iverify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.authenc_request_ctx = type { i32, %struct.scatterlist*, %struct.scatterlist*, %struct.scatterlist* }
%struct.page = type { i32 }

@crypto_authenc_ahash_fb = common dso_local global i32 0, align 4
@crypto_authenc_ahash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32*, i32)* @crypto_authenc_iverify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_iverify(%struct.aead_request* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.authenc_request_ctx*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %7, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %20 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %19)
  store %struct.authenc_request_ctx* %20, %struct.authenc_request_ctx** %8, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 2
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %9, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 1
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  store %struct.scatterlist* %26, %struct.scatterlist** %10, align 8
  %27 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %27, i32 0, i32 3
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  store %struct.scatterlist* %29, %struct.scatterlist** %11, align 8
  %30 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %30, i32 0, i32 2
  %32 = load %struct.scatterlist*, %struct.scatterlist** %31, align 8
  store %struct.scatterlist* %32, %struct.scatterlist** %12, align 8
  %33 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %34 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @crypto_authenc_ahash_fb, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %37 = call %struct.page* @sg_page(%struct.scatterlist* %36)
  store %struct.page* %37, %struct.page** %15, align 8
  %38 = load %struct.page*, %struct.page** %15, align 8
  %39 = call i64 @PageHighMem(%struct.page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %50

42:                                               ; preds = %3
  %43 = load %struct.page*, %struct.page** %15, align 8
  %44 = call i32* @page_address(%struct.page* %43)
  %45 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  br label %50

50:                                               ; preds = %42, %41
  %51 = phi i32* [ null, %41 ], [ %49, %42 ]
  store i32* %51, i32** %16, align 8
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %56 = call i32 @sg_init_table(%struct.scatterlist* %55, i32 2)
  %57 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @sg_set_buf(%struct.scatterlist* %57, i32* %58, i32 %59)
  %61 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %62 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %13, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = icmp eq i32* %63, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %61, %struct.scatterlist* %62, i32 %69, i32 2)
  %71 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %71, %struct.scatterlist** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %54, %50
  %76 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %77 = call i64 @sg_is_last(%struct.scatterlist* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32, i32* @crypto_authenc_ahash, align 4
  store i32 %80, i32* %14, align 4
  %81 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %82 = call i32 @sg_init_table(%struct.scatterlist* %81, i32 2)
  %83 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %84 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %85 = call %struct.page* @sg_page(%struct.scatterlist* %84)
  %86 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sg_set_page(%struct.scatterlist* %83, %struct.page* %85, i32 %88, i32 %91)
  %93 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %94 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %95 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %93, %struct.scatterlist* %94, i32 0, i32 2)
  %96 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %96, %struct.scatterlist** %9, align 8
  %97 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %98 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %79, %75
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %109 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %110 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %109, i32 0, i32 1
  store %struct.scatterlist* %108, %struct.scatterlist** %110, align 8
  %111 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @crypto_authenc_verify(%struct.aead_request* %111, i32 %112)
  ret i32 %113
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @scatterwalk_crypto_chain(%struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @crypto_authenc_verify(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
