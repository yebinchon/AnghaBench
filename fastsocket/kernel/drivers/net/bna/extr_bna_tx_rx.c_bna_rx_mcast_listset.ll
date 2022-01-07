; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mcast_listset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mcast_listset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.TYPE_4__*, %struct.bna_rxf }
%struct.TYPE_4__ = type { i32 }
%struct.bna_rxf = type { void (%struct.bnad*, %struct.bna_rx.0*)*, %struct.TYPE_6__*, i32, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.bnad = type opaque
%struct.bna_rx.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.list_head = type { i32 }
%struct.bnad.1 = type opaque
%struct.bna_mac = type { %struct.list_head, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@RXF_E_CONFIG = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@BNA_CB_MCAST_LIST_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bna_rx_mcast_listset(%struct.bna_rx* %0, i32 %1, i32* %2, void (%struct.bnad.1*, %struct.bna_rx*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bna_rx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca void (%struct.bnad.1*, %struct.bna_rx*)*, align 8
  %10 = alloca %struct.bna_rxf*, align 8
  %11 = alloca %struct.list_head, align 4
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bna_mac*, align 8
  %15 = alloca i32, align 4
  store %struct.bna_rx* %0, %struct.bna_rx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store void (%struct.bnad.1*, %struct.bna_rx*)* %3, void (%struct.bnad.1*, %struct.bna_rx*)** %9, align 8
  %16 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %17 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %16, i32 0, i32 1
  store %struct.bna_rxf* %17, %struct.bna_rxf** %10, align 8
  %18 = call i32 @INIT_LIST_HEAD(%struct.list_head* %11)
  store i32 0, i32* %15, align 4
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %13, align 8
  br label %20

20:                                               ; preds = %52, %4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call %struct.bna_mac* @bna_mcam_mod_mac_get(i32* %30)
  store %struct.bna_mac* %31, %struct.bna_mac** %14, align 8
  %32 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %33 = icmp eq %struct.bna_mac* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %132

35:                                               ; preds = %24
  %36 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %37 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %36, i32 0, i32 0
  %38 = call i32 @bfa_q_qe_init(%struct.list_head* %37)
  %39 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %40 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i32 %41, i32* %42, i32 %43)
  %45 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %46 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(%struct.list_head* %46, %struct.list_head* %11)
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %13, align 8
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %20

55:                                               ; preds = %20
  br label %56

56:                                               ; preds = %62, %55
  %57 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %58 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %57, i32 0, i32 3
  %59 = call i32 @list_empty(%struct.list_head* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %64 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %63, i32 0, i32 3
  %65 = call i32 @bfa_q_deq(%struct.list_head* %64, %struct.list_head** %12)
  %66 = load %struct.list_head*, %struct.list_head** %12, align 8
  %67 = call i32 @bfa_q_qe_init(%struct.list_head* %66)
  %68 = load %struct.list_head*, %struct.list_head** %12, align 8
  %69 = bitcast %struct.list_head* %68 to %struct.bna_mac*
  store %struct.bna_mac* %69, %struct.bna_mac** %14, align 8
  %70 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %71 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %77 = call i32 @bna_mcam_mod_mac_put(i32* %75, %struct.bna_mac* %76)
  br label %56

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %85, %78
  %80 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %81 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %80, i32 0, i32 5
  %82 = call i32 @list_empty(%struct.list_head* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %87 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %86, i32 0, i32 5
  %88 = call i32 @bfa_q_deq(%struct.list_head* %87, %struct.list_head** %12)
  %89 = load %struct.list_head*, %struct.list_head** %12, align 8
  %90 = bitcast %struct.list_head* %89 to %struct.bna_mac*
  store %struct.bna_mac* %90, %struct.bna_mac** %14, align 8
  %91 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %92 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %91, i32 0, i32 0
  %93 = call i32 @bfa_q_qe_init(%struct.list_head* %92)
  %94 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %95 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %94, i32 0, i32 0
  %96 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %97 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %96, i32 0, i32 4
  %98 = call i32 @list_add_tail(%struct.list_head* %95, %struct.list_head* %97)
  br label %79

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %104, %99
  %101 = call i32 @list_empty(%struct.list_head* %11)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = call i32 @bfa_q_deq(%struct.list_head* %11, %struct.list_head** %12)
  %106 = load %struct.list_head*, %struct.list_head** %12, align 8
  %107 = bitcast %struct.list_head* %106 to %struct.bna_mac*
  store %struct.bna_mac* %107, %struct.bna_mac** %14, align 8
  %108 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %109 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %108, i32 0, i32 0
  %110 = call i32 @bfa_q_qe_init(%struct.list_head* %109)
  %111 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %112 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %111, i32 0, i32 0
  %113 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %114 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %113, i32 0, i32 3
  %115 = call i32 @list_add_tail(%struct.list_head* %112, %struct.list_head* %114)
  br label %100

116:                                              ; preds = %100
  %117 = load void (%struct.bnad.1*, %struct.bna_rx*)*, void (%struct.bnad.1*, %struct.bna_rx*)** %9, align 8
  %118 = bitcast void (%struct.bnad.1*, %struct.bna_rx*)* %117 to void (%struct.bnad*, %struct.bna_rx.0*)*
  %119 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %120 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %119, i32 0, i32 0
  store void (%struct.bnad*, %struct.bna_rx.0*)* %118, void (%struct.bnad*, %struct.bna_rx.0*)** %120, align 8
  %121 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %122 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %127 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %129 = load i32, i32* @RXF_E_CONFIG, align 4
  %130 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %128, i32 %129)
  %131 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %131, i32* %5, align 4
  br label %154

132:                                              ; preds = %34
  br label %133

133:                                              ; preds = %137, %132
  %134 = call i32 @list_empty(%struct.list_head* %11)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = call i32 @bfa_q_deq(%struct.list_head* %11, %struct.list_head** %12)
  %139 = load %struct.list_head*, %struct.list_head** %12, align 8
  %140 = bitcast %struct.list_head* %139 to %struct.bna_mac*
  store %struct.bna_mac* %140, %struct.bna_mac** %14, align 8
  %141 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %142 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %141, i32 0, i32 0
  %143 = call i32 @bfa_q_qe_init(%struct.list_head* %142)
  %144 = load %struct.bna_rxf*, %struct.bna_rxf** %10, align 8
  %145 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load %struct.bna_mac*, %struct.bna_mac** %14, align 8
  %151 = call i32 @bna_mcam_mod_mac_put(i32* %149, %struct.bna_mac* %150)
  br label %133

152:                                              ; preds = %133
  %153 = load i32, i32* @BNA_CB_MCAST_LIST_FULL, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %116
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.bna_mac* @bna_mcam_mod_mac_get(i32*) #1

declare dso_local i32 @bfa_q_qe_init(%struct.list_head*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @bfa_q_deq(%struct.list_head*, %struct.list_head**) #1

declare dso_local i32 @bna_mcam_mod_mac_put(i32*, %struct.bna_mac*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
