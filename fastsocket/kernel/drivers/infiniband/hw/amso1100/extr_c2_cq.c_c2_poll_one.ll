; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_poll_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_poll_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i64, i64, i64, i64, i64, i64, i32*, i32, i32 }
%struct.c2wr_ce = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.c2_qp = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@IB_WC_SEND = common dso_local global i32 0, align 4
@IB_WC_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WC_RDMA_READ = common dso_local global i32 0, align 4
@IB_WC_BIND_MW = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*, %struct.c2_cq*, %struct.ib_wc*)* @c2_poll_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_poll_one(%struct.c2_dev* %0, %struct.c2_cq* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.c2_dev*, align 8
  %6 = alloca %struct.c2_cq*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.c2wr_ce*, align 8
  %9 = alloca %struct.c2_qp*, align 8
  %10 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %5, align 8
  store %struct.c2_cq* %1, %struct.c2_cq** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %12 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %11, i32 0, i32 0
  %13 = call %struct.c2wr_ce* @c2_mq_consume(i32* %12)
  store %struct.c2wr_ce* %13, %struct.c2wr_ce** %8, align 8
  %14 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %15 = icmp ne %struct.c2wr_ce* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %115

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %38, %19
  %21 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %22 = getelementptr inbounds %struct.c2wr_ce, %struct.c2wr_ce* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.c2_qp*
  store %struct.c2_qp* %24, %struct.c2_qp** %9, align 8
  %25 = icmp eq %struct.c2_qp* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %28 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %27, i32 0, i32 0
  %29 = call i32 @c2_mq_free(i32* %28)
  %30 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %31 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %30, i32 0, i32 0
  %32 = call %struct.c2wr_ce* @c2_mq_consume(i32* %31)
  store %struct.c2wr_ce* %32, %struct.c2wr_ce** %8, align 8
  %33 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %34 = icmp ne %struct.c2wr_ce* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %115

38:                                               ; preds = %26
  br label %20

39:                                               ; preds = %20
  %40 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %41 = call i32 @c2_wr_get_result(%struct.c2wr_ce* %40)
  %42 = call i32 @c2_cqe_status_to_openib(i32 %41)
  %43 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %46 = getelementptr inbounds %struct.c2wr_ce, %struct.c2wr_ce* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.c2_qp*, %struct.c2_qp** %9, align 8
  %52 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %51, i32 0, i32 2
  %53 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 8
  store i32* %52, i32** %54, align 8
  %55 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %60 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %68 = call i32 @c2_wr_get_id(%struct.c2wr_ce* %67)
  switch i32 %68, label %95 [
    i32 128, label %69
    i32 130, label %73
    i32 131, label %77
    i32 132, label %81
    i32 129, label %85
  ]

69:                                               ; preds = %39
  %70 = load i32, i32* @IB_WC_SEND, align 4
  %71 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %96

73:                                               ; preds = %39
  %74 = load i32, i32* @IB_WC_RDMA_WRITE, align 4
  %75 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %76 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %96

77:                                               ; preds = %39
  %78 = load i32, i32* @IB_WC_RDMA_READ, align 4
  %79 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %80 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %96

81:                                               ; preds = %39
  %82 = load i32, i32* @IB_WC_BIND_MW, align 4
  %83 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %84 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %96

85:                                               ; preds = %39
  %86 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %87 = getelementptr inbounds %struct.c2wr_ce, %struct.c2wr_ce* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @be32_to_cpu(i32 %88)
  %90 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %91 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @IB_WC_RECV, align 4
  %93 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %94 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  store i32 1, i32* %10, align 4
  br label %96

95:                                               ; preds = %39
  br label %96

96:                                               ; preds = %95, %85, %81, %77, %73, %69
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.c2_qp*, %struct.c2_qp** %9, align 8
  %101 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %100, i32 0, i32 1
  %102 = call i32 @c2_mq_lconsume(i32* %101, i32 1)
  br label %111

103:                                              ; preds = %96
  %104 = load %struct.c2_qp*, %struct.c2_qp** %9, align 8
  %105 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %104, i32 0, i32 0
  %106 = load %struct.c2wr_ce*, %struct.c2wr_ce** %8, align 8
  %107 = call i32 @c2_wr_get_wqe_count(%struct.c2wr_ce* %106)
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = add nsw i32 %108, 1
  %110 = call i32 @c2_mq_lconsume(i32* %105, i32 %109)
  br label %111

111:                                              ; preds = %103, %99
  %112 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %113 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %112, i32 0, i32 0
  %114 = call i32 @c2_mq_free(i32* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %35, %16
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.c2wr_ce* @c2_mq_consume(i32*) #1

declare dso_local i32 @c2_mq_free(i32*) #1

declare dso_local i32 @c2_cqe_status_to_openib(i32) #1

declare dso_local i32 @c2_wr_get_result(%struct.c2wr_ce*) #1

declare dso_local i32 @c2_wr_get_id(%struct.c2wr_ce*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @c2_mq_lconsume(i32*, i32) #1

declare dso_local i32 @c2_wr_get_wqe_count(%struct.c2wr_ce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
