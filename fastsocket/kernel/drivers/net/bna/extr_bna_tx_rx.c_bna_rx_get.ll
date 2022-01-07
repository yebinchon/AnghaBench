; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { i32, i32 }
%struct.bna_rx_mod = type { i32, i32, i32 }
%struct.list_head = type { i32 }

@BNA_RX_T_REGULAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bna_rx* (%struct.bna_rx_mod*, i32)* @bna_rx_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bna_rx* @bna_rx_get(%struct.bna_rx_mod* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rx_mod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.bna_rx*, align 8
  store %struct.bna_rx_mod* %0, %struct.bna_rx_mod** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.list_head* null, %struct.list_head** %5, align 8
  store %struct.bna_rx* null, %struct.bna_rx** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BNA_RX_T_REGULAR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %3, align 8
  %12 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %11, i32 0, i32 2
  %13 = call i32 @bfa_q_deq(i32* %12, %struct.list_head** %5)
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %3, align 8
  %16 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %15, i32 0, i32 2
  %17 = call i32 @bfa_q_deq_tail(i32* %16, %struct.list_head** %5)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %3, align 8
  %20 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.list_head*, %struct.list_head** %5, align 8
  %24 = bitcast %struct.list_head* %23 to %struct.bna_rx*
  store %struct.bna_rx* %24, %struct.bna_rx** %6, align 8
  %25 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %26 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %25, i32 0, i32 1
  %27 = call i32 @bfa_q_qe_init(i32* %26)
  %28 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %29 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %28, i32 0, i32 1
  %30 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %3, align 8
  %31 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %35 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  ret %struct.bna_rx* %36
}

declare dso_local i32 @bfa_q_deq(i32*, %struct.list_head**) #1

declare dso_local i32 @bfa_q_deq_tail(i32*, %struct.list_head**) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
