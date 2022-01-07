; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_iw_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_iw_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }
%struct.cma_work = type { i32, %struct.TYPE_2__, i32, i32, %struct.rdma_id_private* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_work_handler = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i32)* @cma_resolve_iw_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_iw_route(%struct.rdma_id_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cma_work*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cma_work* @kzalloc(i32 24, i32 %7)
  store %struct.cma_work* %8, %struct.cma_work** %6, align 8
  %9 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %10 = icmp ne %struct.cma_work* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %16 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %17 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %16, i32 0, i32 4
  store %struct.rdma_id_private* %15, %struct.rdma_id_private** %17, align 8
  %18 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %19 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %18, i32 0, i32 0
  %20 = load i32, i32* @cma_work_handler, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load i32, i32* @RDMA_CM_ROUTE_QUERY, align 4
  %23 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %24 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @RDMA_CM_ROUTE_RESOLVED, align 4
  %26 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %27 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @RDMA_CM_EVENT_ROUTE_RESOLVED, align 4
  %29 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %30 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @cma_wq, align 4
  %33 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %34 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %14, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
