; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_bind_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_bind_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.rdma_bind_list* }
%struct.rdma_bind_list = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_bind_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_bind_listen(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.rdma_id_private*, align 8
  %3 = alloca %struct.rdma_bind_list*, align 8
  %4 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %2, align 8
  %5 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %6 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %5, i32 0, i32 0
  %7 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  store %struct.rdma_bind_list* %7, %struct.rdma_bind_list** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @lock)
  %9 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %19 = call i32 @cma_check_port(%struct.rdma_bind_list* %17, %struct.rdma_id_private* %18, i32 0)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = call i32 @mutex_unlock(i32* @lock)
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cma_check_port(%struct.rdma_bind_list*, %struct.rdma_id_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
