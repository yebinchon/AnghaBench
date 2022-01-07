; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_try_get_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_try_get_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i32, %struct.TYPE_2__*, %struct.sk_buff**, %struct.RxFD* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.RxFD = type { i64 }
%struct.net_device = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@HDLC_MAX_MRU = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* @try_get_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_get_rx_skb(%struct.dscc4_dev_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RxFD*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RX_RING_SIZE, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %15, i32 0, i32 3
  %17 = load %struct.RxFD*, %struct.RxFD** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %17, i64 %19
  store %struct.RxFD* %20, %struct.RxFD** %6, align 8
  %21 = load i32, i32* @HDLC_MAX_MRU, align 4
  %22 = call i32 @RX_MAX(i32 %21)
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.sk_buff* @dev_alloc_skb(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %27 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %26, i32 0, i32 2
  %28 = load %struct.sk_buff**, %struct.sk_buff*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %28, i64 %30
  store %struct.sk_buff* %25, %struct.sk_buff** %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @hdlc_type_trans(%struct.sk_buff* %35, %struct.net_device* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %41 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %50 = call i32 @pci_map_single(i32 %44, i32 %47, i32 %48, i32 %49)
  %51 = call i64 @cpu_to_le32(i32 %50)
  %52 = load %struct.RxFD*, %struct.RxFD** %6, align 8
  %53 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %57

54:                                               ; preds = %2
  %55 = load %struct.RxFD*, %struct.RxFD** %6, align 8
  %56 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  store i32 -1, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %34
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @RX_MAX(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @hdlc_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
