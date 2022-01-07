; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_ucast_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_ucast_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.TYPE_7__*, %struct.bna_rxf }
%struct.TYPE_7__ = type { i32 }
%struct.bna_rxf = type { i32, void (%struct.bnad*, %struct.bna_rx.0*)*, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.bnad = type opaque
%struct.bna_rx.0 = type opaque
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bnad.1 = type opaque

@BNA_CB_UCAST_CAM_FULL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RXF_E_CONFIG = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bna_rx_ucast_set(%struct.bna_rx* %0, i32* %1, void (%struct.bnad.1*, %struct.bna_rx*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bna_rx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca void (%struct.bnad.1*, %struct.bna_rx*)*, align 8
  %8 = alloca %struct.bna_rxf*, align 8
  store %struct.bna_rx* %0, %struct.bna_rx** %5, align 8
  store i32* %1, i32** %6, align 8
  store void (%struct.bnad.1*, %struct.bna_rx*)* %2, void (%struct.bnad.1*, %struct.bna_rx*)** %7, align 8
  %9 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %10 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %9, i32 0, i32 1
  store %struct.bna_rxf* %10, %struct.bna_rxf** %8, align 8
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %12 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  %16 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %17 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call %struct.TYPE_8__* @bna_ucam_mod_mac_get(i32* %21)
  %23 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %24 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %23, i32 0, i32 3
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @BNA_CB_UCAST_CAM_FULL, align 4
  store i32 %30, i32* %4, align 4
  br label %63

31:                                               ; preds = %15
  %32 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %33 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = call i32 @bfa_q_qe_init(i32* %35)
  br label %37

37:                                               ; preds = %31, %3
  %38 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %39 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(i32 %42, i32* %43, i32 %44)
  %46 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %47 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load void (%struct.bnad.1*, %struct.bna_rx*)*, void (%struct.bnad.1*, %struct.bna_rx*)** %7, align 8
  %49 = bitcast void (%struct.bnad.1*, %struct.bna_rx*)* %48 to void (%struct.bnad*, %struct.bna_rx.0*)*
  %50 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %51 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %50, i32 0, i32 1
  store void (%struct.bnad*, %struct.bna_rx.0*)* %49, void (%struct.bnad*, %struct.bna_rx.0*)** %51, align 8
  %52 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %53 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %58 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %60 = load i32, i32* @RXF_E_CONFIG, align 4
  %61 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %59, i32 %60)
  %62 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %37, %29
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_8__* @bna_ucam_mod_mac_get(i32*) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
