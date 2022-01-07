; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ctrlq_check_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ctrlq_check_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_ctrl_txq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fw_wr_hdr = type { i32 }

@TXQ_STOP_THRES = common dso_local global i64 0, align 8
@FW_WR_EQUEQ = common dso_local global i32 0, align 4
@FW_WR_EQUIQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_ctrl_txq*, %struct.fw_wr_hdr*)* @ctrlq_check_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctrlq_check_stop(%struct.sge_ctrl_txq* %0, %struct.fw_wr_hdr* %1) #0 {
  %3 = alloca %struct.sge_ctrl_txq*, align 8
  %4 = alloca %struct.fw_wr_hdr*, align 8
  store %struct.sge_ctrl_txq* %0, %struct.sge_ctrl_txq** %3, align 8
  store %struct.fw_wr_hdr* %1, %struct.fw_wr_hdr** %4, align 8
  %5 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %3, align 8
  %6 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %5, i32 0, i32 1
  %7 = call i32 @reclaim_completed_tx_imm(%struct.TYPE_3__* %6)
  %8 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %3, align 8
  %9 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %8, i32 0, i32 1
  %10 = call i64 @txq_avail(%struct.TYPE_3__* %9)
  %11 = load i64, i64* @TXQ_STOP_THRES, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @FW_WR_EQUEQ, align 4
  %18 = load i32, i32* @FW_WR_EQUIQ, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @htonl(i32 %19)
  %21 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.fw_wr_hdr, %struct.fw_wr_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %3, align 8
  %26 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %3, align 8
  %31 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @reclaim_completed_tx_imm(%struct.TYPE_3__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @txq_avail(%struct.TYPE_3__*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
