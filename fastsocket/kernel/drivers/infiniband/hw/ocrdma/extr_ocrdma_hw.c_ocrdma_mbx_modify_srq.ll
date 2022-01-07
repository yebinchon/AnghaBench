; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { i32, i32 }
%struct.ib_srq_attr = type { i32 }
%struct.ocrdma_modify_srq = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_CREATE_SRQ = common dso_local global i32 0, align 4
@OCRDMA_MODIFY_SRQ_LIMIT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_modify_srq*, align 8
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @OCRDMA_CMD_CREATE_SRQ, align 4
  %11 = call %struct.ocrdma_modify_srq* @ocrdma_init_emb_mqe(i32 %10, i32 8)
  store %struct.ocrdma_modify_srq* %11, %struct.ocrdma_modify_srq** %7, align 8
  %12 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %13 = icmp ne %struct.ocrdma_modify_srq* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %21 = getelementptr inbounds %struct.ocrdma_modify_srq, %struct.ocrdma_modify_srq* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %23 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCRDMA_MODIFY_SRQ_LIMIT_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %28 = getelementptr inbounds %struct.ocrdma_modify_srq, %struct.ocrdma_modify_srq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %32 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %35 = bitcast %struct.ocrdma_modify_srq* %34 to %struct.ocrdma_mqe*
  %36 = call i32 @ocrdma_mbx_cmd(i32 %33, %struct.ocrdma_mqe* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %38 = call i32 @kfree(%struct.ocrdma_modify_srq* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %16, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.ocrdma_modify_srq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(i32, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_modify_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
