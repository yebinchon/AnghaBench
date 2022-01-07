; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_format_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_format_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_buf = type { i32, %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mad_rmpp_recv = type { i32, i32, i32, i32 }

@IB_MGMT_METHOD_RESP = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_TYPE_ACK = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_send_buf*, %struct.ib_rmpp_mad*, %struct.mad_rmpp_recv*)* @format_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_ack(%struct.ib_mad_send_buf* %0, %struct.ib_rmpp_mad* %1, %struct.mad_rmpp_recv* %2) #0 {
  %4 = alloca %struct.ib_mad_send_buf*, align 8
  %5 = alloca %struct.ib_rmpp_mad*, align 8
  %6 = alloca %struct.mad_rmpp_recv*, align 8
  %7 = alloca %struct.ib_rmpp_mad*, align 8
  %8 = alloca i64, align 8
  store %struct.ib_mad_send_buf* %0, %struct.ib_mad_send_buf** %4, align 8
  store %struct.ib_rmpp_mad* %1, %struct.ib_rmpp_mad** %5, align 8
  store %struct.mad_rmpp_recv* %2, %struct.mad_rmpp_recv** %6, align 8
  %9 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %10 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %9, i32 0, i32 1
  %11 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %10, align 8
  store %struct.ib_rmpp_mad* %11, %struct.ib_rmpp_mad** %7, align 8
  %12 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %7, align 8
  %13 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %14 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %13, i32 0, i32 1
  %15 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %16 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @memcpy(%struct.ib_rmpp_mad* %12, %struct.TYPE_3__* %14, i32 %17)
  %19 = load i32, i32* @IB_MGMT_METHOD_RESP, align 4
  %20 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %7, align 8
  %21 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = xor i32 %23, %19
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @IB_MGMT_RMPP_TYPE_ACK, align 4
  %26 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %7, align 8
  %27 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %7, align 8
  %30 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %29, i32 0, i32 0
  %31 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %32 = call i32 @ib_set_rmpp_flags(%struct.TYPE_4__* %30, i32 %31)
  %33 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %34 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %38 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %41 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %43 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %7, align 8
  %47 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %50 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %7, align 8
  %54 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %57 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local i32 @memcpy(%struct.ib_rmpp_mad*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ib_set_rmpp_flags(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
