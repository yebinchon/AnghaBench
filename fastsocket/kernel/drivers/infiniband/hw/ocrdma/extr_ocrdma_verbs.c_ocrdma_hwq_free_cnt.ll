; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_hwq_free_cnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_hwq_free_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp_hwq_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp_hwq_info*)* @ocrdma_hwq_free_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_hwq_free_cnt(%struct.ocrdma_qp_hwq_info* %0) #0 {
  %2 = alloca %struct.ocrdma_qp_hwq_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ocrdma_qp_hwq_info* %0, %struct.ocrdma_qp_hwq_info** %2, align 8
  %4 = load %struct.ocrdma_qp_hwq_info*, %struct.ocrdma_qp_hwq_info** %2, align 8
  %5 = getelementptr inbounds %struct.ocrdma_qp_hwq_info, %struct.ocrdma_qp_hwq_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ocrdma_qp_hwq_info*, %struct.ocrdma_qp_hwq_info** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_qp_hwq_info, %struct.ocrdma_qp_hwq_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.ocrdma_qp_hwq_info*, %struct.ocrdma_qp_hwq_info** %2, align 8
  %13 = getelementptr inbounds %struct.ocrdma_qp_hwq_info, %struct.ocrdma_qp_hwq_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocrdma_qp_hwq_info*, %struct.ocrdma_qp_hwq_info** %2, align 8
  %16 = getelementptr inbounds %struct.ocrdma_qp_hwq_info, %struct.ocrdma_qp_hwq_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = load %struct.ocrdma_qp_hwq_info*, %struct.ocrdma_qp_hwq_info** %2, align 8
  %20 = getelementptr inbounds %struct.ocrdma_qp_hwq_info, %struct.ocrdma_qp_hwq_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.ocrdma_qp_hwq_info*, %struct.ocrdma_qp_hwq_info** %2, align 8
  %25 = getelementptr inbounds %struct.ocrdma_qp_hwq_info, %struct.ocrdma_qp_hwq_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ocrdma_qp_hwq_info*, %struct.ocrdma_qp_hwq_info** %2, align 8
  %28 = getelementptr inbounds %struct.ocrdma_qp_hwq_info, %struct.ocrdma_qp_hwq_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
