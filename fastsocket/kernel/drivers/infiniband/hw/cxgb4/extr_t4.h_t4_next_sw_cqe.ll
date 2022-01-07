; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_next_sw_cqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_next_sw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cqe = type { i32 }
%struct.t4_cq = type { i64, %struct.t4_cqe*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t4_cqe* (%struct.t4_cq*)* @t4_next_sw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t4_cqe* @t4_next_sw_cqe(%struct.t4_cq* %0) #0 {
  %2 = alloca %struct.t4_cqe*, align 8
  %3 = alloca %struct.t4_cq*, align 8
  store %struct.t4_cq* %0, %struct.t4_cq** %3, align 8
  %4 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %5 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %10 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %9, i32 0, i32 1
  %11 = load %struct.t4_cqe*, %struct.t4_cqe** %10, align 8
  %12 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %13 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %11, i64 %14
  store %struct.t4_cqe* %15, %struct.t4_cqe** %2, align 8
  br label %17

16:                                               ; preds = %1
  store %struct.t4_cqe* null, %struct.t4_cqe** %2, align 8
  br label %17

17:                                               ; preds = %16, %8
  %18 = load %struct.t4_cqe*, %struct.t4_cqe** %2, align 8
  ret %struct.t4_cqe* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
