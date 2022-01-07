; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_init_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_init_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, %struct.TYPE_6__, %struct.qib_sge*, %struct.qib_sge_state }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qib_sge = type { i32 }
%struct.qib_sge_state = type { i32, i64, %struct.qib_sge, %struct.qib_sge* }
%struct.qib_rwqe = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ib_wc = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.qib_lkey_table = type { i32 }
%struct.qib_pd = type { i32 }
%struct.TYPE_7__ = type { %struct.qib_lkey_table }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_qp*, %struct.qib_rwqe*)* @qib_init_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_init_sge(%struct.qib_qp* %0, %struct.qib_rwqe* %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca %struct.qib_rwqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_wc, align 8
  %9 = alloca %struct.qib_lkey_table*, align 8
  %10 = alloca %struct.qib_pd*, align 8
  %11 = alloca %struct.qib_sge_state*, align 8
  %12 = alloca %struct.qib_sge*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store %struct.qib_rwqe* %1, %struct.qib_rwqe** %4, align 8
  %13 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %14 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_7__* @to_idev(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.qib_lkey_table* %18, %struct.qib_lkey_table** %9, align 8
  %19 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %20 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %26 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %33 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = phi i32 [ %30, %24 ], [ %35, %31 ]
  %38 = call %struct.qib_pd* @to_ipd(i32 %37)
  store %struct.qib_pd* %38, %struct.qib_pd** %10, align 8
  %39 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %40 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %39, i32 0, i32 3
  store %struct.qib_sge_state* %40, %struct.qib_sge_state** %11, align 8
  %41 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %42 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %41, i32 0, i32 2
  %43 = load %struct.qib_sge*, %struct.qib_sge** %42, align 8
  %44 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %45 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %44, i32 0, i32 3
  store %struct.qib_sge* %43, %struct.qib_sge** %45, align 8
  %46 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %47 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %108, %36
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.qib_rwqe*, %struct.qib_rwqe** %4, align 8
  %51 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %111

54:                                               ; preds = %48
  %55 = load %struct.qib_rwqe*, %struct.qib_rwqe** %4, align 8
  %56 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %108

65:                                               ; preds = %54
  %66 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %9, align 8
  %67 = load %struct.qib_pd*, %struct.qib_pd** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %72 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %71, i32 0, i32 3
  %73 = load %struct.qib_sge*, %struct.qib_sge** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %73, i64 %76
  br label %81

78:                                               ; preds = %65
  %79 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %80 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %79, i32 0, i32 2
  br label %81

81:                                               ; preds = %78, %70
  %82 = phi %struct.qib_sge* [ %77, %70 ], [ %80, %78 ]
  %83 = load %struct.qib_rwqe*, %struct.qib_rwqe** %4, align 8
  %84 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %90 = call i32 @qib_lkey_ok(%struct.qib_lkey_table* %66, %struct.qib_pd* %67, %struct.qib_sge* %82, %struct.TYPE_8__* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  br label %120

93:                                               ; preds = %81
  %94 = load %struct.qib_rwqe*, %struct.qib_rwqe** %4, align 8
  %95 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %103 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %93, %64
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %48

111:                                              ; preds = %48
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %114 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %116 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %119 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  store i32 1, i32* %7, align 4
  br label %166

120:                                              ; preds = %92
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %130 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %129, i32 0, i32 3
  %131 = load %struct.qib_sge*, %struct.qib_sge** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %131, i64 %134
  br label %139

136:                                              ; preds = %124
  %137 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %138 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %137, i32 0, i32 2
  br label %139

139:                                              ; preds = %136, %128
  %140 = phi %struct.qib_sge* [ %135, %128 ], [ %138, %136 ]
  store %struct.qib_sge* %140, %struct.qib_sge** %12, align 8
  %141 = load %struct.qib_sge*, %struct.qib_sge** %12, align 8
  %142 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @qib_put_mr(i32 %143)
  br label %121

145:                                              ; preds = %121
  %146 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %147 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = call i32 @memset(%struct.ib_wc* %8, i32 0, i32 24)
  %149 = load %struct.qib_rwqe*, %struct.qib_rwqe** %4, align 8
  %150 = getelementptr inbounds %struct.qib_rwqe, %struct.qib_rwqe* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 3
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %154 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @IB_WC_RECV, align 4
  %156 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 1
  store i32 %155, i32* %156, align 8
  %157 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %158 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 0
  store %struct.TYPE_6__* %158, %struct.TYPE_6__** %159, align 8
  %160 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %161 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @to_icq(i32 %163)
  %165 = call i32 @qib_cq_enter(i32 %164, %struct.ib_wc* %8, i32 1)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %145, %111
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_7__* @to_idev(i32) #1

declare dso_local %struct.qib_pd* @to_ipd(i32) #1

declare dso_local i32 @qib_lkey_ok(%struct.qib_lkey_table*, %struct.qib_pd*, %struct.qib_sge*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @qib_put_mr(i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @qib_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
