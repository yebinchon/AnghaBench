; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_nack_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_nack_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_mad_send_buf = type { i32, i32, %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IB_MGMT_METHOD_RESP = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_TYPE_ABORT = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32)* @nack_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nack_recv(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca %struct.ib_rmpp_mad*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %11 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %10, i32 0, i32 0
  %12 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %13 = call %struct.ib_mad_send_buf* @alloc_response_msg(i32* %11, %struct.ib_mad_recv_wc* %12)
  store %struct.ib_mad_send_buf* %13, %struct.ib_mad_send_buf** %7, align 8
  %14 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %15 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %20 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %19, i32 0, i32 2
  %21 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %20, align 8
  store %struct.ib_rmpp_mad* %21, %struct.ib_rmpp_mad** %8, align 8
  %22 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %23 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %24 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %28 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(%struct.ib_rmpp_mad* %22, i32 %26, i32 %29)
  %31 = load i32, i32* @IB_MGMT_METHOD_RESP, align 4
  %32 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %33 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @IB_MGMT_RMPP_VERSION, align 4
  %38 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %39 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @IB_MGMT_RMPP_TYPE_ABORT, align 4
  %42 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %43 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %46 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %45, i32 0, i32 0
  %47 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %48 = call i32 @ib_set_rmpp_flags(%struct.TYPE_6__* %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %51 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %54 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  %57 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %60 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %59, i32* null)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %18
  %64 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %65 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ib_destroy_ah(i32 %66)
  %68 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %69 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %68)
  br label %70

70:                                               ; preds = %17, %63, %18
  ret void
}

declare dso_local %struct.ib_mad_send_buf* @alloc_response_msg(i32*, %struct.ib_mad_recv_wc*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @memcpy(%struct.ib_rmpp_mad*, i32, i32) #1

declare dso_local i32 @ib_set_rmpp_flags(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @ib_destroy_ah(i32) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
