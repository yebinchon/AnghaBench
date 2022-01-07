; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_ipsec_esp_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_ipsec_esp_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_edesc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.aead_request = type { i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.talitos_edesc*, %struct.aead_request*)* @ipsec_esp_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_esp_unmap(%struct.device* %0, %struct.talitos_edesc* %1, %struct.aead_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.talitos_edesc*, align 8
  %6 = alloca %struct.aead_request*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.talitos_edesc* %1, %struct.talitos_edesc** %5, align 8
  store %struct.aead_request* %2, %struct.aead_request** %6, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %9 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 6
  %13 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %14 = call i32 @unmap_single_talitos_ptr(%struct.device* %7, i32* %12, i32 %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %17 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = call i32 @unmap_single_talitos_ptr(%struct.device* %15, i32* %20, i32 %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %25 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @unmap_single_talitos_ptr(%struct.device* %23, i32* %28, i32 %29)
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %33 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @unmap_single_talitos_ptr(%struct.device* %31, i32* %36, i32 %37)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_sg(%struct.device* %39, i32 %42, i32 1, i32 %43)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %47 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %48 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @talitos_sg_unmap(%struct.device* %45, %struct.talitos_edesc* %46, i32 %49, i32 %52)
  %54 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %55 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %3
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %61 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %64 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %67 = call i32 @dma_unmap_single(%struct.device* %59, i32 %62, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %3
  ret void
}

declare dso_local i32 @unmap_single_talitos_ptr(%struct.device*, i32*, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @talitos_sg_unmap(%struct.device*, %struct.talitos_edesc*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
