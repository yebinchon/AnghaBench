; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_with_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_with_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { %struct.sk_buff**, i32, i32, %struct.pci_dev*, %struct.ipg_jumbo }
%struct.sk_buff = type { i32 }
%struct.pci_dev = type { i32 }
%struct.ipg_jumbo = type { i32, %struct.sk_buff*, i32 }
%struct.ipg_rx = type { i32 }

@NORMAL_PACKET = common dso_local global i64 0, align 8
@IPG_RFI_FRAGLEN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ipg_nic_private*, %struct.ipg_rx*, i32)* @ipg_nic_rx_with_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_nic_rx_with_start(%struct.net_device* %0, %struct.ipg_nic_private* %1, %struct.ipg_rx* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipg_nic_private*, align 8
  %7 = alloca %struct.ipg_rx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipg_jumbo*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ipg_nic_private* %1, %struct.ipg_nic_private** %6, align 8
  store %struct.ipg_rx* %2, %struct.ipg_rx** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %13 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %12, i32 0, i32 4
  store %struct.ipg_jumbo* %13, %struct.ipg_jumbo** %9, align 8
  %14 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %15 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %14, i32 0, i32 3
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i64 @ipg_nic_rx_check_error(%struct.net_device* %17)
  %19 = load i64, i64* @NORMAL_PACKET, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %78

22:                                               ; preds = %4
  %23 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %24 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %23, i32 0, i32 0
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %27
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %11, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %78

33:                                               ; preds = %22
  %34 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %35 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %40 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %39, i32 0, i32 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  %42 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %45 = load %struct.ipg_rx*, %struct.ipg_rx** %7, align 8
  %46 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = load i32, i32* @IPG_RFI_FRAGLEN, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %53 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %56 = call i32 @pci_unmap_single(%struct.pci_dev* %44, i32 %51, i32 %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %59 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @skb_put(%struct.sk_buff* %57, i32 %60)
  %62 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %63 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %65 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %68 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %71 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %70, i32 0, i32 1
  store %struct.sk_buff* %69, %struct.sk_buff** %71, align 8
  %72 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %73 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %72, i32 0, i32 0
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  store %struct.sk_buff* null, %struct.sk_buff** %77, align 8
  br label %78

78:                                               ; preds = %43, %32, %21
  ret void
}

declare dso_local i64 @ipg_nic_rx_check_error(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
