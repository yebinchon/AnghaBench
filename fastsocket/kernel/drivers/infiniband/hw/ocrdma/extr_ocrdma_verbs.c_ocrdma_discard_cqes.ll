; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_discard_cqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_discard_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ocrdma_cq = type { i32, i32, i32, %struct.ocrdma_cqe* }
%struct.ocrdma_cqe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OCRDMA_CQE_QPN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_cq*)* @ocrdma_discard_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_discard_cqes(%struct.ocrdma_qp* %0, %struct.ocrdma_cq* %1) #0 {
  %3 = alloca %struct.ocrdma_qp*, align 8
  %4 = alloca %struct.ocrdma_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocrdma_cqe*, align 8
  %11 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %3, align 8
  store %struct.ocrdma_cq* %1, %struct.ocrdma_cq** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %12, i32 0, i32 2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %17 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %110, %2
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %22 = call i64 @is_hw_sq_empty(%struct.ocrdma_qp* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %26 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %31 = call i64 @is_hw_rq_empty(%struct.ocrdma_qp* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %114

34:                                               ; preds = %29, %24, %20
  %35 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %36 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %35, i32 0, i32 3
  %37 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %37, i64 %39
  store %struct.ocrdma_cqe* %40, %struct.ocrdma_cqe** %10, align 8
  %41 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %42 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OCRDMA_CQE_QPN_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %52 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %34
  br label %103

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %60 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %63 = call i64 @is_cqe_for_sq(%struct.ocrdma_cqe* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %67 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %66, i32 0, i32 3
  %68 = call i32 @ocrdma_hwq_inc_tail(i32* %67)
  br label %102

69:                                               ; preds = %56
  %70 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %71 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %76 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %82 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = call i32 @ocrdma_hwq_inc_tail(i32* %84)
  %86 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %87 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ocrdma_srq_toggle_bit(%struct.TYPE_4__* %88, i32 %89)
  %91 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %92 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %101

97:                                               ; preds = %69
  %98 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %99 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %98, i32 0, i32 1
  %100 = call i32 @ocrdma_hwq_inc_tail(i32* %99)
  br label %101

101:                                              ; preds = %97, %74
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %107 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = srem i32 %105, %108
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %20, label %114

114:                                              ; preds = %110, %33
  %115 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %116 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %115, i32 0, i32 2
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i64 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i64 @is_cqe_for_sq(%struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(i32*) #1

declare dso_local i32 @ocrdma_srq_toggle_bit(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
