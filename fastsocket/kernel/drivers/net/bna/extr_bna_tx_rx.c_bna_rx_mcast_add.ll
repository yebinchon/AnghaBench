; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mcast_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mcast_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.TYPE_6__*, %struct.bna_rxf }
%struct.TYPE_6__ = type { %struct.bnad* }
%struct.bnad = type opaque
%struct.bna_rxf = type { void (%struct.bnad.0*, %struct.bna_rx.1*)*, %struct.bnad*, i32, %struct.TYPE_5__*, i32 }
%struct.bnad.0 = type opaque
%struct.bna_rx.1 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bna_mac = type { i32, i32 }

@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@BNA_CB_MCAST_LIST_FULL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RXF_E_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bna_rx_mcast_add(%struct.bna_rx* %0, i32* %1, void (%struct.bnad*, %struct.bna_rx*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bna_rx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca void (%struct.bnad*, %struct.bna_rx*)*, align 8
  %8 = alloca %struct.bna_rxf*, align 8
  %9 = alloca %struct.bna_mac*, align 8
  store %struct.bna_rx* %0, %struct.bna_rx** %5, align 8
  store i32* %1, i32** %6, align 8
  store void (%struct.bnad*, %struct.bna_rx*)* %2, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %10 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %11 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %10, i32 0, i32 1
  store %struct.bna_rxf* %11, %struct.bna_rxf** %8, align 8
  %12 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %13 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %12, i32 0, i32 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @bna_mac_find(i32* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %19 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %18, i32 0, i32 2
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @bna_mac_find(i32* %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %17, %3
  %24 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %25 = icmp ne void (%struct.bnad*, %struct.bna_rx*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %28 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %29 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.bnad*, %struct.bnad** %31, align 8
  %33 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  call void %27(%struct.bnad* %32, %struct.bna_rx* %33)
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %35, i32* %4, align 4
  br label %78

36:                                               ; preds = %17
  %37 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %38 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call %struct.bna_mac* @bna_mcam_mod_mac_get(i32* %42)
  store %struct.bna_mac* %43, %struct.bna_mac** %9, align 8
  %44 = load %struct.bna_mac*, %struct.bna_mac** %9, align 8
  %45 = icmp eq %struct.bna_mac* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @BNA_CB_MCAST_LIST_FULL, align 4
  store i32 %47, i32* %4, align 4
  br label %78

48:                                               ; preds = %36
  %49 = load %struct.bna_mac*, %struct.bna_mac** %9, align 8
  %50 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %49, i32 0, i32 0
  %51 = call i32 @bfa_q_qe_init(i32* %50)
  %52 = load %struct.bna_mac*, %struct.bna_mac** %9, align 8
  %53 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  %58 = load %struct.bna_mac*, %struct.bna_mac** %9, align 8
  %59 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %58, i32 0, i32 0
  %60 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %61 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %60, i32 0, i32 2
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %64 = bitcast void (%struct.bnad*, %struct.bna_rx*)* %63 to void (%struct.bnad.0*, %struct.bna_rx.1*)*
  %65 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %66 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %65, i32 0, i32 0
  store void (%struct.bnad.0*, %struct.bna_rx.1*)* %64, void (%struct.bnad.0*, %struct.bna_rx.1*)** %66, align 8
  %67 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %68 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.bnad*, %struct.bnad** %70, align 8
  %72 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %73 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %72, i32 0, i32 1
  store %struct.bnad* %71, %struct.bnad** %73, align 8
  %74 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %75 = load i32, i32* @RXF_E_CONFIG, align 4
  %76 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %74, i32 %75)
  %77 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %48, %46, %34
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @bna_mac_find(i32*, i32*) #1

declare dso_local %struct.bna_mac* @bna_mcam_mod_mac_get(i32*) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
