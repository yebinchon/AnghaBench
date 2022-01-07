; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_init_dummy_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_init_dummy_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.dscc4_dev_priv = type { i32, %struct.sk_buff**, %struct.TYPE_2__*, %struct.TxFD* }
%struct.TYPE_2__ = type { i32 }
%struct.TxFD = type { i32, i32 }

@DUMMY_SKB_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@FrameEnd = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.dscc4_dev_priv*)* @dscc4_init_dummy_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dscc4_init_dummy_skb(%struct.dscc4_dev_priv* %0) #0 {
  %2 = alloca %struct.dscc4_dev_priv*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TxFD*, align 8
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %2, align 8
  %6 = load i32, i32* @DUMMY_SKB_SIZE, align 4
  %7 = call %struct.sk_buff* @dev_alloc_skb(i32 %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %12 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TX_RING_SIZE, align 4
  %15 = srem i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %17 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %16, i32 0, i32 3
  %18 = load %struct.TxFD*, %struct.TxFD** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %18, i64 %20
  store %struct.TxFD* %21, %struct.TxFD** %5, align 8
  %22 = load i32, i32* @DUMMY_SKB_SIZE, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load i32, i32* @version, align 4
  %27 = load i32, i32* @version, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = load i32, i32* @DUMMY_SKB_SIZE, align 4
  %30 = srem i32 %28, %29
  %31 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %25, i32 %26, i32 %30)
  %32 = load i32, i32* @FrameEnd, align 4
  %33 = load i32, i32* @DUMMY_SKB_SIZE, align 4
  %34 = call i32 @TO_STATE_TX(i32 %33)
  %35 = or i32 %32, %34
  %36 = load %struct.TxFD*, %struct.TxFD** %5, align 8
  %37 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %39 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DUMMY_SKB_SIZE, align 4
  %47 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %48 = call i32 @pci_map_single(i32 %42, i32 %45, i32 %46, i32 %47)
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.TxFD*, %struct.TxFD** %5, align 8
  %51 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %54 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %53, i32 0, i32 1
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %55, i64 %57
  store %struct.sk_buff* %52, %struct.sk_buff** %58, align 8
  br label %59

59:                                               ; preds = %10, %1
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %60
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @TO_STATE_TX(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
