; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_iboe_join_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_iboe_join_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i64 }
%struct.cma_multicast = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.iboe_mcast_work* }
%struct.iboe_mcast_work = type { i32, %struct.cma_multicast*, %struct.rdma_id_private*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_PS_UDP = common dso_local global i64 0, align 8
@RDMA_UDP_QKEY = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@iboe_mcast_work_handler = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.cma_multicast*)* @cma_iboe_join_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_iboe_join_multicast(%struct.rdma_id_private* %0, %struct.cma_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_multicast*, align 8
  %6 = alloca %struct.iboe_mcast_work*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.cma_multicast* %1, %struct.cma_multicast** %5, align 8
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.rdma_dev_addr* %15, %struct.rdma_dev_addr** %7, align 8
  %16 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %17 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %16, i32 0, i32 2
  %18 = bitcast i32* %17 to %struct.sockaddr*
  store %struct.sockaddr* %18, %struct.sockaddr** %9, align 8
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %19 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %20 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %19, i32 0, i32 2
  %21 = bitcast i32* %20 to %struct.sockaddr*
  %22 = call i64 @cma_zero_addr(%struct.sockaddr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %172

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i32 56, i32 %28)
  %30 = bitcast i8* %29 to %struct.iboe_mcast_work*
  store %struct.iboe_mcast_work* %30, %struct.iboe_mcast_work** %6, align 8
  %31 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %32 = icmp ne %struct.iboe_mcast_work* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %172

36:                                               ; preds = %27
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.iboe_mcast_work*
  %40 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %41 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store %struct.iboe_mcast_work* %39, %struct.iboe_mcast_work** %42, align 8
  %43 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %44 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %45, align 8
  %47 = icmp ne %struct.iboe_mcast_work* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %168

51:                                               ; preds = %36
  %52 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %53 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %54 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %55, align 8
  %57 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 6
  %59 = call i32 @cma_iboe_set_mgid(%struct.sockaddr* %52, i32* %58)
  %60 = call i32 @cpu_to_be16(i32 65535)
  %61 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %62 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %63, align 8
  %65 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  store i32 %60, i32* %66, align 4
  %67 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %68 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RDMA_PS_UDP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %51
  %74 = load i32, i32* @RDMA_UDP_QKEY, align 4
  %75 = call i32 @cpu_to_be32(i32 %74)
  %76 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %77 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %78, align 8
  %80 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  store i32 %75, i32* %81, align 8
  br label %82

82:                                               ; preds = %73, %51
  %83 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %84 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %89 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i64 %90)
  store %struct.net_device* %91, %struct.net_device** %10, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.net_device*, %struct.net_device** %10, align 8
  %94 = icmp ne %struct.net_device* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %162

98:                                               ; preds = %92
  %99 = load %struct.net_device*, %struct.net_device** %10, align 8
  %100 = call i32 @iboe_get_rate(%struct.net_device* %99)
  %101 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %102 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %103, align 8
  %105 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i32 %100, i32* %106, align 4
  %107 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %108 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %109, align 8
  %111 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.net_device*, %struct.net_device** %10, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @iboe_get_mtu(i32 %115)
  %117 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %118 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %119, align 8
  %121 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  store i32 %116, i32* %122, align 8
  %123 = load %struct.net_device*, %struct.net_device** %10, align 8
  %124 = call i32 @dev_put(%struct.net_device* %123)
  %125 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %126 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %127, align 8
  %129 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %98
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %8, align 4
  br label %162

136:                                              ; preds = %98
  %137 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %138 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %139 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %140, align 8
  %142 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = call i32 @iboe_addr_get_sgid(%struct.rdma_dev_addr* %137, i32* %143)
  %145 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %146 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %147 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %146, i32 0, i32 2
  store %struct.rdma_id_private* %145, %struct.rdma_id_private** %147, align 8
  %148 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %149 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %150 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %149, i32 0, i32 1
  store %struct.cma_multicast* %148, %struct.cma_multicast** %150, align 8
  %151 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %152 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %151, i32 0, i32 0
  %153 = load i32, i32* @iboe_mcast_work_handler, align 4
  %154 = call i32 @INIT_WORK(i32* %152, i32 %153)
  %155 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %156 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %155, i32 0, i32 1
  %157 = call i32 @kref_get(i32* %156)
  %158 = load i32, i32* @cma_wq, align 4
  %159 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %160 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %159, i32 0, i32 0
  %161 = call i32 @queue_work(i32 %158, i32* %160)
  store i32 0, i32* %3, align 4
  br label %172

162:                                              ; preds = %133, %95
  %163 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %164 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %165, align 8
  %167 = call i32 @kfree(%struct.iboe_mcast_work* %166)
  br label %168

168:                                              ; preds = %162, %48
  %169 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %170 = call i32 @kfree(%struct.iboe_mcast_work* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %136, %33, %24
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @cma_zero_addr(%struct.sockaddr*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_iboe_set_mgid(%struct.sockaddr*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i64) #1

declare dso_local i32 @iboe_get_rate(%struct.net_device*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @iboe_addr_get_sgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.iboe_mcast_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
