; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_mac_drv_clear_txd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_mac_drv_clear_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.s_smt_tx_queue** }
%struct.s_smt_tx_queue = type { i32, i64, %struct.s_smt_fp_txd* }
%struct.s_smt_fp_txd = type { %struct.s_smt_fp_txd*, i32 }
%union.s_fp_descr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"THcB\00", align 1
@QUEUE_S = common dso_local global i32 0, align 4
@QUEUE_A0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"clear_txd: QUEUE = %d (0=sync/1=async)\00", align 1
@DDI_DMA_SYNC_FORCPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"check OWN/EOF bit of TxD 0x%x\00", align 1
@BMU_OWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"End of TxDs queue %d\00", align 1
@BMU_EOF = common dso_local global i32 0, align 4
@DMA_RD = common dso_local global i32 0, align 4
@BMU_SMT_TX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"mac_drv_tx_comp for TxD 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"THcE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @mac_drv_clear_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_drv_clear_txd(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_smt_tx_queue*, align 8
  %4 = alloca %struct.s_smt_fp_txd*, align 8
  %5 = alloca %struct.s_smt_fp_txd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  store %struct.s_smt_fp_txd* null, %struct.s_smt_fp_txd** %5, align 8
  %11 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %12 = load i32, i32* @QUEUE_S, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %131, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @QUEUE_A0, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %134

17:                                               ; preds = %13
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.s_smt_tx_queue**, %struct.s_smt_tx_queue*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %22, i64 %24
  %26 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %25, align 8
  store %struct.s_smt_tx_queue* %26, %struct.s_smt_tx_queue** %3, align 8
  %27 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %3, align 8
  %28 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %27, i32 0, i32 2
  %29 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %28, align 8
  store %struct.s_smt_fp_txd* %29, %struct.s_smt_fp_txd** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, ...) @DB_TX(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 0, i32 5)
  br label %32

32:                                               ; preds = %115, %17
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %62, %32
  %34 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %35 = load i32, i32* @DDI_DMA_SYNC_FORCPU, align 4
  %36 = call i32 @DRV_BUF_FLUSH(%struct.s_smt_fp_txd* %34, i32 %35)
  %37 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %38 = call i32 (i8*, ...) @DB_TX(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.s_smt_fp_txd* %37, i32 0, i32 5)
  %39 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %40 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %39, i32 0, i32 1
  %41 = load volatile i32, i32* %40, align 8
  %42 = call i32 @CR_READ(i32 %41)
  %43 = call i32 @le32_to_cpu(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BMU_OWN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %33
  %49 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %3, align 8
  %50 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48, %33
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @DB_TX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 0, i32 4)
  br label %130

56:                                               ; preds = %48
  %57 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %58 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %57, i32 0, i32 0
  %59 = load volatile %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %58, align 8
  store %struct.s_smt_fp_txd* %59, %struct.s_smt_fp_txd** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @BMU_EOF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %33, label %68

68:                                               ; preds = %62
  %69 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %3, align 8
  %70 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %69, i32 0, i32 2
  %71 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %70, align 8
  store %struct.s_smt_fp_txd* %71, %struct.s_smt_fp_txd** %4, align 8
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %95, %68
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %78 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %77, i32 0, i32 1
  %79 = load volatile i32, i32* %78, align 8
  %80 = call i32 @le32_to_cpu(i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %82 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %83 = bitcast %struct.s_smt_fp_txd* %82 to %union.s_fp_descr*
  %84 = load i32, i32* @DMA_RD, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @BMU_SMT_TX, align 4
  %87 = and i32 %85, %86
  %88 = ashr i32 %87, 18
  %89 = or i32 %84, %88
  %90 = call i32 @dma_complete(%struct.s_smc* %81, %union.s_fp_descr* %83, i32 %89)
  %91 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  store %struct.s_smt_fp_txd* %91, %struct.s_smt_fp_txd** %5, align 8
  %92 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %93 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %92, i32 0, i32 0
  %94 = load volatile %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %93, align 8
  store %struct.s_smt_fp_txd* %94, %struct.s_smt_fp_txd** %4, align 8
  br label %95

95:                                               ; preds = %76
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %10, align 4
  br label %73

98:                                               ; preds = %73
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @BMU_SMT_TX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %105 = call i32* @get_txd_mb(%struct.s_smc* %104)
  store i32* %105, i32** %6, align 8
  %106 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @smt_free_mbuf(%struct.s_smc* %106, i32* %107)
  br label %115

109:                                              ; preds = %98
  %110 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %5, align 8
  %111 = call i32 (i8*, ...) @DB_TX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.s_smt_fp_txd* %110, i32 0, i32 4)
  %112 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %113 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %5, align 8
  %114 = call i32 @mac_drv_tx_complete(%struct.s_smc* %112, %struct.s_smt_fp_txd* %113)
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %117 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %3, align 8
  %118 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %117, i32 0, i32 2
  store %struct.s_smt_fp_txd* %116, %struct.s_smt_fp_txd** %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %3, align 8
  %121 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.s_smt_tx_queue*, %struct.s_smt_tx_queue** %3, align 8
  %127 = getelementptr inbounds %struct.s_smt_tx_queue, %struct.s_smt_tx_queue* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  br label %32

130:                                              ; preds = %53
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %13

134:                                              ; preds = %13
  %135 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @NDD_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @DB_TX(i8*, ...) #1

declare dso_local i32 @DRV_BUF_FLUSH(%struct.s_smt_fp_txd*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @CR_READ(i32) #1

declare dso_local i32 @dma_complete(%struct.s_smc*, %union.s_fp_descr*, i32) #1

declare dso_local i32* @get_txd_mb(%struct.s_smc*) #1

declare dso_local i32 @smt_free_mbuf(%struct.s_smc*, i32*) #1

declare dso_local i32 @mac_drv_tx_complete(%struct.s_smc*, %struct.s_smt_fp_txd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
