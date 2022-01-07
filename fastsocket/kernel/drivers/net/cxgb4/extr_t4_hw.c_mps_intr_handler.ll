; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_mps_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_mps_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32 }
%struct.adapter = type { i32 }

@mps_intr_handler.mps_rx_intr_info = internal constant [2 x %struct.intr_info] [%struct.intr_info { i32 16777215, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [20 x i8] c"MPS Rx parity error\00", align 1
@mps_intr_handler.mps_tx_intr_info = internal constant [8 x %struct.intr_info] [%struct.intr_info { i32 130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [28 x i8] c"MPS Tx TP FIFO parity error\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"MPS Tx NC-SI FIFO parity error\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"MPS Tx data FIFO parity error\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"MPS Tx desc FIFO parity error\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"MPS Tx underflow\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"MPS Tx SOP/EOP error\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"MPS Tx framing error\00", align 1
@mps_intr_handler.mps_trc_intr_info = internal constant [4 x %struct.intr_info] [%struct.intr_info { i32 139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [28 x i8] c"MPS TRC filter parity error\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"MPS TRC packet FIFO parity error\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"MPS TRC misc parity error\00", align 1
@mps_intr_handler.mps_stat_sram_intr_info = internal constant [2 x %struct.intr_info] [%struct.intr_info { i32 2097151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [33 x i8] c"MPS statistics SRAM parity error\00", align 1
@mps_intr_handler.mps_stat_tx_intr_info = internal constant [2 x %struct.intr_info] [%struct.intr_info { i32 1048575, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [36 x i8] c"MPS statistics Tx FIFO parity error\00", align 1
@mps_intr_handler.mps_stat_rx_intr_info = internal constant [2 x %struct.intr_info] [%struct.intr_info { i32 16777215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [36 x i8] c"MPS statistics Rx FIFO parity error\00", align 1
@mps_intr_handler.mps_cls_intr_info = internal constant [4 x %struct.intr_info] [%struct.intr_info { i32 136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [28 x i8] c"MPS match SRAM parity error\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"MPS match TCAM parity error\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"MPS hash SRAM parity error\00", align 1
@MPS_RX_PERR_INT_CAUSE = common dso_local global i32 0, align 4
@MPS_TX_INT_CAUSE = common dso_local global i32 0, align 4
@MPS_TRC_INT_CAUSE = common dso_local global i32 0, align 4
@MPS_STAT_PERR_INT_CAUSE_SRAM = common dso_local global i32 0, align 4
@MPS_STAT_PERR_INT_CAUSE_TX_FIFO = common dso_local global i32 0, align 4
@MPS_STAT_PERR_INT_CAUSE_RX_FIFO = common dso_local global i32 0, align 4
@MPS_CLS_INT_CAUSE = common dso_local global i32 0, align 4
@MPS_INT_CAUSE = common dso_local global i32 0, align 4
@CLSINT = common dso_local global i32 0, align 4
@TRCINT = common dso_local global i32 0, align 4
@RXINT = common dso_local global i32 0, align 4
@TXINT = common dso_local global i32 0, align 4
@STATINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @mps_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = load i32, i32* @MPS_RX_PERR_INT_CAUSE, align 4
  %6 = call i32 @t4_handle_intr_status(%struct.adapter* %4, i32 %5, %struct.intr_info* getelementptr inbounds ([2 x %struct.intr_info], [2 x %struct.intr_info]* @mps_intr_handler.mps_rx_intr_info, i64 0, i64 0))
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load i32, i32* @MPS_TX_INT_CAUSE, align 4
  %9 = call i32 @t4_handle_intr_status(%struct.adapter* %7, i32 %8, %struct.intr_info* getelementptr inbounds ([8 x %struct.intr_info], [8 x %struct.intr_info]* @mps_intr_handler.mps_tx_intr_info, i64 0, i64 0))
  %10 = add nsw i32 %6, %9
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* @MPS_TRC_INT_CAUSE, align 4
  %13 = call i32 @t4_handle_intr_status(%struct.adapter* %11, i32 %12, %struct.intr_info* getelementptr inbounds ([4 x %struct.intr_info], [4 x %struct.intr_info]* @mps_intr_handler.mps_trc_intr_info, i64 0, i64 0))
  %14 = add nsw i32 %10, %13
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load i32, i32* @MPS_STAT_PERR_INT_CAUSE_SRAM, align 4
  %17 = call i32 @t4_handle_intr_status(%struct.adapter* %15, i32 %16, %struct.intr_info* getelementptr inbounds ([2 x %struct.intr_info], [2 x %struct.intr_info]* @mps_intr_handler.mps_stat_sram_intr_info, i64 0, i64 0))
  %18 = add nsw i32 %14, %17
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = load i32, i32* @MPS_STAT_PERR_INT_CAUSE_TX_FIFO, align 4
  %21 = call i32 @t4_handle_intr_status(%struct.adapter* %19, i32 %20, %struct.intr_info* getelementptr inbounds ([2 x %struct.intr_info], [2 x %struct.intr_info]* @mps_intr_handler.mps_stat_tx_intr_info, i64 0, i64 0))
  %22 = add nsw i32 %18, %21
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = load i32, i32* @MPS_STAT_PERR_INT_CAUSE_RX_FIFO, align 4
  %25 = call i32 @t4_handle_intr_status(%struct.adapter* %23, i32 %24, %struct.intr_info* getelementptr inbounds ([2 x %struct.intr_info], [2 x %struct.intr_info]* @mps_intr_handler.mps_stat_rx_intr_info, i64 0, i64 0))
  %26 = add nsw i32 %22, %25
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* @MPS_CLS_INT_CAUSE, align 4
  %29 = call i32 @t4_handle_intr_status(%struct.adapter* %27, i32 %28, %struct.intr_info* getelementptr inbounds ([4 x %struct.intr_info], [4 x %struct.intr_info]* @mps_intr_handler.mps_cls_intr_info, i64 0, i64 0))
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i32, i32* @MPS_INT_CAUSE, align 4
  %33 = load i32, i32* @CLSINT, align 4
  %34 = load i32, i32* @TRCINT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RXINT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TXINT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @STATINT, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @t4_write_reg(%struct.adapter* %31, i32 %32, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = load i32, i32* @MPS_INT_CAUSE, align 4
  %45 = call i32 @t4_read_reg(%struct.adapter* %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = call i32 @t4_fatal_err(%struct.adapter* %49)
  br label %51

51:                                               ; preds = %48, %1
  ret void
}

declare dso_local i32 @t4_handle_intr_status(%struct.adapter*, i32, %struct.intr_info*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
