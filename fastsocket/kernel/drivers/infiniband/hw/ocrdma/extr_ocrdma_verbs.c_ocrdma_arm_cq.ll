; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_arm_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ocrdma_cq = type { i32, i32, i32, i32, i32, i32, %struct.ocrdma_cqe*, %struct.ocrdma_dev* }
%struct.ocrdma_cqe = type { i32 }
%struct.ocrdma_dev = type { i32 }

@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_arm_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_cq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocrdma_cqe*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %12 = call %struct.ocrdma_cq* @get_ocrdma_cq(%struct.ib_cq* %11)
  store %struct.ocrdma_cq* %12, %struct.ocrdma_cq** %5, align 8
  %13 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %14 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %16, i32 0, i32 7
  %18 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  store %struct.ocrdma_dev* %18, %struct.ocrdma_dev** %7, align 8
  %19 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %20 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %19, i32 0, i32 5
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %2
  %33 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %34 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %42 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %45 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %48 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %47, i32 0, i32 6
  %49 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %49, i64 %51
  store %struct.ocrdma_cqe* %52, %struct.ocrdma_cqe** %10, align 8
  %53 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %54 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %55 = call i32 @is_cqe_valid(%struct.ocrdma_cq* %53, %struct.ocrdma_cqe* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %59 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57, %43
  %63 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %64 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %63, i32 0, i32 4
  store i32 0, i32* %64, align 8
  %65 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %68 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %71 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev* %65, i32 %66, i32 %69, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %62, %57
  %75 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %76 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %75, i32 0, i32 5
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret i32 0
}

declare dso_local %struct.ocrdma_cq* @get_ocrdma_cq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_cqe_valid(%struct.ocrdma_cq*, %struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
