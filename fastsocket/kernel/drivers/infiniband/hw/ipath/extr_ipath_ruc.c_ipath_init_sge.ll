; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_init_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_init_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipath_rwqe = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ipath_sge_state = type { i32, i32, i32* }
%struct.ib_wc = type { %struct.TYPE_3__*, i32, i32, i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_init_sge(%struct.ipath_qp* %0, %struct.ipath_rwqe* %1, i64* %2, %struct.ipath_sge_state* %3) #0 {
  %5 = alloca %struct.ipath_qp*, align 8
  %6 = alloca %struct.ipath_rwqe*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ipath_sge_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %5, align 8
  store %struct.ipath_rwqe* %1, %struct.ipath_rwqe** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.ipath_sge_state* %3, %struct.ipath_sge_state** %8, align 8
  %13 = load i64*, i64** %7, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %72, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %6, align 8
  %17 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %14
  %21 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %6, align 8
  %22 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %72

31:                                               ; preds = %20
  %32 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %37 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  br label %46

43:                                               ; preds = %31
  %44 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %45 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %44, i32 0, i32 1
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi i32* [ %42, %35 ], [ %45, %43 ]
  %48 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %6, align 8
  %49 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %55 = call i32 @ipath_lkey_ok(%struct.ipath_qp* %32, i32* %47, %struct.TYPE_4__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %79

58:                                               ; preds = %46
  %59 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %6, align 8
  %60 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %58, %30
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %14

75:                                               ; preds = %14
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %78 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 1, i32* %11, align 4
  br label %98

79:                                               ; preds = %57
  %80 = call i32 @memset(%struct.ib_wc* %12, i32 0, i32 24)
  %81 = load %struct.ipath_rwqe*, %struct.ipath_rwqe** %6, align 8
  %82 = getelementptr inbounds %struct.ipath_rwqe, %struct.ipath_rwqe* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 3
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %86 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @IB_WC_RECV, align 4
  %88 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 1
  store i32 %87, i32* %88, align 8
  %89 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %90 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 0
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %91, align 8
  %92 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %93 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @to_icq(i32 %95)
  %97 = call i32 @ipath_cq_enter(i32 %96, %struct.ib_wc* %12, i32 1)
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %79, %75
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @ipath_lkey_ok(%struct.ipath_qp*, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @ipath_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
