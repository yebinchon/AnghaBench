; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i8* }
%struct.dscc4_dev_priv = type { i32, i32, i32, %struct.TxFD*, %struct.sk_buff**, %struct.dscc4_pci_priv* }
%struct.TxFD = type { i32, i32, i8*, i32 }
%struct.dscc4_pci_priv = type { i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@FrameEnd = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Xmit\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @dscc4_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscc4_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dscc4_dev_priv*, align 8
  %6 = alloca %struct.dscc4_pci_priv*, align 8
  %7 = alloca %struct.TxFD*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device* %9)
  store %struct.dscc4_dev_priv* %10, %struct.dscc4_dev_priv** %5, align 8
  %11 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %12 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %11, i32 0, i32 5
  %13 = load %struct.dscc4_pci_priv*, %struct.dscc4_pci_priv** %12, align 8
  store %struct.dscc4_pci_priv* %13, %struct.dscc4_pci_priv** %6, align 8
  %14 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %15 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TX_RING_SIZE, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %21 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %20, i32 0, i32 4
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %24
  store %struct.sk_buff* %19, %struct.sk_buff** %25, align 8
  %26 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %27 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %26, i32 0, i32 3
  %28 = load %struct.TxFD*, %struct.TxFD** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %28, i64 %30
  store %struct.TxFD* %31, %struct.TxFD** %7, align 8
  %32 = load i32, i32* @FrameEnd, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @TO_STATE_TX(i32 %35)
  %37 = or i32 %32, %36
  %38 = load %struct.TxFD*, %struct.TxFD** %7, align 8
  %39 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dscc4_pci_priv*, %struct.dscc4_pci_priv** %6, align 8
  %41 = getelementptr inbounds %struct.dscc4_pci_priv, %struct.dscc4_pci_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %50 = call i32 @pci_map_single(i32 %42, i32 %45, i32 %48, i32 %49)
  %51 = call i32 @cpu_to_le32(i32 %50)
  %52 = load %struct.TxFD*, %struct.TxFD** %7, align 8
  %53 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TxFD*, %struct.TxFD** %7, align 8
  %55 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load i8*, i8** @jiffies, align 8
  %57 = load %struct.TxFD*, %struct.TxFD** %7, align 8
  %58 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = call i32 (...) @mb()
  %60 = load i8*, i8** @jiffies, align 8
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @debug, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %69

65:                                               ; preds = %2
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %68 = call i32 @dscc4_tx_print(%struct.net_device* %66, %struct.dscc4_dev_priv* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %2
  %70 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %71 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %75 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = load i32, i32* @TX_RING_SIZE, align 4
  %79 = srem i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %69
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @netif_stop_queue(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %81, %69
  %85 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i64 @dscc4_tx_quiescent(%struct.dscc4_dev_priv* %85, %struct.net_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %5, align 8
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @dscc4_do_tx(%struct.dscc4_dev_priv* %90, %struct.net_device* %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %94
}

declare dso_local %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device*) #1

declare dso_local i32 @TO_STATE_TX(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @dscc4_tx_print(%struct.net_device*, %struct.dscc4_dev_priv*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @dscc4_tx_quiescent(%struct.dscc4_dev_priv*, %struct.net_device*) #1

declare dso_local i32 @dscc4_do_tx(%struct.dscc4_dev_priv*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
