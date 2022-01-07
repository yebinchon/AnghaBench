; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_tx_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_tx_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32*, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@E1000_TXSTMPL = common dso_local global i32 0, align 4
@E1000_TXSTMPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_tx_hwtstamp(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.skb_shared_hwtstamps, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 1
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @E1000_TXSTMPL, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @E1000_TXSTMPH, align 4
  %11 = call i32 @rd32(i32 %10)
  %12 = shl i32 %11, 32
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %15, %struct.skb_shared_hwtstamps* %4, i32 %16)
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @skb_tstamp_tx(i32* %20, %struct.skb_shared_hwtstamps* %4)
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dev_kfree_skb_any(i32* %24)
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter*, %struct.skb_shared_hwtstamps*, i32) #1

declare dso_local i32 @skb_tstamp_tx(i32*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
