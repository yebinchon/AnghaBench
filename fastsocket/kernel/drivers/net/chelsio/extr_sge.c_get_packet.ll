; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_get_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pci_dev = type { i32 }
%struct.freelQ = type { i64, i32, %struct.freelQ_ce* }
%struct.freelQ_ce = type { %struct.sk_buff* }

@copybreak = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.pci_dev*, %struct.freelQ*, i32)* @get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_packet(%struct.pci_dev* %0, %struct.freelQ* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.freelQ*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.freelQ_ce*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.freelQ* %1, %struct.freelQ** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %11 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %10, i32 0, i32 2
  %12 = load %struct.freelQ_ce*, %struct.freelQ_ce** %11, align 8
  %13 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %14 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %12, i64 %15
  store %struct.freelQ_ce* %16, %struct.freelQ_ce** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @copybreak, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 2
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %67

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @skb_reserve(%struct.sk_buff* %29, i32 2)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @skb_put(%struct.sk_buff* %31, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %36 = load i32, i32* @dma_addr, align 4
  %37 = call i32 @pci_unmap_addr(%struct.freelQ_ce* %35, i32 %36)
  %38 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %39 = load i32, i32* @dma_len, align 4
  %40 = call i32 @pci_unmap_len(%struct.freelQ_ce* %38, i32 %39)
  %41 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %42 = call i32 @pci_dma_sync_single_for_cpu(%struct.pci_dev* %34, i32 %37, i32 %40, i32 %41)
  %43 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %44 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %45, i32 %48, i32 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %53 = load i32, i32* @dma_addr, align 4
  %54 = call i32 @pci_unmap_addr(%struct.freelQ_ce* %52, i32 %53)
  %55 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %56 = load i32, i32* @dma_len, align 4
  %57 = call i32 @pci_unmap_len(%struct.freelQ_ce* %55, i32 %56)
  %58 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %59 = call i32 @pci_dma_sync_single_for_device(%struct.pci_dev* %51, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %61 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %62 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @recycle_fl_buf(%struct.freelQ* %60, i64 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %4, align 8
  br label %99

66:                                               ; preds = %3
  br label %67

67:                                               ; preds = %66, %27
  %68 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %69 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %74 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %75 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @recycle_fl_buf(%struct.freelQ* %73, i64 %76)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %99

78:                                               ; preds = %67
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %81 = load i32, i32* @dma_addr, align 4
  %82 = call i32 @pci_unmap_addr(%struct.freelQ_ce* %80, i32 %81)
  %83 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %84 = load i32, i32* @dma_len, align 4
  %85 = call i32 @pci_unmap_len(%struct.freelQ_ce* %83, i32 %84)
  %86 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %87 = call i32 @pci_unmap_single(%struct.pci_dev* %79, i32 %82, i32 %85, i32 %86)
  %88 = load %struct.freelQ_ce*, %struct.freelQ_ce** %9, align 8
  %89 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %89, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %8, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @prefetch(i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @skb_put(%struct.sk_buff* %95, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %98, %struct.sk_buff** %4, align 8
  br label %99

99:                                               ; preds = %78, %72, %28
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %100
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.freelQ_ce*, i32) #1

declare dso_local i32 @pci_unmap_len(%struct.freelQ_ce*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @recycle_fl_buf(%struct.freelQ*, i64) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @prefetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
