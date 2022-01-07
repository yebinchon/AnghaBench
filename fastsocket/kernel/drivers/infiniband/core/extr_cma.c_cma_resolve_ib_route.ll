; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rdma_route }
%struct.rdma_route = type { %struct.cma_work* }
%struct.cma_work = type { %struct.TYPE_4__, i32, i32, i32, %struct.rdma_id_private* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_work_handler = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i32)* @cma_resolve_ib_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_ib_route(%struct.rdma_id_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdma_route*, align 8
  %7 = alloca %struct.cma_work*, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.rdma_route* %11, %struct.rdma_route** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cma_work* @kzalloc(i32 24, i32 %12)
  store %struct.cma_work* %13, %struct.cma_work** %7, align 8
  %14 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %15 = icmp ne %struct.cma_work* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %21 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %22 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %21, i32 0, i32 4
  store %struct.rdma_id_private* %20, %struct.rdma_id_private** %22, align 8
  %23 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %24 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %23, i32 0, i32 3
  %25 = load i32, i32* @cma_work_handler, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load i32, i32* @RDMA_CM_ROUTE_QUERY, align 4
  %28 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %29 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @RDMA_CM_ROUTE_RESOLVED, align 4
  %31 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %32 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @RDMA_CM_EVENT_ROUTE_RESOLVED, align 4
  %34 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %35 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.cma_work* @kmalloc(i32 24, i32 %37)
  %39 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %40 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %39, i32 0, i32 0
  store %struct.cma_work* %38, %struct.cma_work** %40, align 8
  %41 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %42 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %41, i32 0, i32 0
  %43 = load %struct.cma_work*, %struct.cma_work** %42, align 8
  %44 = icmp ne %struct.cma_work* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %19
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %64

48:                                               ; preds = %19
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %52 = call i32 @cma_query_ib_route(%struct.rdma_id_private* %49, i32 %50, %struct.cma_work* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %68

57:                                               ; preds = %55
  %58 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %59 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %58, i32 0, i32 0
  %60 = load %struct.cma_work*, %struct.cma_work** %59, align 8
  %61 = call i32 @kfree(%struct.cma_work* %60)
  %62 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %63 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %62, i32 0, i32 0
  store %struct.cma_work* null, %struct.cma_work** %63, align 8
  br label %64

64:                                               ; preds = %57, %45
  %65 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %66 = call i32 @kfree(%struct.cma_work* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %56, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.cma_work* @kmalloc(i32, i32) #1

declare dso_local i32 @cma_query_ib_route(%struct.rdma_id_private*, i32, %struct.cma_work*) #1

declare dso_local i32 @kfree(%struct.cma_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
