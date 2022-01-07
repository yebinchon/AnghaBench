; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32, i32 }
%union.e1000_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*)* @igb_process_skb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_process_skb_fields(%struct.igb_ring* %0, %union.e1000_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %union.e1000_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %union.e1000_adv_rx_desc* %1, %union.e1000_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %8 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i32 @igb_rx_hash(%struct.igb_ring* %7, %union.e1000_adv_rx_desc* %8, %struct.sk_buff* %9)
  %11 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %12 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @igb_rx_checksum(%struct.igb_ring* %11, %union.e1000_adv_rx_desc* %12, %struct.sk_buff* %13)
  %15 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %16 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @igb_ptp_rx_hwtstamp(%struct.igb_ring* %15, %union.e1000_adv_rx_desc* %16, %struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %21 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @skb_record_rx_queue(%struct.sk_buff* %19, i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %26 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @eth_type_trans(%struct.sk_buff* %24, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @igb_rx_hash(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @igb_rx_checksum(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @igb_ptp_rx_hwtstamp(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
