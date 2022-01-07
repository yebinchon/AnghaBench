; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_release_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.rdma_bind_list* }
%struct.rdma_bind_list = type { i32, i32, i32 }

@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*)* @cma_release_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_release_port(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.rdma_id_private*, align 8
  %3 = alloca %struct.rdma_bind_list*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %2, align 8
  %4 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %5 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %4, i32 0, i32 1
  %6 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %5, align 8
  store %struct.rdma_bind_list* %6, %struct.rdma_bind_list** %3, align 8
  %7 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %8 = icmp ne %struct.rdma_bind_list* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @lock)
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %13 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %12, i32 0, i32 0
  %14 = call i32 @hlist_del(i32* %13)
  %15 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %15, i32 0, i32 2
  %17 = call i64 @hlist_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %21 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %24 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @idr_remove(i32 %22, i32 %25)
  %27 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %28 = call i32 @kfree(%struct.rdma_bind_list* %27)
  br label %29

29:                                               ; preds = %19, %10
  %30 = call i32 @mutex_unlock(i32* @lock)
  br label %31

31:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @idr_remove(i32, i32) #1

declare dso_local i32 @kfree(%struct.rdma_bind_list*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
