; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_rq_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_rq_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i32 }
%struct.enic = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_rq*)* @enic_rq_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_rq_alloc_buf(%struct.vnic_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_rq*, align 8
  %4 = alloca %struct.enic*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_rq* %0, %struct.vnic_rq** %3, align 8
  %10 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %11 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.enic* @vnic_dev_priv(i32 %12)
  store %struct.enic* %13, %struct.enic** %4, align 8
  %14 = load %struct.enic*, %struct.enic** %4, align 8
  %15 = getelementptr inbounds %struct.enic, %struct.enic* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %1
  %31 = load %struct.enic*, %struct.enic** %4, align 8
  %32 = getelementptr inbounds %struct.enic, %struct.enic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %39 = call i32 @pci_map_single(i32 %33, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @enic_queue_rq_desc(%struct.vnic_rq* %40, %struct.sk_buff* %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %30, %27
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.enic* @vnic_dev_priv(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @enic_queue_rq_desc(%struct.vnic_rq*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
