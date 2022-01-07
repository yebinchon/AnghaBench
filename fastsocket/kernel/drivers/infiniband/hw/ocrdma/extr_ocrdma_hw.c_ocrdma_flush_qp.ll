; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_flush_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_flush_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { %struct.TYPE_4__*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_flush_qp(%struct.ocrdma_qp* %0) #0 {
  %2 = alloca %struct.ocrdma_qp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %2, align 8
  %5 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %6 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %12 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %15 = call i32 @ocrdma_is_qp_in_sq_flushlist(%struct.TYPE_5__* %13, %struct.ocrdma_qp* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %19, i32 0, i32 5
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %22 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %20, i32* %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %28 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %33 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %36 = call i32 @ocrdma_is_qp_in_rq_flushlist(%struct.TYPE_6__* %34, %struct.ocrdma_qp* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %41 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %40, i32 0, i32 2
  %42 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %43 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %41, i32* %45)
  br label %47

47:                                               ; preds = %39, %31
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %50 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocrdma_is_qp_in_sq_flushlist(%struct.TYPE_5__*, %struct.ocrdma_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ocrdma_is_qp_in_rq_flushlist(%struct.TYPE_6__*, %struct.ocrdma_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
