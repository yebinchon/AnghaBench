; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_queue_wq_skb_csum_l4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_queue_wq_skb_csum_l4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }
%struct.vnic_wq = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32)* @enic_queue_wq_skb_csum_l4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_queue_wq_skb_csum_l4(%struct.enic* %0, %struct.vnic_wq* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.enic*, align 8
  %8 = alloca %struct.vnic_wq*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %7, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call i32 @skb_headlen(%struct.sk_buff* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %13, align 4
  %24 = sub i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call i32 @skb_transport_offset(%struct.sk_buff* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %17, align 4
  %35 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = load %struct.enic*, %struct.enic** %7, align 8
  %38 = getelementptr inbounds %struct.enic, %struct.enic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %45 = call i32 @pci_map_single(i32 %39, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @enic_queue_wq_desc_csum_l4(%struct.vnic_wq* %35, %struct.sk_buff* %36, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %6
  %57 = load %struct.enic*, %struct.enic** %7, align 8
  %58 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @enic_queue_wq_skb_cont(%struct.enic* %57, %struct.vnic_wq* %58, %struct.sk_buff* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %6
  ret void
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @enic_queue_wq_desc_csum_l4(%struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @enic_queue_wq_skb_cont(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
