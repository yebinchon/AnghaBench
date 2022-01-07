; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_map_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rx_ring_info = type { i32*, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.rx_ring_info*, i32)* @sky2_rx_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_rx_map_skb(%struct.pci_dev* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.rx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %11 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %10, i32 0, i32 2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %19 = call i32 @pci_map_single(%struct.pci_dev* %13, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %21 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %24 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pci_dma_mapping_error(%struct.pci_dev* %22, i32 %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %85

32:                                               ; preds = %3
  %33 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %34 = load i32, i32* @data_size, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pci_unmap_len_set(%struct.rx_ring_info* %33, i32 %34, i32 %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %81, %32
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %37
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %74 = call i32 @pci_map_page(%struct.pci_dev* %45, i32 %54, i32 %63, i32 %72, i32 %73)
  %75 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %76 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %44
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %37

84:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %29
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_unmap_len_set(%struct.rx_ring_info*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_page(%struct.pci_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
