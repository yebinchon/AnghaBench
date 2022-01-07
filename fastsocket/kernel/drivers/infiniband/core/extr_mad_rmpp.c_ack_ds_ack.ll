; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ack_ds_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ack_ds_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_mad_send_buf = type { i32, i32, %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@IB_MGMT_METHOD_RESP = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @ack_ds_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_ds_ack(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.ib_rmpp_mad*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %8 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %8, i32 0, i32 0
  %10 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %11 = call %struct.ib_mad_send_buf* @alloc_response_msg(i32* %9, %struct.ib_mad_recv_wc* %10)
  store %struct.ib_mad_send_buf* %11, %struct.ib_mad_send_buf** %5, align 8
  %12 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %13 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %18 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %17, i32 0, i32 2
  %19 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %18, align 8
  store %struct.ib_rmpp_mad* %19, %struct.ib_rmpp_mad** %6, align 8
  %20 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %21 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %22 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %26 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(%struct.ib_rmpp_mad* %20, i32 %24, i32 %27)
  %29 = load i32, i32* @IB_MGMT_METHOD_RESP, align 4
  %30 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %31 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %36 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %35, i32 0, i32 0
  %37 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %38 = call i32 @ib_set_rmpp_flags(%struct.TYPE_6__* %36, i32 %37)
  %39 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %40 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = call i32 @cpu_to_be32(i32 1)
  %43 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %44 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %47 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %46, i32* null)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %16
  %51 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %52 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ib_destroy_ah(i32 %53)
  %55 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %56 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %55)
  br label %57

57:                                               ; preds = %15, %50, %16
  ret void
}

declare dso_local %struct.ib_mad_send_buf* @alloc_response_msg(i32*, %struct.ib_mad_recv_wc*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @memcpy(%struct.ib_rmpp_mad*, i32, i32) #1

declare dso_local i32 @ib_set_rmpp_flags(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @ib_destroy_ah(i32) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
