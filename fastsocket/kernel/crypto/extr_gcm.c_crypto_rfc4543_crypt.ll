; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_rfc4543_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_crypto_rfc4543_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, %struct.TYPE_2__, %struct.scatterlist*, i32*, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_rfc4543_ctx = type { i32, i32* }
%struct.crypto_rfc4543_req_ctx = type { i32, %struct.scatterlist*, %struct.scatterlist*, %struct.scatterlist*, %struct.aead_request }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aead_request* (%struct.aead_request*, i32)* @crypto_rfc4543_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aead_request* @crypto_rfc4543_crypt(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.crypto_rfc4543_ctx*, align 8
  %7 = alloca %struct.crypto_rfc4543_req_ctx*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %19 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %18)
  store %struct.crypto_aead* %19, %struct.crypto_aead** %5, align 8
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %21 = call %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_aead* %20)
  store %struct.crypto_rfc4543_ctx* %21, %struct.crypto_rfc4543_ctx** %6, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = call %struct.crypto_rfc4543_req_ctx* @crypto_rfc4543_reqctx(%struct.aead_request* %22)
  store %struct.crypto_rfc4543_req_ctx* %23, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %24 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %24, i32 0, i32 4
  store %struct.aead_request* %25, %struct.aead_request** %8, align 8
  %26 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %27 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %26, i32 0, i32 5
  %28 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  store %struct.scatterlist* %28, %struct.scatterlist** %9, align 8
  %29 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %29, i32 0, i32 3
  %31 = load %struct.scatterlist*, %struct.scatterlist** %30, align 8
  store %struct.scatterlist* %31, %struct.scatterlist** %10, align 8
  %32 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %32, i32 0, i32 2
  %34 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  store %struct.scatterlist* %34, %struct.scatterlist** %11, align 8
  %35 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %35, i32 0, i32 1
  %37 = load %struct.scatterlist*, %struct.scatterlist** %36, align 8
  store %struct.scatterlist* %37, %struct.scatterlist** %12, align 8
  %38 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %39 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  %43 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %43, i64 1
  %45 = bitcast %struct.crypto_rfc4543_req_ctx* %44 to i32*
  %46 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @crypto_aead_reqsize(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @crypto_aead_alignmask(i32 %54)
  %56 = add nsw i64 %55, 1
  %57 = call i32* @PTR_ALIGN(i32* %51, i64 %56)
  store i32* %57, i32** %17, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @memcpy(i32* %58, i32* %61, i32 4)
  %63 = load i32*, i32** %17, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %66 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @memcpy(i32* %64, i32* %67, i32 8)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %2
  %72 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @memset(i32 %74, i32 0, i32 %75)
  br label %89

77:                                               ; preds = %2
  %78 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %82 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %83 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @scatterwalk_map_and_copy(i32 %80, %struct.scatterlist* %81, i32 %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %77, %71
  %90 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %91 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %7, align 8
  %92 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @sg_init_one(%struct.scatterlist* %90, i32 %93, i32 %94)
  %96 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %97 = call %struct.page* @sg_page(%struct.scatterlist* %96)
  store %struct.page* %97, %struct.page** %15, align 8
  %98 = load %struct.page*, %struct.page** %15, align 8
  %99 = call i64 @PageHighMem(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %110

102:                                              ; preds = %89
  %103 = load %struct.page*, %struct.page** %15, align 8
  %104 = call i32* @page_address(%struct.page* %103)
  %105 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %106 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  br label %110

110:                                              ; preds = %102, %101
  %111 = phi i32* [ null, %101 ], [ %109, %102 ]
  store i32* %111, i32** %16, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %113 = call i32 @sg_init_table(%struct.scatterlist* %112, i32 2)
  %114 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %115 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %116 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @sg_set_buf(%struct.scatterlist* %114, i32* %117, i32 8)
  %119 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %120 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %123 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 8
  %126 = icmp eq i32* %121, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %119, %struct.scatterlist* %120, i32 %127, i32 2)
  %129 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %130 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add i32 8, %131
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %110
  br label %138

136:                                              ; preds = %110
  %137 = load i32, i32* %13, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi i32 [ 0, %135 ], [ %137, %136 ]
  %140 = sub i32 %132, %139
  %141 = load i32, i32* %14, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %14, align 4
  %143 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %144 = call i32 @sg_init_table(%struct.scatterlist* %143, i32 2)
  %145 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %146 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %147 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %146, i32 0, i32 3
  %148 = load %struct.scatterlist*, %struct.scatterlist** %147, align 8
  %149 = call %struct.page* @sg_page(%struct.scatterlist* %148)
  %150 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %151 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %150, i32 0, i32 3
  %152 = load %struct.scatterlist*, %struct.scatterlist** %151, align 8
  %153 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %156 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %155, i32 0, i32 3
  %157 = load %struct.scatterlist*, %struct.scatterlist** %156, align 8
  %158 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @sg_set_page(%struct.scatterlist* %145, %struct.page* %149, i32 %154, i32 %159)
  %161 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %162 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %163 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %161, %struct.scatterlist* %162, i32 0, i32 2)
  %164 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %165 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %6, align 8
  %166 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @aead_request_set_tfm(%struct.aead_request* %164, i32 %167)
  %169 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %170 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %171 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %175 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %179 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @aead_request_set_callback(%struct.aead_request* %169, i32 %173, i32 %177, i32 %181)
  %183 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %184 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %185 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %186 = load i32, i32* %4, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %138
  br label %191

189:                                              ; preds = %138
  %190 = load i32, i32* %13, align 4
  br label %191

191:                                              ; preds = %189, %188
  %192 = phi i32 [ 0, %188 ], [ %190, %189 ]
  %193 = load i32*, i32** %17, align 8
  %194 = call i32 @aead_request_set_crypt(%struct.aead_request* %183, %struct.scatterlist* %184, %struct.scatterlist* %185, i32 %192, i32* %193)
  %195 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %196 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @aead_request_set_assoc(%struct.aead_request* %195, %struct.scatterlist* %196, i32 %197)
  %199 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  ret %struct.aead_request* %199
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_rfc4543_req_ctx* @crypto_rfc4543_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @crypto_aead_reqsize(i32) #1

declare dso_local i64 @crypto_aead_alignmask(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @scatterwalk_crypto_chain(%struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @aead_request_set_assoc(%struct.aead_request*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
