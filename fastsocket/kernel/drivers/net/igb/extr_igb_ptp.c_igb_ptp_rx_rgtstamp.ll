; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_rx_rgtstamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_rx_rgtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { %struct.igb_adapter* }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }
%struct.sk_buff = type { i32 }

@E1000_TSYNCRXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@E1000_RXSTMPL = common dso_local global i32 0, align 4
@E1000_RXSTMPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_rx_rgtstamp(%struct.igb_q_vector* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.igb_q_vector*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %9 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %8, i32 0, i32 0
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  store %struct.igb_adapter* %10, %struct.igb_adapter** %5, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 0
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %14 = call i32 @rd32(i32 %13)
  %15 = load i32, i32* @E1000_TSYNCRXCTL_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @E1000_RXSTMPL, align 4
  %21 = call i32 @rd32(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @E1000_RXSTMPH, align 4
  %23 = call i32 @rd32(i32 %22)
  %24 = shl i32 %23, 32
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @skb_hwtstamps(%struct.sk_buff* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %27, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter*, i32, i32) #1

declare dso_local i32 @skb_hwtstamps(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
