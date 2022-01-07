; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_update_ack_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_update_ack_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i32 }

@QIB_MAX_RDMA_ATOMIC = common dso_local global i32 0, align 4
@ACKNOWLEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*, i32)* @qib_update_ack_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_update_ack_queue(%struct.qib_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @QIB_MAX_RDMA_ATOMIC, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %15 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ACKNOWLEDGE, align 4
  %17 = call i32 @OP(i32 %16)
  %18 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %19 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
