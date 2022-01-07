; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ocrdma_mr = type { %struct.ib_mr }

@OCRDMA_ADDR_CHECK_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ocrdma_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @OCRDMA_ADDR_CHECK_DISABLE, align 4
  %10 = call %struct.ocrdma_mr* @ocrdma_alloc_lkey(%struct.ib_pd* %7, i32 %8, i32 0, i32 %9)
  store %struct.ocrdma_mr* %10, %struct.ocrdma_mr** %6, align 8
  %11 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %6, align 8
  %12 = call i64 @IS_ERR(%struct.ocrdma_mr* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %6, align 8
  %16 = call %struct.ib_mr* @ERR_CAST(%struct.ocrdma_mr* %15)
  store %struct.ib_mr* %16, %struct.ib_mr** %3, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %18, i32 0, i32 0
  store %struct.ib_mr* %19, %struct.ib_mr** %3, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %21
}

declare dso_local %struct.ocrdma_mr* @ocrdma_alloc_lkey(%struct.ib_pd*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ocrdma_mr*) #1

declare dso_local %struct.ib_mr* @ERR_CAST(%struct.ocrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
