; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_wr.h_cxio_next_hw_cqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_wr.h_cxio_next_hw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3_cqe = type { i32 }
%struct.t3_cq = type { i32, i32, %struct.t3_cqe* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t3_cqe* (%struct.t3_cq*)* @cxio_next_hw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t3_cqe* @cxio_next_hw_cqe(%struct.t3_cq* %0) #0 {
  %2 = alloca %struct.t3_cqe*, align 8
  %3 = alloca %struct.t3_cq*, align 8
  %4 = alloca %struct.t3_cqe*, align 8
  store %struct.t3_cq* %0, %struct.t3_cq** %3, align 8
  %5 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %6 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %5, i32 0, i32 2
  %7 = load %struct.t3_cqe*, %struct.t3_cqe** %6, align 8
  %8 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %9 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %12 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @Q_PTR2IDX(i32 %10, i32 %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %7, i64 %15
  store %struct.t3_cqe* %16, %struct.t3_cqe** %4, align 8
  %17 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %18 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %21 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %24 = call i64 @CQ_VLD_ENTRY(i32 %19, i32 %22, %struct.t3_cqe* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  store %struct.t3_cqe* %27, %struct.t3_cqe** %2, align 8
  br label %29

28:                                               ; preds = %1
  store %struct.t3_cqe* null, %struct.t3_cqe** %2, align 8
  br label %29

29:                                               ; preds = %28, %26
  %30 = load %struct.t3_cqe*, %struct.t3_cqe** %2, align 8
  ret %struct.t3_cqe* %30
}

declare dso_local i32 @Q_PTR2IDX(i32, i32) #1

declare dso_local i64 @CQ_VLD_ENTRY(i32, i32, %struct.t3_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
