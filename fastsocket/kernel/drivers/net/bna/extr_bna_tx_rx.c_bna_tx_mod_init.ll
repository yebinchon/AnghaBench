; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_tx_mod_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_tx_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx_mod = type { i32, i32, i64, i32, i32, %struct.bna_txq*, i32, %struct.bna_tx*, i32, i64, %struct.bna* }
%struct.bna_txq = type { i32 }
%struct.bna_tx = type { i32, i32 }
%struct.bna = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@BNA_MOD_RES_MEM_T_TX_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_TXQ_ARRAY = common dso_local global i64 0, align 8
@BFI_TX_PRIO_MAP_ALL = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_tx_mod_init(%struct.bna_tx_mod* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_tx_mod*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bna_tx_mod* %0, %struct.bna_tx_mod** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %8 = load %struct.bna*, %struct.bna** %5, align 8
  %9 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %10 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %9, i32 0, i32 10
  store %struct.bna* %8, %struct.bna** %10, align 8
  %11 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %12 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %14 = load i64, i64* @BNA_MOD_RES_MEM_T_TX_ARRAY, align 8
  %15 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %13, i64 %14
  %16 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bna_tx*
  %24 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %25 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %24, i32 0, i32 7
  store %struct.bna_tx* %23, %struct.bna_tx** %25, align 8
  %26 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %27 = load i64, i64* @BNA_MOD_RES_MEM_T_TXQ_ARRAY, align 8
  %28 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %26, i64 %27
  %29 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.bna_txq*
  %37 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %38 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %37, i32 0, i32 5
  store %struct.bna_txq* %36, %struct.bna_txq** %38, align 8
  %39 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %40 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %39, i32 0, i32 6
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %43 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %42, i32 0, i32 8
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %46 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %45, i32 0, i32 4
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %101, %3
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.bna*, %struct.bna** %5, align 8
  %51 = getelementptr inbounds %struct.bna, %struct.bna* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %104

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %59 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %58, i32 0, i32 7
  %60 = load %struct.bna_tx*, %struct.bna_tx** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %60, i64 %62
  %64 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  %65 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %66 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %65, i32 0, i32 7
  %67 = load %struct.bna_tx*, %struct.bna_tx** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %67, i64 %69
  %71 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %70, i32 0, i32 1
  %72 = call i32 @bfa_q_qe_init(i32* %71)
  %73 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %74 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %73, i32 0, i32 7
  %75 = load %struct.bna_tx*, %struct.bna_tx** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %75, i64 %77
  %79 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %78, i32 0, i32 1
  %80 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %81 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %80, i32 0, i32 6
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  %83 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %84 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %83, i32 0, i32 5
  %85 = load %struct.bna_txq*, %struct.bna_txq** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %85, i64 %87
  %89 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %88, i32 0, i32 0
  %90 = call i32 @bfa_q_qe_init(i32* %89)
  %91 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %92 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %91, i32 0, i32 5
  %93 = load %struct.bna_txq*, %struct.bna_txq** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %93, i64 %95
  %97 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %96, i32 0, i32 0
  %98 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %99 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %98, i32 0, i32 4
  %100 = call i32 @list_add_tail(i32* %97, i32* %99)
  br label %101

101:                                              ; preds = %56
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %48

104:                                              ; preds = %48
  %105 = load i32, i32* @BFI_TX_PRIO_MAP_ALL, align 4
  %106 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %107 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %109 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %111 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %112 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %114 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %113, i32 0, i32 0
  store i32 -1, i32* %114, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
