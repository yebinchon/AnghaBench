; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_get_qp_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_get_qp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ucm_create_id = type { i32, i32 }

@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_ucm_create_id*, i32*)* @ucma_get_qp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_get_qp_type(%struct.rdma_ucm_create_id* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_ucm_create_id*, align 8
  %5 = alloca i32*, align 8
  store %struct.rdma_ucm_create_id* %0, %struct.rdma_ucm_create_id** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.rdma_ucm_create_id*, %struct.rdma_ucm_create_id** %4, align 8
  %7 = getelementptr inbounds %struct.rdma_ucm_create_id, %struct.rdma_ucm_create_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 129, label %9
    i32 128, label %12
    i32 130, label %12
    i32 131, label %15
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @IB_QPT_RC, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  store i32 0, i32* %3, align 4
  br label %23

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @IB_QPT_UD, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  store i32 0, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.rdma_ucm_create_id*, %struct.rdma_ucm_create_id** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_ucm_create_id, %struct.rdma_ucm_create_id* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %15, %12, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
