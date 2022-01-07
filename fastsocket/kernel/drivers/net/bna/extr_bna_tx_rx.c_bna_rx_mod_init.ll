; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mod_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rx_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx_mod = type { i64, i32, %struct.bna_rxq*, i64, i32, %struct.bna_rxp*, i64, i32, %struct.bna_rx*, i32, i64, %struct.bna* }
%struct.bna_rxq = type { i32 }
%struct.bna_rxp = type { i32 }
%struct.bna_rx = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.bna = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@BNA_MOD_RES_MEM_T_RX_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_RXP_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_RXQ_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_rx_mod_init(%struct.bna_rx_mod* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_rx_mod*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bna_rx*, align 8
  %9 = alloca %struct.bna_rxp*, align 8
  %10 = alloca %struct.bna_rxq*, align 8
  store %struct.bna_rx_mod* %0, %struct.bna_rx_mod** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %11 = load %struct.bna*, %struct.bna** %5, align 8
  %12 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %13 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %12, i32 0, i32 11
  store %struct.bna* %11, %struct.bna** %13, align 8
  %14 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %15 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %17 = load i64, i64* @BNA_MOD_RES_MEM_T_RX_ARRAY, align 8
  %18 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %16, i64 %17
  %19 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.bna_rx*
  %27 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %28 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %27, i32 0, i32 8
  store %struct.bna_rx* %26, %struct.bna_rx** %28, align 8
  %29 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %30 = load i64, i64* @BNA_MOD_RES_MEM_T_RXP_ARRAY, align 8
  %31 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %29, i64 %30
  %32 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.bna_rxp*
  %40 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %41 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %40, i32 0, i32 5
  store %struct.bna_rxp* %39, %struct.bna_rxp** %41, align 8
  %42 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %43 = load i64, i64* @BNA_MOD_RES_MEM_T_RXQ_ARRAY, align 8
  %44 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %42, i64 %43
  %45 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.bna_rxq*
  %53 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %54 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %53, i32 0, i32 2
  store %struct.bna_rxq* %52, %struct.bna_rxq** %54, align 8
  %55 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %56 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %55, i32 0, i32 7
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %59 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %61 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %64 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %66 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %65, i32 0, i32 4
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %69 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %71 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %70, i32 0, i32 9
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %112, %3
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.bna*, %struct.bna** %5, align 8
  %76 = getelementptr inbounds %struct.bna, %struct.bna* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %73
  %82 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %83 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %82, i32 0, i32 8
  %84 = load %struct.bna_rx*, %struct.bna_rx** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %84, i64 %86
  store %struct.bna_rx* %87, %struct.bna_rx** %8, align 8
  %88 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %89 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %88, i32 0, i32 1
  %90 = call i32 @bfa_q_qe_init(i32* %89)
  %91 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %92 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %91, i32 0, i32 5
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %95 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %94, i32 0, i32 4
  store i32* null, i32** %95, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %98 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %100 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %99, i32 0, i32 3
  store i32* null, i32** %100, align 8
  %101 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %102 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %104 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %103, i32 0, i32 1
  %105 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %106 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %105, i32 0, i32 7
  %107 = call i32 @list_add_tail(i32* %104, i32* %106)
  %108 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %109 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %81
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %73

115:                                              ; preds = %73
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %143, %115
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.bna*, %struct.bna** %5, align 8
  %119 = getelementptr inbounds %struct.bna, %struct.bna* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %117, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %116
  %125 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %126 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %125, i32 0, i32 5
  %127 = load %struct.bna_rxp*, %struct.bna_rxp** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %127, i64 %129
  store %struct.bna_rxp* %130, %struct.bna_rxp** %9, align 8
  %131 = load %struct.bna_rxp*, %struct.bna_rxp** %9, align 8
  %132 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %131, i32 0, i32 0
  %133 = call i32 @bfa_q_qe_init(i32* %132)
  %134 = load %struct.bna_rxp*, %struct.bna_rxp** %9, align 8
  %135 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %134, i32 0, i32 0
  %136 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %137 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %136, i32 0, i32 4
  %138 = call i32 @list_add_tail(i32* %135, i32* %137)
  %139 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %140 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %116

146:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %175, %146
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.bna*, %struct.bna** %5, align 8
  %150 = getelementptr inbounds %struct.bna, %struct.bna* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %153, 2
  %155 = icmp slt i32 %148, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %147
  %157 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %158 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %157, i32 0, i32 2
  %159 = load %struct.bna_rxq*, %struct.bna_rxq** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %159, i64 %161
  store %struct.bna_rxq* %162, %struct.bna_rxq** %10, align 8
  %163 = load %struct.bna_rxq*, %struct.bna_rxq** %10, align 8
  %164 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %163, i32 0, i32 0
  %165 = call i32 @bfa_q_qe_init(i32* %164)
  %166 = load %struct.bna_rxq*, %struct.bna_rxq** %10, align 8
  %167 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %166, i32 0, i32 0
  %168 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %169 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %168, i32 0, i32 1
  %170 = call i32 @list_add_tail(i32* %167, i32* %169)
  %171 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %172 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %156
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %147

178:                                              ; preds = %147
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
