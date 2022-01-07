; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i64, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.cnic_context* }
%struct.cnic_context = type { i32, i64, i32 }
%struct.kwqe = type { i32 }
%struct.fcoe_kwqe_conn_destroy = type { i64, i64 }
%union.l5cm_specific_data = type { i64 }
%struct.fcoe_kcqe = type { i64, i64, i32, i64 }
%struct.kcqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BNX2X_FCOE_L5_CID_BASE = common dso_local global i64 0, align 8
@FCOE_KCQE_COMPLETION_STATUS_ERROR = common dso_local global i64 0, align 8
@FCOE_RAMROD_CMD_ID_TERMINATE_CONN = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@CNIC_RAMROD_TMO = common dso_local global i32 0, align 4
@CTX_FL_DELETE_WAIT = common dso_local global i32 0, align 4
@cnic_wq = common dso_local global i32 0, align 4
@FCOE_KCQE_OPCODE_DESTROY_CONN = common dso_local global i32 0, align 4
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_fcoe_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_destroy(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca %struct.kwqe*, align 8
  %6 = alloca %struct.fcoe_kwqe_conn_destroy*, align 8
  %7 = alloca %union.l5cm_specific_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cnic_local*, align 8
  %12 = alloca %struct.cnic_context*, align 8
  %13 = alloca %struct.fcoe_kcqe, align 8
  %14 = alloca [1 x %struct.kcqe*], align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store %struct.kwqe* %1, %struct.kwqe** %5, align 8
  %15 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %16 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %15, i32 0, i32 1
  %17 = load %struct.cnic_local*, %struct.cnic_local** %16, align 8
  store %struct.cnic_local* %17, %struct.cnic_local** %11, align 8
  %18 = load %struct.kwqe*, %struct.kwqe** %5, align 8
  %19 = bitcast %struct.kwqe* %18 to %struct.fcoe_kwqe_conn_destroy*
  store %struct.fcoe_kwqe_conn_destroy* %19, %struct.fcoe_kwqe_conn_destroy** %6, align 8
  %20 = load %struct.fcoe_kwqe_conn_destroy*, %struct.fcoe_kwqe_conn_destroy** %6, align 8
  %21 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, %struct.fcoe_kwqe_conn_destroy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.fcoe_kwqe_conn_destroy*, %struct.fcoe_kwqe_conn_destroy** %6, align 8
  %24 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, %struct.fcoe_kwqe_conn_destroy* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %28 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %101

34:                                               ; preds = %2
  %35 = load i64, i64* @BNX2X_FCOE_L5_CID_BASE, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %10, align 8
  %38 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 1
  %40 = load %struct.cnic_context*, %struct.cnic_context** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %40, i64 %41
  store %struct.cnic_context* %42, %struct.cnic_context** %12, align 8
  %43 = load %struct.cnic_context*, %struct.cnic_context** %12, align 8
  %44 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %43, i32 0, i32 2
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.cnic_context*, %struct.cnic_context** %12, align 8
  %47 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = bitcast %struct.fcoe_kcqe* %13 to %union.l5cm_specific_data*
  %49 = call i32 @memset(%union.l5cm_specific_data* %48, i32 0, i32 32)
  %50 = load i64, i64* @FCOE_KCQE_COMPLETION_STATUS_ERROR, align 8
  %51 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %13, i32 0, i32 3
  store i64 %50, i64* %51, align 8
  %52 = call i32 @memset(%union.l5cm_specific_data* %7, i32 0, i32 8)
  %53 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %54 = load i32, i32* @FCOE_RAMROD_CMD_ID_TERMINATE_CONN, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %57 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %53, i32 %54, i64 %55, i32 %56, %union.l5cm_specific_data* %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %34
  %61 = load %struct.cnic_context*, %struct.cnic_context** %12, align 8
  %62 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cnic_context*, %struct.cnic_context** %12, align 8
  %65 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @CNIC_RAMROD_TMO, align 4
  %68 = call i32 @wait_event_timeout(i32 %63, i64 %66, i32 %67)
  %69 = load %struct.cnic_context*, %struct.cnic_context** %12, align 8
  %70 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %13, i32 0, i32 3
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %73, %60
  br label %76

76:                                               ; preds = %75, %34
  %77 = load i32, i32* @CTX_FL_DELETE_WAIT, align 4
  %78 = load %struct.cnic_context*, %struct.cnic_context** %12, align 8
  %79 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %78, i32 0, i32 0
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  %81 = load i32, i32* @cnic_wq, align 4
  %82 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %83 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %82, i32 0, i32 0
  %84 = call i32 @msecs_to_jiffies(i32 2000)
  %85 = call i32 @queue_delayed_work(i32 %81, i32* %83, i32 %84)
  %86 = load i32, i32* @FCOE_KCQE_OPCODE_DESTROY_CONN, align 4
  %87 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %13, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load %struct.fcoe_kwqe_conn_destroy*, %struct.fcoe_kwqe_conn_destroy** %6, align 8
  %89 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, %struct.fcoe_kwqe_conn_destroy* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %13, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %13, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  %94 = bitcast %struct.fcoe_kcqe* %13 to %struct.kcqe*
  %95 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %14, i64 0, i64 0
  store %struct.kcqe* %94, %struct.kcqe** %95, align 8
  %96 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %97 = load i32, i32* @CNIC_ULP_FCOE, align 4
  %98 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %14, i64 0, i64 0
  %99 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %96, i32 %97, %struct.kcqe** %98, i32 1)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %76, %31
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(%union.l5cm_specific_data*, i32, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i64, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
