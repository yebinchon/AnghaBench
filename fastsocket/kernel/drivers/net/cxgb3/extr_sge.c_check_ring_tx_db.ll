; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_check_ring_tx_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_check_ring_tx_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32, i32 }

@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@F_SELEGRCNTX = common dso_local global i32 0, align 4
@TXQ_LAST_PKT_DB = common dso_local global i32 0, align 4
@TXQ_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*)* @check_ring_tx_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ring_tx_db(%struct.adapter* %0, %struct.sge_txq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %4, align 8
  %5 = call i32 (...) @wmb()
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = load i32, i32* @A_SG_KDOORBELL, align 4
  %8 = load i32, i32* @F_SELEGRCNTX, align 4
  %9 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %10 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @V_EGRCNTX(i32 %11)
  %13 = or i32 %8, %12
  %14 = call i32 @t3_write_reg(%struct.adapter* %6, i32 %7, i32 %13)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
