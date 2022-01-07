; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_make_new_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_make_new_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i64 }
%struct.jme_ring = type { %struct.jme_buffer_info* }
%struct.jme_buffer_info = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@RX_EXTRA_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, i32)* @jme_make_new_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_make_new_rx_buf(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jme_ring*, align 8
  %7 = alloca %struct.jme_buffer_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %9, i32 0, i32 2
  %11 = load %struct.jme_ring*, %struct.jme_ring** %10, align 8
  %12 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %11, i64 0
  store %struct.jme_ring* %12, %struct.jme_ring** %6, align 8
  %13 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %14 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %13, i32 0, i32 0
  %15 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %15, i64 %17
  store %struct.jme_buffer_info* %18, %struct.jme_buffer_info** %7, align 8
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RX_EXTRA_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_2__* %21, i64 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %42 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %41, i32 0, i32 2
  store %struct.sk_buff* %40, %struct.sk_buff** %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call i32 @skb_tailroom(%struct.sk_buff* %43)
  %45 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %46 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @virt_to_page(i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @offset_in_page(i32 %56)
  %58 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %59 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %62 = call i32 @pci_map_page(i32 %49, i32 %53, i32 %57, i32 %60, i32 %61)
  %63 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %64 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %39, %36
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
