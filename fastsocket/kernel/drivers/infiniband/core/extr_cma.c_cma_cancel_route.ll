; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_cancel_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_cancel_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*)* @cma_cancel_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_cancel_route(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.rdma_id_private*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %2, align 8
  %3 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %4 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %8 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @rdma_port_get_link_layer(i32 %6, i32 %10)
  switch i32 %11, label %26 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %14 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %19 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %22 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ib_sa_cancel_query(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %17, %12
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @rdma_port_get_link_layer(i32, i32) #1

declare dso_local i32 @ib_sa_cancel_query(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
