; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ack_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ack_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mad_rmpp_recv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ib_mad_send_buf = type { i32 }
%struct.ib_rmpp_mad = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mad_rmpp_recv*, %struct.ib_mad_recv_wc*)* @ack_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_recv(%struct.mad_rmpp_recv* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.mad_rmpp_recv*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mad_rmpp_recv* %0, %struct.mad_rmpp_recv** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %8 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ib_get_mad_data_offset(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  %17 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %21 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %26 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ib_mad_send_buf* @ib_create_send_mad(i32* %19, i32 %24, i32 %29, i32 1, i32 %30, i32 0, i32 %31)
  store %struct.ib_mad_send_buf* %32, %struct.ib_mad_send_buf** %5, align 8
  %33 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %34 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %58

37:                                               ; preds = %2
  %38 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %39 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %40 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = bitcast %struct.TYPE_9__* %42 to %struct.ib_rmpp_mad*
  %44 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  %45 = call i32 @format_ack(%struct.ib_mad_send_buf* %38, %struct.ib_rmpp_mad* %43, %struct.mad_rmpp_recv* %44)
  %46 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  %47 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %50 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %52 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %51, i32* null)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %37
  %56 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %57 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %56)
  br label %58

58:                                               ; preds = %36, %55, %37
  ret void
}

declare dso_local i32 @ib_get_mad_data_offset(i32) #1

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @format_ack(%struct.ib_mad_send_buf*, %struct.ib_rmpp_mad*, %struct.mad_rmpp_recv*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
