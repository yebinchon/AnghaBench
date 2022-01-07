; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_join_ib_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_join_ib_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.cma_multicast = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@RDMA_PS_IPOIB = common dso_local global i64 0, align 8
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cma_ib_mc_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.cma_multicast*)* @cma_join_ib_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_join_ib_multicast(%struct.rdma_id_private* %0, %struct.cma_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_multicast*, align 8
  %6 = alloca %struct.ib_sa_mcmember_rec, align 4
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.cma_multicast* %1, %struct.cma_multicast** %5, align 8
  %10 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %11 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.rdma_dev_addr* %14, %struct.rdma_dev_addr** %7, align 8
  %15 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %16 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %17 = call i32 @ib_addr_get_mgid(%struct.rdma_dev_addr* %15, i32* %16)
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %19 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %27 = call i32 @ib_sa_get_mcmember_rec(i32 %21, i32 %25, i32* %26, %struct.ib_sa_mcmember_rec* %6)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %122

32:                                               ; preds = %2
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %34 = call i32 @cma_set_qkey(%struct.rdma_id_private* %33, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %122

39:                                               ; preds = %32
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %41 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %42 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %41, i32 0, i32 1
  %43 = bitcast i32* %42 to %struct.sockaddr*
  %44 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %45 = call i32 @cma_set_mgid(%struct.rdma_id_private* %40, %struct.sockaddr* %43, i32* %44)
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %47 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cpu_to_be32(i32 %48)
  %50 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %52 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 2
  %53 = call i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr* %51, i32* %52)
  %54 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %55 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %54)
  %56 = call i32 @cpu_to_be16(i32 %55)
  %57 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %60 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %8, align 4
  %74 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %75 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RDMA_PS_IPOIB, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %39
  %81 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %82 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %80, %39
  %93 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %94 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %98 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = load i32, i32* @cma_ib_mc_handler, align 4
  %104 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %105 = call i32 @ib_sa_join_multicast(i32* @sa_client, i32 %96, i32 %100, %struct.ib_sa_mcmember_rec* %6, i32 %101, i32 %102, i32 %103, %struct.cma_multicast* %104)
  %106 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %107 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %110 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %92
  %116 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %117 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @PTR_ERR(i32 %119)
  store i32 %120, i32* %3, align 4
  br label %122

121:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %115, %37, %30
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @ib_addr_get_mgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @ib_sa_get_mcmember_rec(i32, i32, i32*, %struct.ib_sa_mcmember_rec*) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_set_mgid(%struct.rdma_id_private*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i32 @ib_sa_join_multicast(i32*, i32, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, %struct.cma_multicast*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
