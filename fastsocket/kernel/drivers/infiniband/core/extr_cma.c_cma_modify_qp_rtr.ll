; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_modify_qp_rtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_modify_qp_rtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rdma_conn_param = type { i32 }
%struct.ib_qp_attr = type { i32, i32 }

@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_modify_qp_rtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_conn_param*, align 8
  %5 = alloca %struct.ib_qp_attr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %4, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load i32, i32* @IB_QPS_INIT, align 4
  %19 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %21 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %20, i32 0, i32 1
  %22 = call i32 @rdma_init_qp_attr(%struct.TYPE_2__* %21, %struct.ib_qp_attr* %5, i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %28 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ib_modify_qp(i32 %30, %struct.ib_qp_attr* %5, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %60

36:                                               ; preds = %26
  %37 = load i32, i32* @IB_QPS_RTR, align 4
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 1
  %41 = call i32 @rdma_init_qp_attr(%struct.TYPE_2__* %40, %struct.ib_qp_attr* %5, i32* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %60

45:                                               ; preds = %36
  %46 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %47 = icmp ne %struct.rdma_conn_param* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %50 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %55 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ib_modify_qp(i32 %57, %struct.ib_qp_attr* %5, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %53, %44, %35, %25, %16
  %61 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %62 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rdma_init_qp_attr(%struct.TYPE_2__*, %struct.ib_qp_attr*, i32*) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
