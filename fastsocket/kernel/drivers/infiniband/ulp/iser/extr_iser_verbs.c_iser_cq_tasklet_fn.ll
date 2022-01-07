; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cq_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cq_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_cq_desc = type { i32, %struct.iser_device* }
%struct.iser_device = type { %struct.ib_cq** }
%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iser_conn* }
%struct.iser_conn = type { i32 }
%struct.iser_rx_desc = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WC_RECV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"expected opcode %d got %d\0A\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"rx id %llx status %d vend_err %x\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"got %d rx %d tx completions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @iser_cq_tasklet_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_cq_tasklet_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iser_cq_desc*, align 8
  %4 = alloca %struct.iser_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_wc, align 8
  %8 = alloca %struct.iser_rx_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iser_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.iser_cq_desc*
  store %struct.iser_cq_desc* %14, %struct.iser_cq_desc** %3, align 8
  %15 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %3, align 8
  %16 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %15, i32 0, i32 1
  %17 = load %struct.iser_device*, %struct.iser_device** %16, align 8
  store %struct.iser_device* %17, %struct.iser_device** %4, align 8
  %18 = load %struct.iser_cq_desc*, %struct.iser_cq_desc** %3, align 8
  %19 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %22 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %21, i32 0, i32 0
  %23 = load %struct.ib_cq**, %struct.ib_cq*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_cq*, %struct.ib_cq** %23, i64 %25
  %27 = load %struct.ib_cq*, %struct.ib_cq** %26, align 8
  store %struct.ib_cq* %27, %struct.ib_cq** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %100, %1
  %29 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %30 = call i32 @ib_poll_cq(%struct.ib_cq* %29, i32 1, %struct.ib_wc* %7)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %101

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.iser_rx_desc*
  store %struct.iser_rx_desc* %35, %struct.iser_rx_desc** %8, align 8
  %36 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %8, align 8
  %37 = icmp eq %struct.iser_rx_desc* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.iser_conn*, %struct.iser_conn** %42, align 8
  store %struct.iser_conn* %43, %struct.iser_conn** %10, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_WC_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_WC_RECV, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  %56 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.iser_conn*, %struct.iser_conn** %10, align 8
  %59 = call i32 @iser_rcv_completion(%struct.iser_rx_desc* %56, i64 %57, %struct.iser_conn* %58)
  br label %65

60:                                               ; preds = %48
  %61 = load i64, i64* @IB_WC_RECV, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, i64, i64, ...) @iser_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %63)
  br label %65

65:                                               ; preds = %60, %53
  br label %86

66:                                               ; preds = %32
  %67 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i64, i64, ...) @iser_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %75, i32 %77)
  br label %79

79:                                               ; preds = %71, %66
  %80 = load %struct.iser_conn*, %struct.iser_conn** %10, align 8
  %81 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.iser_conn*, %struct.iser_conn** %10, align 8
  %85 = call i32 @iser_handle_comp_error(i32* null, %struct.iser_conn* %84)
  br label %86

86:                                               ; preds = %79, %65
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 63
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @iser_drain_tx_cq(%struct.iser_device* %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %92, %86
  br label %28

101:                                              ; preds = %28
  %102 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %103 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %104 = call i32 @ib_req_notify_cq(%struct.ib_cq* %102, i32 %103)
  %105 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @iser_drain_tx_cq(%struct.iser_device* %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @iser_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  ret void
}

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iser_rcv_completion(%struct.iser_rx_desc*, i64, %struct.iser_conn*) #1

declare dso_local i32 @iser_err(i8*, i64, i64, ...) #1

declare dso_local i32 @iser_handle_comp_error(i32*, %struct.iser_conn*) #1

declare dso_local i64 @iser_drain_tx_cq(%struct.iser_device*, i32) #1

declare dso_local i32 @ib_req_notify_cq(%struct.ib_cq*, i32) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
