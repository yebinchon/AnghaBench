; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_ablkcipher_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_ablkcipher_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pd_uinfo = type { %struct.scatterlist*, i64, i32 }
%struct.scatterlist = type { i32, i32 }
%struct.ce_pd = type { i32 }
%struct.crypto4xx_ctx = type { i32 }
%struct.ablkcipher_request = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)*, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*, %struct.pd_uinfo*, %struct.ce_pd*)* @crypto4xx_ablkcipher_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_ablkcipher_done(%struct.crypto4xx_device* %0, %struct.pd_uinfo* %1, %struct.ce_pd* %2) #0 {
  %4 = alloca %struct.crypto4xx_device*, align 8
  %5 = alloca %struct.pd_uinfo*, align 8
  %6 = alloca %struct.ce_pd*, align 8
  %7 = alloca %struct.crypto4xx_ctx*, align 8
  %8 = alloca %struct.ablkcipher_request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %4, align 8
  store %struct.pd_uinfo* %1, %struct.pd_uinfo** %5, align 8
  store %struct.ce_pd* %2, %struct.ce_pd** %6, align 8
  %11 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %12 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %13)
  store %struct.ablkcipher_request* %14, %struct.ablkcipher_request** %8, align 8
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32 %18)
  store %struct.crypto4xx_ctx* %19, %struct.crypto4xx_ctx** %7, align 8
  %20 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %21 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %26 = load %struct.ce_pd*, %struct.ce_pd** %6, align 8
  %27 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %29 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %32 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @crypto4xx_copy_pkt_to_dst(%struct.crypto4xx_device* %25, %struct.ce_pd* %26, %struct.pd_uinfo* %27, i32 %30, i32 %33)
  br label %54

35:                                               ; preds = %3
  %36 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %37 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %36, i32 0, i32 0
  %38 = load %struct.scatterlist*, %struct.scatterlist** %37, align 8
  store %struct.scatterlist* %38, %struct.scatterlist** %9, align 8
  %39 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %40 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %45 = call i32 @sg_page(%struct.scatterlist* %44)
  %46 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i32 @dma_map_page(i32 %43, i32 %45, i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %35, %24
  %55 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %56 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %57 = call i32 @crypto4xx_ret_sg_desc(%struct.crypto4xx_device* %55, %struct.pd_uinfo* %56)
  %58 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %59 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.TYPE_4__*, i32)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %65 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %66, align 8
  %68 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %69 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %68, i32 0, i32 0
  %70 = call i32 %67(%struct.TYPE_4__* %69, i32 0)
  br label %71

71:                                               ; preds = %63, %54
  ret i32 0
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto4xx_copy_pkt_to_dst(%struct.crypto4xx_device*, %struct.ce_pd*, %struct.pd_uinfo*, i32, i32) #1

declare dso_local i32 @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @crypto4xx_ret_sg_desc(%struct.crypto4xx_device*, %struct.pd_uinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
