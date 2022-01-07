; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxp_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx_mod = type { i32, i32 }
%struct.bna_rxp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rx_mod*, %struct.bna_rxp*)* @bna_rxp_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxp_put(%struct.bna_rx_mod* %0, %struct.bna_rxp* %1) #0 {
  %3 = alloca %struct.bna_rx_mod*, align 8
  %4 = alloca %struct.bna_rxp*, align 8
  store %struct.bna_rx_mod* %0, %struct.bna_rx_mod** %3, align 8
  store %struct.bna_rxp* %1, %struct.bna_rxp** %4, align 8
  %5 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %6 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %5, i32 0, i32 0
  %7 = call i32 @bfa_q_qe_init(i32* %6)
  %8 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %9 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %8, i32 0, i32 0
  %10 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %3, align 8
  %11 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %10, i32 0, i32 1
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %3, align 8
  %14 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
