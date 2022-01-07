; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ofldtxq_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ofldtxq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_ofld_txq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fw_wr_hdr = type { i32 }

@FW_WR_EQUEQ = common dso_local global i32 0, align 4
@FW_WR_EQUIQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_ofld_txq*, %struct.sk_buff*)* @ofldtxq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofldtxq_stop(%struct.sge_ofld_txq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sge_ofld_txq*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fw_wr_hdr*, align 8
  store %struct.sge_ofld_txq* %0, %struct.sge_ofld_txq** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fw_wr_hdr*
  store %struct.fw_wr_hdr* %9, %struct.fw_wr_hdr** %5, align 8
  %10 = load i32, i32* @FW_WR_EQUEQ, align 4
  %11 = load i32, i32* @FW_WR_EQUIQ, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @htonl(i32 %12)
  %14 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.fw_wr_hdr, %struct.fw_wr_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %3, align 8
  %19 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %3, align 8
  %24 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  ret void
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
