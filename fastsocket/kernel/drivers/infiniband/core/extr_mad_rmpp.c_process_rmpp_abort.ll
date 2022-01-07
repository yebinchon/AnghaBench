; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_process_rmpp_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_process_rmpp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IB_MGMT_RMPP_STATUS_ABORT_MIN = common dso_local global i64 0, align 8
@IB_MGMT_RMPP_STATUS_ABORT_MAX = common dso_local global i64 0, align 8
@IB_MGMT_RMPP_STATUS_BAD_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @process_rmpp_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rmpp_abort(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_rmpp_mad*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %6 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %7 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %10, %struct.ib_rmpp_mad** %5, align 8
  %11 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %12 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IB_MGMT_RMPP_STATUS_ABORT_MIN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %19 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_MGMT_RMPP_STATUS_ABORT_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17, %2
  %25 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %26 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %27 = load i64, i64* @IB_MGMT_RMPP_STATUS_BAD_STATUS, align 8
  %28 = call i32 @abort_send(%struct.ib_mad_agent_private* %25, %struct.ib_mad_recv_wc* %26, i64 %27)
  %29 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %30 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %31 = load i64, i64* @IB_MGMT_RMPP_STATUS_BAD_STATUS, align 8
  %32 = call i32 @nack_recv(%struct.ib_mad_agent_private* %29, %struct.ib_mad_recv_wc* %30, i64 %31)
  br label %41

33:                                               ; preds = %17
  %34 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %35 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %36 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %37 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @abort_send(%struct.ib_mad_agent_private* %34, %struct.ib_mad_recv_wc* %35, i64 %39)
  br label %41

41:                                               ; preds = %33, %24
  ret void
}

declare dso_local i32 @abort_send(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i64) #1

declare dso_local i32 @nack_recv(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
