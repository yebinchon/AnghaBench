; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_free_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_free_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, i32**, i32, i32, %struct.ipg_rx* }
%struct.ipg_rx = type { i32 }

@IPG_RFDLIST_LENGTH = common dso_local global i32 0, align 4
@IPG_RFI_FRAGLEN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipg_nic_rx_free_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_nic_rx_free_skb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipg_nic_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipg_rx*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ipg_nic_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ipg_nic_private* %7, %struct.ipg_nic_private** %3, align 8
  %8 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %9 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IPG_RFDLIST_LENGTH, align 4
  %12 = urem i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %14 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %1
  %22 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %23 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %22, i32 0, i32 4
  %24 = load %struct.ipg_rx*, %struct.ipg_rx** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %24, i64 %26
  store %struct.ipg_rx* %27, %struct.ipg_rx** %5, align 8
  %28 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %29 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ipg_rx*, %struct.ipg_rx** %5, align 8
  %32 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le64_to_cpu(i32 %33)
  %35 = load i32, i32* @IPG_RFI_FRAGLEN, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %39 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %42 = call i32 @pci_unmap_single(i32 %30, i32 %37, i32 %40, i32 %41)
  %43 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %44 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dev_kfree_skb_irq(i32* %49)
  %51 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %52 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.ipg_nic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
