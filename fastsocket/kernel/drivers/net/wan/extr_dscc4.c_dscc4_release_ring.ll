; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_release_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_release_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { %struct.sk_buff**, %struct.sk_buff**, i32, i32, %struct.TxFD*, %struct.TxFD*, %struct.TYPE_2__* }
%struct.sk_buff = type { i32 }
%struct.TxFD = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.RxFD = type { i32 }

@TX_TOTAL_SIZE = common dso_local global i32 0, align 4
@RX_TOTAL_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@HDLC_MAX_MRU = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dscc4_dev_priv*)* @dscc4_release_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dscc4_release_ring(%struct.dscc4_dev_priv* %0) #0 {
  %2 = alloca %struct.dscc4_dev_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.TxFD*, align 8
  %5 = alloca %struct.RxFD*, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca i32, align 4
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %2, align 8
  %8 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %9 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %3, align 8
  %13 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %14 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %13, i32 0, i32 5
  %15 = load %struct.TxFD*, %struct.TxFD** %14, align 8
  store %struct.TxFD* %15, %struct.TxFD** %4, align 8
  %16 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %17 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %16, i32 0, i32 4
  %18 = load %struct.TxFD*, %struct.TxFD** %17, align 8
  %19 = bitcast %struct.TxFD* %18 to %struct.RxFD*
  store %struct.RxFD* %19, %struct.RxFD** %5, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* @TX_TOTAL_SIZE, align 4
  %22 = load %struct.TxFD*, %struct.TxFD** %4, align 8
  %23 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %24 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_free_consistent(%struct.pci_dev* %20, i32 %21, %struct.TxFD* %22, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @RX_TOTAL_SIZE, align 4
  %29 = load %struct.RxFD*, %struct.RxFD** %5, align 8
  %30 = bitcast %struct.RxFD* %29 to %struct.TxFD*
  %31 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %32 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_free_consistent(%struct.pci_dev* %27, i32 %28, %struct.TxFD* %30, i32 %33)
  %35 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %36 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %35, i32 0, i32 1
  %37 = load %struct.sk_buff**, %struct.sk_buff*** %36, align 8
  store %struct.sk_buff** %37, %struct.sk_buff*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %66, %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TX_RING_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = load %struct.TxFD*, %struct.TxFD** %4, align 8
  %49 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %57 = call i32 @pci_unmap_single(%struct.pci_dev* %47, i32 %51, i32 %55, i32 %56)
  %58 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = call i32 @dev_kfree_skb(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %46, %42
  %62 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %62, i32 1
  store %struct.sk_buff** %63, %struct.sk_buff*** %6, align 8
  %64 = load %struct.TxFD*, %struct.TxFD** %4, align 8
  %65 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %64, i32 1
  store %struct.TxFD* %65, %struct.TxFD** %4, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %38

69:                                               ; preds = %38
  %70 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %2, align 8
  %71 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %70, i32 0, i32 0
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  store %struct.sk_buff** %72, %struct.sk_buff*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %99, %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @RX_RING_SIZE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = load %struct.RxFD*, %struct.RxFD** %5, align 8
  %84 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = load i32, i32* @HDLC_MAX_MRU, align 4
  %88 = call i32 @RX_MAX(i32 %87)
  %89 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %90 = call i32 @pci_unmap_single(%struct.pci_dev* %82, i32 %86, i32 %88, i32 %89)
  %91 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %91, align 8
  %93 = call i32 @dev_kfree_skb(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %81, %77
  %95 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %95, i32 1
  store %struct.sk_buff** %96, %struct.sk_buff*** %6, align 8
  %97 = load %struct.RxFD*, %struct.RxFD** %5, align 8
  %98 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %97, i32 1
  store %struct.RxFD* %98, %struct.RxFD** %5, align 8
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %73

102:                                              ; preds = %73
  ret void
}

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, %struct.TxFD*, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @RX_MAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
