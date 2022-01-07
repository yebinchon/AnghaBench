; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_process_rmpp_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_process_rmpp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ib_rmpp_hdr = type { i64, i64 }
%struct.ib_rmpp_mad = type { %struct.ib_rmpp_hdr }

@IB_MGMT_RMPP_STATUS_BAD_STATUS = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_FIRST = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_STATUS_BAD_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mad_recv_wc* (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @process_rmpp_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mad_recv_wc* @process_rmpp_data(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_recv_wc*, align 8
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca %struct.ib_rmpp_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  %8 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %9 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ib_rmpp_mad*
  %13 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %12, i32 0, i32 0
  store %struct.ib_rmpp_hdr* %13, %struct.ib_rmpp_hdr** %6, align 8
  %14 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IB_MGMT_RMPP_STATUS_BAD_STATUS, align 4
  store i32 %19, i32* %7, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @cpu_to_be32(i32 1)
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %6, align 8
  %28 = call i32 @ib_get_rmpp_flags(%struct.ib_rmpp_hdr* %27)
  %29 = load i32, i32* @IB_MGMT_RMPP_FLAG_FIRST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @IB_MGMT_RMPP_STATUS_BAD_SEG, align 4
  store i32 %33, i32* %7, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %36 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %37 = call %struct.ib_mad_recv_wc* @start_rmpp(%struct.ib_mad_agent_private* %35, %struct.ib_mad_recv_wc* %36)
  store %struct.ib_mad_recv_wc* %37, %struct.ib_mad_recv_wc** %3, align 8
  br label %57

38:                                               ; preds = %20
  %39 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %6, align 8
  %40 = call i32 @ib_get_rmpp_flags(%struct.ib_rmpp_hdr* %39)
  %41 = load i32, i32* @IB_MGMT_RMPP_FLAG_FIRST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @IB_MGMT_RMPP_STATUS_BAD_SEG, align 4
  store i32 %45, i32* %7, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %48 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %49 = call %struct.ib_mad_recv_wc* @continue_rmpp(%struct.ib_mad_agent_private* %47, %struct.ib_mad_recv_wc* %48)
  store %struct.ib_mad_recv_wc* %49, %struct.ib_mad_recv_wc** %3, align 8
  br label %57

50:                                               ; preds = %44, %32, %18
  %51 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %52 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @nack_recv(%struct.ib_mad_agent_private* %51, %struct.ib_mad_recv_wc* %52, i32 %53)
  %55 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %56 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %55)
  store %struct.ib_mad_recv_wc* null, %struct.ib_mad_recv_wc** %3, align 8
  br label %57

57:                                               ; preds = %50, %46, %34
  %58 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %3, align 8
  ret %struct.ib_mad_recv_wc* %58
}

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @ib_get_rmpp_flags(%struct.ib_rmpp_hdr*) #1

declare dso_local %struct.ib_mad_recv_wc* @start_rmpp(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local %struct.ib_mad_recv_wc* @continue_rmpp(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @nack_recv(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
