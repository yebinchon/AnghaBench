; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_copy_iboe_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_copy_iboe_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ucm_query_route_resp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rdma_route = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32, i32 }
%struct.net_device = type { i32 }
%union.ib_gid = type { i32 }

@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_ucm_query_route_resp*, %struct.rdma_route*)* @ucma_copy_iboe_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_copy_iboe_route(%struct.rdma_ucm_query_route_resp* %0, %struct.rdma_route* %1) #0 {
  %3 = alloca %struct.rdma_ucm_query_route_resp*, align 8
  %4 = alloca %struct.rdma_route*, align 8
  %5 = alloca %struct.rdma_dev_addr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rdma_ucm_query_route_resp* %0, %struct.rdma_ucm_query_route_resp** %3, align 8
  store %struct.rdma_route* %1, %struct.rdma_route** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %9 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %12 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %77 [
    i32 0, label %16
    i32 2, label %57
    i32 1, label %67
  ]

16:                                               ; preds = %2
  %17 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %18 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.rdma_dev_addr* %19, %struct.rdma_dev_addr** %5, align 8
  %20 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %22)
  store %struct.net_device* %23, %struct.net_device** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call i32 @rdma_vlan_dev_vlan_id(%struct.net_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call i32 @dev_put(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %26, %16
  %32 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %33 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = bitcast i32* %36 to %union.ib_gid*
  %38 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %39 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @iboe_mac_vlan_to_ll(%union.ib_gid* %37, i32 %40, i32 %41)
  %43 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %44 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %45 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to %union.ib_gid*
  %50 = call i32 @iboe_addr_get_sgid(%struct.rdma_dev_addr* %43, %union.ib_gid* %49)
  %51 = call i32 @cpu_to_be16(i32 65535)
  %52 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %53 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 4
  br label %78

57:                                               ; preds = %2
  %58 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %59 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 1
  %62 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %63 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = call i32 @ib_copy_path_rec_to_user(%struct.TYPE_4__* %61, i32* %65)
  br label %67

67:                                               ; preds = %2, %57
  %68 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %69 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 0
  %72 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %73 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = call i32 @ib_copy_path_rec_to_user(%struct.TYPE_4__* %71, i32* %75)
  br label %78

77:                                               ; preds = %2
  br label %78

78:                                               ; preds = %77, %67, %31
  ret void
}

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @rdma_vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @iboe_mac_vlan_to_ll(%union.ib_gid*, i32, i32) #1

declare dso_local i32 @iboe_addr_get_sgid(%struct.rdma_dev_addr*, %union.ib_gid*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_copy_path_rec_to_user(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
