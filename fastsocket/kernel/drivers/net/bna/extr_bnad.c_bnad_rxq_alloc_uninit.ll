; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_alloc_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_alloc_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_rcb = type { %struct.bnad_rx_unmap_q* }
%struct.bnad_rx_unmap_q = type { i32, i32, i32, i64 }

@BNAD_RXBUF_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_rcb*)* @bnad_rxq_alloc_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_rxq_alloc_uninit(%struct.bnad* %0, %struct.bna_rcb* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rcb*, align 8
  %5 = alloca %struct.bnad_rx_unmap_q*, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %4, align 8
  %6 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %7 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %6, i32 0, i32 0
  %8 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %7, align 8
  store %struct.bnad_rx_unmap_q* %8, %struct.bnad_rx_unmap_q** %5, align 8
  %9 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %10 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %12 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %11, i32 0, i32 1
  store i32 -1, i32* %12, align 4
  %13 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %14 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @BNAD_RXBUF_NONE, align 4
  %16 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %17 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
