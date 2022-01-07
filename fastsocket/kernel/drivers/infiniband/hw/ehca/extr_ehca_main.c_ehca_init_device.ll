; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ehca%d\00", align 1
@IB_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_GET_CONTEXT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_PORT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ATTACH_MCAST = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DETACH_MCAST = common dso_local global i64 0, align 8
@RDMA_NODE_IB_CA = common dso_local global i32 0, align 4
@ehca_query_device = common dso_local global i32 0, align 4
@ehca_query_port = common dso_local global i32 0, align 4
@ehca_query_gid = common dso_local global i32 0, align 4
@ehca_query_pkey = common dso_local global i32 0, align 4
@ehca_modify_port = common dso_local global i32 0, align 4
@ehca_alloc_ucontext = common dso_local global i32 0, align 4
@ehca_dealloc_ucontext = common dso_local global i32 0, align 4
@ehca_alloc_pd = common dso_local global i32 0, align 4
@ehca_dealloc_pd = common dso_local global i32 0, align 4
@ehca_create_ah = common dso_local global i32 0, align 4
@ehca_query_ah = common dso_local global i32 0, align 4
@ehca_destroy_ah = common dso_local global i32 0, align 4
@ehca_create_qp = common dso_local global i32 0, align 4
@ehca_modify_qp = common dso_local global i32 0, align 4
@ehca_query_qp = common dso_local global i32 0, align 4
@ehca_destroy_qp = common dso_local global i32 0, align 4
@ehca_post_send = common dso_local global i32 0, align 4
@ehca_post_recv = common dso_local global i32 0, align 4
@ehca_create_cq = common dso_local global i32 0, align 4
@ehca_destroy_cq = common dso_local global i32 0, align 4
@ehca_resize_cq = common dso_local global i32 0, align 4
@ehca_poll_cq = common dso_local global i32 0, align 4
@ehca_req_notify_cq = common dso_local global i32 0, align 4
@ehca_get_dma_mr = common dso_local global i32 0, align 4
@ehca_reg_phys_mr = common dso_local global i32 0, align 4
@ehca_reg_user_mr = common dso_local global i32 0, align 4
@ehca_query_mr = common dso_local global i32 0, align 4
@ehca_dereg_mr = common dso_local global i32 0, align 4
@ehca_rereg_phys_mr = common dso_local global i32 0, align 4
@ehca_alloc_mw = common dso_local global i32 0, align 4
@ehca_bind_mw = common dso_local global i32 0, align 4
@ehca_dealloc_mw = common dso_local global i32 0, align 4
@ehca_alloc_fmr = common dso_local global i32 0, align 4
@ehca_map_phys_fmr = common dso_local global i32 0, align 4
@ehca_unmap_fmr = common dso_local global i32 0, align 4
@ehca_dealloc_fmr = common dso_local global i32 0, align 4
@ehca_attach_mcast = common dso_local global i32 0, align 4
@ehca_detach_mcast = common dso_local global i32 0, align 4
@ehca_process_mad = common dso_local global i32 0, align 4
@ehca_mmap = common dso_local global i32 0, align 4
@ehca_dma_mapping_ops = common dso_local global i32 0, align 4
@HCA_CAP_SRQ = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_CREATE_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_SRQ = common dso_local global i64 0, align 8
@ehca_create_srq = common dso_local global i32 0, align 4
@ehca_modify_srq = common dso_local global i32 0, align 4
@ehca_query_srq = common dso_local global i32 0, align 4
@ehca_destroy_srq = common dso_local global i32 0, align 4
@ehca_post_srq_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_shca*)* @ehca_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_init_device(%struct.ehca_shca* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  %5 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %6 = call i32 @init_node_guid(%struct.ehca_shca* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %303

11:                                               ; preds = %1
  %12 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %13 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 53
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IB_DEVICE_NAME_MAX, align 4
  %17 = call i32 @strlcpy(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %20 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 52
  store i32 %18, i32* %21, align 8
  %22 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %23 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 8, i32* %24, align 8
  %25 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %26 = shl i64 1, %25
  %27 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %28 = shl i64 1, %27
  %29 = or i64 %26, %28
  %30 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %31 = shl i64 1, %30
  %32 = or i64 %29, %31
  %33 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %34 = shl i64 1, %33
  %35 = or i64 %32, %34
  %36 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %37 = shl i64 1, %36
  %38 = or i64 %35, %37
  %39 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %40 = shl i64 1, %39
  %41 = or i64 %38, %40
  %42 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %43 = shl i64 1, %42
  %44 = or i64 %41, %43
  %45 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %46 = shl i64 1, %45
  %47 = or i64 %44, %46
  %48 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %49 = shl i64 1, %48
  %50 = or i64 %47, %49
  %51 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %52 = shl i64 1, %51
  %53 = or i64 %50, %52
  %54 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %55 = shl i64 1, %54
  %56 = or i64 %53, %55
  %57 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %58 = shl i64 1, %57
  %59 = or i64 %56, %58
  %60 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %61 = shl i64 1, %60
  %62 = or i64 %59, %61
  %63 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %64 = shl i64 1, %63
  %65 = or i64 %62, %64
  %66 = load i64, i64* @IB_USER_VERBS_CMD_ATTACH_MCAST, align 8
  %67 = shl i64 1, %66
  %68 = or i64 %65, %67
  %69 = load i64, i64* @IB_USER_VERBS_CMD_DETACH_MCAST, align 8
  %70 = shl i64 1, %69
  %71 = or i64 %68, %70
  %72 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %73 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  %75 = load i32, i32* @RDMA_NODE_IB_CA, align 4
  %76 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %77 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 51
  store i32 %75, i32* %78, align 4
  %79 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %80 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %83 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 50
  store i32 %81, i32* %84, align 8
  %85 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %86 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  %88 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %89 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %93 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 49
  store i32* %91, i32** %94, align 8
  %95 = load i32, i32* @ehca_query_device, align 4
  %96 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %97 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 48
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @ehca_query_port, align 4
  %100 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %101 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 47
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @ehca_query_gid, align 4
  %104 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %105 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 46
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @ehca_query_pkey, align 4
  %108 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %109 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 45
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @ehca_modify_port, align 4
  %112 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %113 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 44
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @ehca_alloc_ucontext, align 4
  %116 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %117 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 43
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @ehca_dealloc_ucontext, align 4
  %120 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %121 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 42
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @ehca_alloc_pd, align 4
  %124 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %125 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 41
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* @ehca_dealloc_pd, align 4
  %128 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %129 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 40
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @ehca_create_ah, align 4
  %132 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %133 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 39
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @ehca_query_ah, align 4
  %136 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %137 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 38
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @ehca_destroy_ah, align 4
  %140 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %141 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 37
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @ehca_create_qp, align 4
  %144 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %145 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 36
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @ehca_modify_qp, align 4
  %148 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %149 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 35
  store i32 %147, i32* %150, align 8
  %151 = load i32, i32* @ehca_query_qp, align 4
  %152 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %153 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 34
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @ehca_destroy_qp, align 4
  %156 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %157 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 33
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* @ehca_post_send, align 4
  %160 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %161 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 32
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @ehca_post_recv, align 4
  %164 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %165 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 31
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* @ehca_create_cq, align 4
  %168 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %169 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 30
  store i32 %167, i32* %170, align 4
  %171 = load i32, i32* @ehca_destroy_cq, align 4
  %172 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %173 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 29
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* @ehca_resize_cq, align 4
  %176 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %177 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 28
  store i32 %175, i32* %178, align 4
  %179 = load i32, i32* @ehca_poll_cq, align 4
  %180 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %181 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 27
  store i32 %179, i32* %182, align 8
  %183 = load i32, i32* @ehca_req_notify_cq, align 4
  %184 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %185 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 26
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @ehca_get_dma_mr, align 4
  %188 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %189 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 25
  store i32 %187, i32* %190, align 8
  %191 = load i32, i32* @ehca_reg_phys_mr, align 4
  %192 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %193 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 24
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @ehca_reg_user_mr, align 4
  %196 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %197 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 23
  store i32 %195, i32* %198, align 8
  %199 = load i32, i32* @ehca_query_mr, align 4
  %200 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %201 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 22
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @ehca_dereg_mr, align 4
  %204 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %205 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 21
  store i32 %203, i32* %206, align 8
  %207 = load i32, i32* @ehca_rereg_phys_mr, align 4
  %208 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %209 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 20
  store i32 %207, i32* %210, align 4
  %211 = load i32, i32* @ehca_alloc_mw, align 4
  %212 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %213 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 19
  store i32 %211, i32* %214, align 8
  %215 = load i32, i32* @ehca_bind_mw, align 4
  %216 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %217 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 18
  store i32 %215, i32* %218, align 4
  %219 = load i32, i32* @ehca_dealloc_mw, align 4
  %220 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %221 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 17
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* @ehca_alloc_fmr, align 4
  %224 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %225 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 16
  store i32 %223, i32* %226, align 4
  %227 = load i32, i32* @ehca_map_phys_fmr, align 4
  %228 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %229 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 15
  store i32 %227, i32* %230, align 8
  %231 = load i32, i32* @ehca_unmap_fmr, align 4
  %232 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %233 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 14
  store i32 %231, i32* %234, align 4
  %235 = load i32, i32* @ehca_dealloc_fmr, align 4
  %236 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %237 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 13
  store i32 %235, i32* %238, align 8
  %239 = load i32, i32* @ehca_attach_mcast, align 4
  %240 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %241 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 12
  store i32 %239, i32* %242, align 4
  %243 = load i32, i32* @ehca_detach_mcast, align 4
  %244 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %245 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 11
  store i32 %243, i32* %246, align 8
  %247 = load i32, i32* @ehca_process_mad, align 4
  %248 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %249 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 10
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* @ehca_mmap, align 4
  %252 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %253 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 9
  store i32 %251, i32* %254, align 8
  %255 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %256 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 8
  store i32* @ehca_dma_mapping_ops, i32** %257, align 8
  %258 = load i32, i32* @HCA_CAP_SRQ, align 4
  %259 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %260 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @EHCA_BMASK_GET(i32 %258, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %301

264:                                              ; preds = %11
  %265 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_SRQ, align 8
  %266 = shl i64 1, %265
  %267 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_SRQ, align 8
  %268 = shl i64 1, %267
  %269 = or i64 %266, %268
  %270 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_SRQ, align 8
  %271 = shl i64 1, %270
  %272 = or i64 %269, %271
  %273 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_SRQ, align 8
  %274 = shl i64 1, %273
  %275 = or i64 %272, %274
  %276 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %277 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = or i64 %279, %275
  store i64 %280, i64* %278, align 8
  %281 = load i32, i32* @ehca_create_srq, align 4
  %282 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %283 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 7
  store i32 %281, i32* %284, align 4
  %285 = load i32, i32* @ehca_modify_srq, align 4
  %286 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %287 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 6
  store i32 %285, i32* %288, align 8
  %289 = load i32, i32* @ehca_query_srq, align 4
  %290 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %291 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 5
  store i32 %289, i32* %292, align 4
  %293 = load i32, i32* @ehca_destroy_srq, align 4
  %294 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %295 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 4
  store i32 %293, i32* %296, align 8
  %297 = load i32, i32* @ehca_post_srq_recv, align 4
  %298 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %299 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 3
  store i32 %297, i32* %300, align 4
  br label %301

301:                                              ; preds = %264, %11
  %302 = load i32, i32* %4, align 4
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %301, %9
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local i32 @init_node_guid(%struct.ehca_shca*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @EHCA_BMASK_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
