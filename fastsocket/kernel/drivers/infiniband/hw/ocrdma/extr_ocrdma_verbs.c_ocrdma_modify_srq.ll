; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_modify_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_srq = type { i32 }

@IB_SRQ_MAX_WR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_srq_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocrdma_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %12 = call %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq* %11)
  store %struct.ocrdma_srq* %12, %struct.ocrdma_srq** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IB_SRQ_MAX_WR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %10, align 8
  %22 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %6, align 8
  %23 = call i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq* %21, %struct.ib_srq_attr* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq*) #1

declare dso_local i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq*, %struct.ib_srq_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
