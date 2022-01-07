; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_update_sge_prod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_update_sge_prod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i64, i64, i32*, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.eth_end_agg_rx_cqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@NETIF_MSG_RX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fp_cqe->sgl[%d] = %d\0A\00", align 1
@BIT_VEC64_ELEM_SHIFT = common dso_local global i64 0, align 8
@BIT_VEC64_ELEM_ONE_MASK = common dso_local global i32 0, align 4
@BIT_VEC64_ELEM_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"fp->last_max_sge = %d  fp->rx_sge_prod = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fastpath*, i64, %struct.eth_end_agg_rx_cqe*)* @bnx2x_update_sge_prod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_update_sge_prod(%struct.bnx2x_fastpath* %0, i64 %1, %struct.eth_end_agg_rx_cqe* %2) #0 {
  %4 = alloca %struct.bnx2x_fastpath*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.eth_end_agg_rx_cqe*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.eth_end_agg_rx_cqe* %2, %struct.eth_end_agg_rx_cqe** %6, align 8
  %13 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %13, i32 0, i32 3
  %15 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  store %struct.bnx2x* %15, %struct.bnx2x** %7, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %140

19:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %6, align 8
  %29 = getelementptr inbounds %struct.eth_end_agg_rx_cqe, %struct.eth_end_agg_rx_cqe* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = call i64 @RX_SGE(i64 %35)
  %37 = call i32 @BIT_VEC64_CLEAR_BIT(i32* %27, i64 %36)
  br label %38

38:                                               ; preds = %24
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %12, align 8
  br label %20

41:                                               ; preds = %20
  %42 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, 1
  %45 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %6, align 8
  %46 = getelementptr inbounds %struct.eth_end_agg_rx_cqe, %struct.eth_end_agg_rx_cqe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le16_to_cpu(i32 %52)
  %54 = call i32 @DP(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %53)
  %55 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %56 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = call i32 @prefetch(i8* %58)
  %60 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %61 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %6, align 8
  %62 = getelementptr inbounds %struct.eth_end_agg_rx_cqe, %struct.eth_end_agg_rx_cqe* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le16_to_cpu(i32 %68)
  %70 = call i32 @bnx2x_update_last_max_sge(%struct.bnx2x_fastpath* %60, i64 %69)
  %71 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %72 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @RX_SGE(i64 %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @BIT_VEC64_ELEM_SHIFT, align 8
  %77 = lshr i64 %75, %76
  store i64 %77, i64* %9, align 8
  %78 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %79 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @RX_SGE(i64 %80)
  %82 = load i64, i64* @BIT_VEC64_ELEM_SHIFT, align 8
  %83 = lshr i64 %81, %82
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %41
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %88, %41
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %117, %91
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %99 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @likely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %120

107:                                              ; preds = %97
  %108 = load i32, i32* @BIT_VEC64_ELEM_ONE_MASK, align 4
  %109 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %110 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i64, i64* @BIT_VEC64_ELEM_SZ, align 8
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %11, align 8
  br label %117

117:                                              ; preds = %107
  %118 = load i64, i64* %12, align 8
  %119 = call i64 @NEXT_SGE_MASK_ELEM(i64 %118)
  store i64 %119, i64* %12, align 8
  br label %93

120:                                              ; preds = %106, %93
  %121 = load i64, i64* %11, align 8
  %122 = icmp ugt i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %126 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %130 = call i32 @bnx2x_clear_sge_mask_next_elems(%struct.bnx2x_fastpath* %129)
  br label %131

131:                                              ; preds = %123, %120
  %132 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %133 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %134 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %137 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @DP(i32 %132, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %135, i64 %138)
  br label %140

140:                                              ; preds = %131, %18
  ret void
}

declare dso_local i32 @BIT_VEC64_CLEAR_BIT(i32*, i64) #1

declare dso_local i64 @RX_SGE(i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @DP(i32, i8*, i64, i64) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @bnx2x_update_last_max_sge(%struct.bnx2x_fastpath*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @NEXT_SGE_MASK_ELEM(i64) #1

declare dso_local i32 @bnx2x_clear_sge_mask_next_elems(%struct.bnx2x_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
