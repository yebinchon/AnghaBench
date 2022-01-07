; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_alloc_response_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_alloc_response_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_mad_send_buf = type { %struct.ib_mad_send_buf* }
%struct.ib_ah = type { %struct.ib_ah* }

@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.ib_mad_send_buf**)* @cm_alloc_response_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_alloc_response_msg(%struct.cm_port* %0, %struct.ib_mad_recv_wc* %1, %struct.ib_mad_send_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_port*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.ib_mad_send_buf**, align 8
  %8 = alloca %struct.ib_mad_send_buf*, align 8
  %9 = alloca %struct.ib_ah*, align 8
  store %struct.cm_port* %0, %struct.cm_port** %5, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %6, align 8
  store %struct.ib_mad_send_buf** %2, %struct.ib_mad_send_buf*** %7, align 8
  %10 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %11 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %18 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %21 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %25 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.ib_mad_send_buf* @ib_create_ah_from_wc(i32 %16, %struct.TYPE_8__* %19, i32 %23, i32 %26)
  %28 = bitcast %struct.ib_mad_send_buf* %27 to %struct.ib_ah*
  store %struct.ib_ah* %28, %struct.ib_ah** %9, align 8
  %29 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %30 = bitcast %struct.ib_ah* %29 to %struct.ib_mad_send_buf*
  %31 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %35 = bitcast %struct.ib_ah* %34 to %struct.ib_mad_send_buf*
  %36 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %35)
  store i32 %36, i32* %4, align 4
  br label %66

37:                                               ; preds = %3
  %38 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %39 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %42 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %47 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.TYPE_7__* %40, i32 1, i32 %45, i32 0, i32 %46, i32 %47, i32 %48)
  store %struct.ib_mad_send_buf* %49, %struct.ib_mad_send_buf** %8, align 8
  %50 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %51 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %55 = bitcast %struct.ib_ah* %54 to %struct.ib_mad_send_buf*
  %56 = call i32 @ib_destroy_ah(%struct.ib_mad_send_buf* %55)
  %57 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %58 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %57)
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %37
  %60 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %61 = bitcast %struct.ib_ah* %60 to %struct.ib_mad_send_buf*
  %62 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %63 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %62, i32 0, i32 0
  store %struct.ib_mad_send_buf* %61, %struct.ib_mad_send_buf** %63, align 8
  %64 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %65 = load %struct.ib_mad_send_buf**, %struct.ib_mad_send_buf*** %7, align 8
  store %struct.ib_mad_send_buf* %64, %struct.ib_mad_send_buf** %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %53, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_ah_from_wc(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ib_destroy_ah(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
