; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_remove_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_remove_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ath_rx_edma* }
%struct.ath_rx_edma = type { i32 }
%struct.ath_buf = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32)* @ath_rx_remove_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rx_remove_buffer(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_buf*, align 8
  %6 = alloca %struct.ath_rx_edma*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %11, i64 %13
  store %struct.ath_rx_edma* %14, %struct.ath_rx_edma** %6, align 8
  br label %15

15:                                               ; preds = %20, %2
  %16 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %6, align 8
  %17 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %16, i32 0, i32 0
  %18 = call %struct.sk_buff* @__skb_dequeue(i32* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %7, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.ath_buf* @SKB_CB_ATHBUF(%struct.sk_buff* %21)
  store %struct.ath_buf* %22, %struct.ath_buf** %5, align 8
  %23 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %24 = icmp ne %struct.ath_buf* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %29 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %28, i32 0, i32 0
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %29, i32* %32)
  br label %15

34:                                               ; preds = %15
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.ath_buf* @SKB_CB_ATHBUF(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
