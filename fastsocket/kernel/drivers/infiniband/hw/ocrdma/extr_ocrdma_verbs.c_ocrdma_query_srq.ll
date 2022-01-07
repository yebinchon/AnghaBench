; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32 }
%struct.ocrdma_srq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_srq_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %4, align 8
  %7 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %8 = call %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq* %7)
  store %struct.ocrdma_srq* %8, %struct.ocrdma_srq** %6, align 8
  %9 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %6, align 8
  %10 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %4, align 8
  %11 = call i32 @ocrdma_mbx_query_srq(%struct.ocrdma_srq* %9, %struct.ib_srq_attr* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

declare dso_local %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq*) #1

declare dso_local i32 @ocrdma_mbx_query_srq(%struct.ocrdma_srq*, %struct.ib_srq_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
