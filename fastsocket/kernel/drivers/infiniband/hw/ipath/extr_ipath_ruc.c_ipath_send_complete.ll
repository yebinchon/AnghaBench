; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_send_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipath_swqe = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.ib_wc = type { i32, i32, %struct.TYPE_4__*, i32, i32 }

@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4
@IPATH_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@ib_ipath_wc_opcode = common dso_local global i32* null, align 8
@IB_QPS_SQD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_send_complete(%struct.ipath_qp* %0, %struct.ipath_swqe* %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_qp*, align 8
  %5 = alloca %struct.ipath_swqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_wc, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %4, align 8
  store %struct.ipath_swqe* %1, %struct.ipath_swqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** @ib_ipath_state_ops, align 8
  %11 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %12 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IPATH_PROCESS_OR_FLUSH_SEND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %127

20:                                               ; preds = %3
  %21 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %22 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IPATH_S_SIGNAL_REQ_WR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %29 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IB_WC_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %35, %27, %20
  %40 = call i32 @memset(%struct.ib_wc* %9, i32 0, i32 24)
  %41 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %42 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32*, i32** @ib_ipath_wc_opcode, align 8
  %49 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %50 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %57 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 2
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @IB_WC_SUCCESS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %39
  %63 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %64 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %39
  %68 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %69 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @to_icq(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @IB_WC_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ipath_cq_enter(i32 %72, %struct.ib_wc* %9, i32 %76)
  br label %78

78:                                               ; preds = %67, %35
  %79 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %80 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %8, align 8
  %84 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %85 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %92 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %94 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %101 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %89
  %103 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %104 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %111 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %102
  %113 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %114 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IB_QPS_SQD, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %121 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.ipath_qp*, %struct.ipath_qp** %4, align 8
  %126 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %125, i32 0, i32 6
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %19, %124, %118, %112
  ret void
}

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @ipath_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
