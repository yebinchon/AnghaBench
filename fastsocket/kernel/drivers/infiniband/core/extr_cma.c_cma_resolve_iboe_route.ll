; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_iboe_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_iboe_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_route }
%struct.rdma_route = type { i32, %struct.cma_work*, %struct.rdma_addr }
%struct.cma_work = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, %struct.rdma_id_private* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.rdma_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.net_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_work_handler = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IB_SA_EQ = common dso_local global i8* null, align 8
@IFF_802_1Q_VLAN = common dso_local global i32 0, align 4
@CMA_IBOE_PACKET_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_iboe_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_iboe_route(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_route*, align 8
  %5 = alloca %struct.rdma_addr*, align 8
  %6 = alloca %struct.cma_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %10 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.rdma_route* %12, %struct.rdma_route** %4, align 8
  %13 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %13, i32 0, i32 2
  store %struct.rdma_addr* %14, %struct.rdma_addr** %5, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 112, i32 %15)
  %17 = bitcast i8* %16 to %struct.cma_work*
  store %struct.cma_work* %17, %struct.cma_work** %6, align 8
  %18 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %19 = icmp ne %struct.cma_work* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %195

23:                                               ; preds = %1
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %25 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %26 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %25, i32 0, i32 16
  store %struct.rdma_id_private* %24, %struct.rdma_id_private** %26, align 8
  %27 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %28 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %27, i32 0, i32 2
  %29 = load i32, i32* @cma_work_handler, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 112, i32 %31)
  %33 = bitcast i8* %32 to %struct.cma_work*
  %34 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %35 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %34, i32 0, i32 1
  store %struct.cma_work* %33, %struct.cma_work** %35, align 8
  %36 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %37 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %36, i32 0, i32 1
  %38 = load %struct.cma_work*, %struct.cma_work** %37, align 8
  %39 = icmp ne %struct.cma_work* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %191

43:                                               ; preds = %23
  %44 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %45 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %47 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %53 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i64 %55)
  store %struct.net_device* %56, %struct.net_device** %8, align 8
  br label %57

57:                                               ; preds = %51, %43
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = icmp ne %struct.net_device* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %184

63:                                               ; preds = %57
  %64 = load %struct.net_device*, %struct.net_device** %8, align 8
  %65 = call i32 @rdma_vlan_dev_vlan_id(%struct.net_device* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %67 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %66, i32 0, i32 1
  %68 = load %struct.cma_work*, %struct.cma_work** %67, align 8
  %69 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %68, i32 0, i32 15
  %70 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %71 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @iboe_mac_vlan_to_ll(i32* %69, i32 %73, i32 %74)
  %76 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %77 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %76, i32 0, i32 1
  %78 = load %struct.cma_work*, %struct.cma_work** %77, align 8
  %79 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %78, i32 0, i32 14
  %80 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %81 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @iboe_mac_vlan_to_ll(i32* %79, i32 %83, i32 %84)
  %86 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %87 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %86, i32 0, i32 1
  %88 = load %struct.cma_work*, %struct.cma_work** %87, align 8
  %89 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %91 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %90, i32 0, i32 1
  %92 = load %struct.cma_work*, %struct.cma_work** %91, align 8
  %93 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = call i32 @cpu_to_be16(i32 65535)
  %95 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %96 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %95, i32 0, i32 1
  %97 = load %struct.cma_work*, %struct.cma_work** %96, align 8
  %98 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %97, i32 0, i32 13
  store i32 %94, i32* %98, align 8
  %99 = load i8*, i8** @IB_SA_EQ, align 8
  %100 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %101 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %100, i32 0, i32 1
  %102 = load %struct.cma_work*, %struct.cma_work** %101, align 8
  %103 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %102, i32 0, i32 12
  store i8* %99, i8** %103, align 8
  %104 = load %struct.net_device*, %struct.net_device** %8, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IFF_802_1Q_VLAN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %63
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %111)
  br label %115

113:                                              ; preds = %63
  %114 = load %struct.net_device*, %struct.net_device** %8, align 8
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi %struct.net_device* [ %112, %110 ], [ %114, %113 ]
  %117 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %118 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @rt_tos2priority(i32 %119)
  %121 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %116, i32 %120)
  %122 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %123 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %122, i32 0, i32 1
  %124 = load %struct.cma_work*, %struct.cma_work** %123, align 8
  %125 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %124, i32 0, i32 11
  store i32 %121, i32* %125, align 8
  %126 = load %struct.net_device*, %struct.net_device** %8, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @iboe_get_mtu(i32 %128)
  %130 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %131 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %130, i32 0, i32 1
  %132 = load %struct.cma_work*, %struct.cma_work** %131, align 8
  %133 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %132, i32 0, i32 6
  store i32 %129, i32* %133, align 8
  %134 = load i8*, i8** @IB_SA_EQ, align 8
  %135 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %136 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %135, i32 0, i32 1
  %137 = load %struct.cma_work*, %struct.cma_work** %136, align 8
  %138 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %137, i32 0, i32 10
  store i8* %134, i8** %138, align 8
  %139 = load %struct.net_device*, %struct.net_device** %8, align 8
  %140 = call i32 @iboe_get_rate(%struct.net_device* %139)
  %141 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %142 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %141, i32 0, i32 1
  %143 = load %struct.cma_work*, %struct.cma_work** %142, align 8
  %144 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %143, i32 0, i32 9
  store i32 %140, i32* %144, align 8
  %145 = load %struct.net_device*, %struct.net_device** %8, align 8
  %146 = call i32 @dev_put(%struct.net_device* %145)
  %147 = load i8*, i8** @IB_SA_EQ, align 8
  %148 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %149 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %148, i32 0, i32 1
  %150 = load %struct.cma_work*, %struct.cma_work** %149, align 8
  %151 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %150, i32 0, i32 8
  store i8* %147, i8** %151, align 8
  %152 = load i32, i32* @CMA_IBOE_PACKET_LIFETIME, align 4
  %153 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %154 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %153, i32 0, i32 1
  %155 = load %struct.cma_work*, %struct.cma_work** %154, align 8
  %156 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %155, i32 0, i32 7
  store i32 %152, i32* %156, align 4
  %157 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %158 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %157, i32 0, i32 1
  %159 = load %struct.cma_work*, %struct.cma_work** %158, align 8
  %160 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %115
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %7, align 4
  br label %184

166:                                              ; preds = %115
  %167 = load i32, i32* @RDMA_CM_ROUTE_QUERY, align 4
  %168 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %169 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @RDMA_CM_ROUTE_RESOLVED, align 4
  %171 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %172 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @RDMA_CM_EVENT_ROUTE_RESOLVED, align 4
  %174 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %175 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 8
  %177 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %178 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* @cma_wq, align 4
  %181 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %182 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %181, i32 0, i32 2
  %183 = call i32 @queue_work(i32 %180, i32* %182)
  store i32 0, i32* %2, align 4
  br label %195

184:                                              ; preds = %163, %60
  %185 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %186 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %185, i32 0, i32 1
  %187 = load %struct.cma_work*, %struct.cma_work** %186, align 8
  %188 = call i32 @kfree(%struct.cma_work* %187)
  %189 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %190 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %189, i32 0, i32 1
  store %struct.cma_work* null, %struct.cma_work** %190, align 8
  br label %191

191:                                              ; preds = %184, %40
  %192 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %193 = call i32 @kfree(%struct.cma_work* %192)
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %191, %166, %20
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i64) #1

declare dso_local i32 @rdma_vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @iboe_mac_vlan_to_ll(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @rt_tos2priority(i32) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @iboe_get_rate(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.cma_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
