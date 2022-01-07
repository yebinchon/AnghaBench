; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_eth_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_eth_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.fnic = type { i32*, i32, i32, i32, %struct.vnic_wq* }
%struct.vnic_wq = type { i32 }
%struct.ethhdr = type { i32 }
%struct.vlan_ethhdr = type { i8*, i32, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_eth_send(%struct.fcoe_ctlr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fnic*, align 8
  %6 = alloca %struct.vnic_wq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca %struct.vlan_ethhdr*, align 8
  %10 = alloca i64, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %12 = call %struct.fnic* @fnic_from_ctlr(%struct.fcoe_ctlr* %11)
  store %struct.fnic* %12, %struct.fnic** %5, align 8
  %13 = load %struct.fnic*, %struct.fnic** %5, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 4
  %15 = load %struct.vnic_wq*, %struct.vnic_wq** %14, align 8
  %16 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %15, i64 0
  store %struct.vnic_wq* %16, %struct.vnic_wq** %6, align 8
  %17 = load %struct.fnic*, %struct.fnic** %5, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @skb_mac_header(%struct.sk_buff* %22)
  %24 = inttoptr i64 %23 to %struct.ethhdr*
  store %struct.ethhdr* %24, %struct.ethhdr** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @skb_push(%struct.sk_buff* %25, i32 20)
  %27 = inttoptr i64 %26 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %27, %struct.vlan_ethhdr** %9, align 8
  %28 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %9, align 8
  %29 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = mul nsw i32 2, %30
  %32 = call i32 @memcpy(%struct.vlan_ethhdr* %28, %struct.ethhdr* %29, i32 %31)
  %33 = load i32, i32* @ETH_P_8021Q, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %9, align 8
  %36 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %9, align 8
  %41 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fnic*, %struct.fnic** %5, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @htons(i32 %44)
  %46 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %9, align 8
  %47 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %21, %2
  %49 = load %struct.fnic*, %struct.fnic** %5, align 8
  %50 = getelementptr inbounds %struct.fnic, %struct.fnic* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %59 = call i32 @pci_map_single(i32 %51, i32 %54, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.fnic*, %struct.fnic** %5, align 8
  %61 = getelementptr inbounds %struct.fnic, %struct.fnic* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.vnic_wq*, %struct.vnic_wq** %6, align 8
  %67 = call i32 @vnic_wq_desc_avail(%struct.vnic_wq* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %48
  %70 = load %struct.fnic*, %struct.fnic** %5, align 8
  %71 = getelementptr inbounds %struct.fnic, %struct.fnic* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %78 = call i32 @pci_unmap_single(i32 %72, i32 %73, i32 %76, i32 %77)
  %79 = load %struct.fnic*, %struct.fnic** %5, align 8
  %80 = getelementptr inbounds %struct.fnic, %struct.fnic* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %104

87:                                               ; preds = %48
  %88 = load %struct.vnic_wq*, %struct.vnic_wq** %6, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fnic*, %struct.fnic** %5, align 8
  %95 = getelementptr inbounds %struct.fnic, %struct.fnic* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @fnic_queue_wq_eth_desc(%struct.vnic_wq* %88, %struct.sk_buff* %89, i32 %90, i32 %93, i32 0, i32 %96, i32 1)
  %98 = load %struct.fnic*, %struct.fnic** %5, align 8
  %99 = getelementptr inbounds %struct.fnic, %struct.fnic* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %87, %69
  ret void
}

declare dso_local %struct.fnic* @fnic_from_ctlr(%struct.fcoe_ctlr*) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.vlan_ethhdr*, %struct.ethhdr*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vnic_wq_desc_avail(%struct.vnic_wq*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @fnic_queue_wq_eth_desc(%struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
