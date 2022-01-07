; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_unmap_tx_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_unmap_tx_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.be_eth_wrb = type { i32, i64, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.be_eth_wrb*, i32)* @unmap_tx_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_tx_frag(%struct.device* %0, %struct.be_eth_wrb* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.be_eth_wrb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.be_eth_wrb* %1, %struct.be_eth_wrb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %5, align 8
  %9 = call i32 @be_dws_le_to_cpu(%struct.be_eth_wrb* %8, i32 24)
  %10 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %5, align 8
  %11 = getelementptr inbounds %struct.be_eth_wrb, %struct.be_eth_wrb* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 32
  %15 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %5, align 8
  %16 = getelementptr inbounds %struct.be_eth_wrb, %struct.be_eth_wrb* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = or i32 %14, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %5, align 8
  %21 = getelementptr inbounds %struct.be_eth_wrb, %struct.be_eth_wrb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %5, align 8
  %31 = getelementptr inbounds %struct.be_eth_wrb, %struct.be_eth_wrb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DMA_TO_DEVICE, align 4
  %34 = call i32 @dma_unmap_single(%struct.device* %28, i32 %29, i32 %32, i32 %33)
  br label %43

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %5, align 8
  %39 = getelementptr inbounds %struct.be_eth_wrb, %struct.be_eth_wrb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_unmap_page(%struct.device* %36, i32 %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %27
  br label %44

44:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @be_dws_le_to_cpu(%struct.be_eth_wrb*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
