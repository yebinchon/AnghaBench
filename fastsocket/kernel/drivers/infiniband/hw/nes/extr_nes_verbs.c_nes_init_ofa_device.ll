; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_init_ofa_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_init_ofa_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_ib_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.net_device = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nes%d\00", align 1
@IB_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@RDMA_NODE_RNIC = common dso_local global i32 0, align 4
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
@IB_USER_VERBS_CMD_CREATE_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REQ_NOTIFY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POLL_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_MW = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_BIND_MW = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_MW = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_RECV = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_SEND = common dso_local global i64 0, align 8
@nes_query_device = common dso_local global i32 0, align 4
@nes_query_port = common dso_local global i32 0, align 4
@nes_query_pkey = common dso_local global i32 0, align 4
@nes_query_gid = common dso_local global i32 0, align 4
@nes_alloc_ucontext = common dso_local global i32 0, align 4
@nes_dealloc_ucontext = common dso_local global i32 0, align 4
@nes_mmap = common dso_local global i32 0, align 4
@nes_alloc_pd = common dso_local global i32 0, align 4
@nes_dealloc_pd = common dso_local global i32 0, align 4
@nes_create_ah = common dso_local global i32 0, align 4
@nes_destroy_ah = common dso_local global i32 0, align 4
@nes_create_qp = common dso_local global i32 0, align 4
@nes_modify_qp = common dso_local global i32 0, align 4
@nes_query_qp = common dso_local global i32 0, align 4
@nes_destroy_qp = common dso_local global i32 0, align 4
@nes_create_cq = common dso_local global i32 0, align 4
@nes_destroy_cq = common dso_local global i32 0, align 4
@nes_poll_cq = common dso_local global i32 0, align 4
@nes_get_dma_mr = common dso_local global i32 0, align 4
@nes_reg_phys_mr = common dso_local global i32 0, align 4
@nes_reg_user_mr = common dso_local global i32 0, align 4
@nes_dereg_mr = common dso_local global i32 0, align 4
@nes_alloc_mw = common dso_local global i32 0, align 4
@nes_dealloc_mw = common dso_local global i32 0, align 4
@nes_bind_mw = common dso_local global i32 0, align 4
@nes_alloc_fast_reg_mr = common dso_local global i32 0, align 4
@nes_alloc_fast_reg_page_list = common dso_local global i32 0, align 4
@nes_free_fast_reg_page_list = common dso_local global i32 0, align 4
@nes_multicast_attach = common dso_local global i32 0, align 4
@nes_multicast_detach = common dso_local global i32 0, align 4
@nes_process_mad = common dso_local global i32 0, align 4
@nes_req_notify_cq = common dso_local global i32 0, align 4
@nes_post_send = common dso_local global i32 0, align 4
@nes_post_recv = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nes_add_ref = common dso_local global i32 0, align 4
@nes_rem_ref = common dso_local global i32 0, align 4
@nes_get_qp = common dso_local global i32 0, align 4
@nes_connect = common dso_local global i32 0, align 4
@nes_accept = common dso_local global i32 0, align 4
@nes_reject = common dso_local global i32 0, align 4
@nes_create_listen = common dso_local global i32 0, align 4
@nes_destroy_listen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nes_ib_device* @nes_init_ofa_device(%struct.net_device* %0) #0 {
  %2 = alloca %struct.nes_ib_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nes_ib_device*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %7)
  store %struct.nes_vnic* %8, %struct.nes_vnic** %5, align 8
  %9 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %10 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %9, i32 0, i32 0
  %11 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  store %struct.nes_device* %11, %struct.nes_device** %6, align 8
  %12 = call i64 @ib_alloc_device(i32 192)
  %13 = inttoptr i64 %12 to %struct.nes_ib_device*
  store %struct.nes_ib_device* %13, %struct.nes_ib_device** %4, align 8
  %14 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %15 = icmp eq %struct.nes_ib_device* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.nes_ib_device* null, %struct.nes_ib_device** %2, align 8
  br label %332

17:                                               ; preds = %1
  %18 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %19 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 43
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IB_DEVICE_NAME_MAX, align 4
  %23 = call i32 @strlcpy(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %26 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 42
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @RDMA_NODE_RNIC, align 4
  %29 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %30 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 41
  store i32 %28, i32* %31, align 4
  %32 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %33 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 40
  %35 = call i32 @memset(i32* %34, i32 0, i32 4)
  %36 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %37 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 40
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32* %38, i32 %41, i32 6)
  %43 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %44 = shl i64 1, %43
  %45 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %46 = shl i64 1, %45
  %47 = or i64 %44, %46
  %48 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %49 = shl i64 1, %48
  %50 = or i64 %47, %49
  %51 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %52 = shl i64 1, %51
  %53 = or i64 %50, %52
  %54 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %55 = shl i64 1, %54
  %56 = or i64 %53, %55
  %57 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %58 = shl i64 1, %57
  %59 = or i64 %56, %58
  %60 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %61 = shl i64 1, %60
  %62 = or i64 %59, %61
  %63 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %64 = shl i64 1, %63
  %65 = or i64 %62, %64
  %66 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %67 = shl i64 1, %66
  %68 = or i64 %65, %67
  %69 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %70 = shl i64 1, %69
  %71 = or i64 %68, %70
  %72 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_AH, align 8
  %73 = shl i64 1, %72
  %74 = or i64 %71, %73
  %75 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_AH, align 8
  %76 = shl i64 1, %75
  %77 = or i64 %74, %76
  %78 = load i64, i64* @IB_USER_VERBS_CMD_REQ_NOTIFY_CQ, align 8
  %79 = shl i64 1, %78
  %80 = or i64 %77, %79
  %81 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %82 = shl i64 1, %81
  %83 = or i64 %80, %82
  %84 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %85 = shl i64 1, %84
  %86 = or i64 %83, %85
  %87 = load i64, i64* @IB_USER_VERBS_CMD_POLL_CQ, align 8
  %88 = shl i64 1, %87
  %89 = or i64 %86, %88
  %90 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %91 = shl i64 1, %90
  %92 = or i64 %89, %91
  %93 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_MW, align 8
  %94 = shl i64 1, %93
  %95 = or i64 %92, %94
  %96 = load i64, i64* @IB_USER_VERBS_CMD_BIND_MW, align 8
  %97 = shl i64 1, %96
  %98 = or i64 %95, %97
  %99 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_MW, align 8
  %100 = shl i64 1, %99
  %101 = or i64 %98, %100
  %102 = load i64, i64* @IB_USER_VERBS_CMD_POST_RECV, align 8
  %103 = shl i64 1, %102
  %104 = or i64 %101, %103
  %105 = load i64, i64* @IB_USER_VERBS_CMD_POST_SEND, align 8
  %106 = shl i64 1, %105
  %107 = or i64 %104, %106
  %108 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %109 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  %111 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %112 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i32 1, i32* %113, align 8
  %114 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %115 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  %117 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %118 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %122 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 39
  store i32* %120, i32** %123, align 8
  %124 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %125 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %129 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 38
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32* %127, i32** %131, align 8
  %132 = load i32, i32* @nes_query_device, align 4
  %133 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %134 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 37
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* @nes_query_port, align 4
  %137 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %138 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 36
  store i32 %136, i32* %139, align 8
  %140 = load i32, i32* @nes_query_pkey, align 4
  %141 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %142 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 35
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* @nes_query_gid, align 4
  %145 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %146 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 34
  store i32 %144, i32* %147, align 8
  %148 = load i32, i32* @nes_alloc_ucontext, align 4
  %149 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %150 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 33
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @nes_dealloc_ucontext, align 4
  %153 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %154 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 32
  store i32 %152, i32* %155, align 8
  %156 = load i32, i32* @nes_mmap, align 4
  %157 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %158 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 31
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* @nes_alloc_pd, align 4
  %161 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %162 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 30
  store i32 %160, i32* %163, align 8
  %164 = load i32, i32* @nes_dealloc_pd, align 4
  %165 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %166 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 29
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* @nes_create_ah, align 4
  %169 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %170 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 28
  store i32 %168, i32* %171, align 8
  %172 = load i32, i32* @nes_destroy_ah, align 4
  %173 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %174 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 27
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @nes_create_qp, align 4
  %177 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %178 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 26
  store i32 %176, i32* %179, align 8
  %180 = load i32, i32* @nes_modify_qp, align 4
  %181 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %182 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 25
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @nes_query_qp, align 4
  %185 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %186 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 24
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* @nes_destroy_qp, align 4
  %189 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %190 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 23
  store i32 %188, i32* %191, align 4
  %192 = load i32, i32* @nes_create_cq, align 4
  %193 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %194 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 22
  store i32 %192, i32* %195, align 8
  %196 = load i32, i32* @nes_destroy_cq, align 4
  %197 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %198 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 21
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* @nes_poll_cq, align 4
  %201 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %202 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 20
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* @nes_get_dma_mr, align 4
  %205 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %206 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 19
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* @nes_reg_phys_mr, align 4
  %209 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %210 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 18
  store i32 %208, i32* %211, align 8
  %212 = load i32, i32* @nes_reg_user_mr, align 4
  %213 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %214 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 17
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* @nes_dereg_mr, align 4
  %217 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %218 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 16
  store i32 %216, i32* %219, align 8
  %220 = load i32, i32* @nes_alloc_mw, align 4
  %221 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %222 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 15
  store i32 %220, i32* %223, align 4
  %224 = load i32, i32* @nes_dealloc_mw, align 4
  %225 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %226 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 14
  store i32 %224, i32* %227, align 8
  %228 = load i32, i32* @nes_bind_mw, align 4
  %229 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %230 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 13
  store i32 %228, i32* %231, align 4
  %232 = load i32, i32* @nes_alloc_fast_reg_mr, align 4
  %233 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %234 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 12
  store i32 %232, i32* %235, align 8
  %236 = load i32, i32* @nes_alloc_fast_reg_page_list, align 4
  %237 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %238 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 11
  store i32 %236, i32* %239, align 4
  %240 = load i32, i32* @nes_free_fast_reg_page_list, align 4
  %241 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %242 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 10
  store i32 %240, i32* %243, align 8
  %244 = load i32, i32* @nes_multicast_attach, align 4
  %245 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %246 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 9
  store i32 %244, i32* %247, align 4
  %248 = load i32, i32* @nes_multicast_detach, align 4
  %249 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %250 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 8
  store i32 %248, i32* %251, align 8
  %252 = load i32, i32* @nes_process_mad, align 4
  %253 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %254 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 7
  store i32 %252, i32* %255, align 4
  %256 = load i32, i32* @nes_req_notify_cq, align 4
  %257 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %258 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 6
  store i32 %256, i32* %259, align 8
  %260 = load i32, i32* @nes_post_send, align 4
  %261 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %262 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 5
  store i32 %260, i32* %263, align 4
  %264 = load i32, i32* @nes_post_recv, align 4
  %265 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %266 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 4
  store i32 %264, i32* %267, align 8
  %268 = load i32, i32* @GFP_KERNEL, align 4
  %269 = call %struct.TYPE_7__* @kzalloc(i32 32, i32 %268)
  %270 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %271 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  store %struct.TYPE_7__* %269, %struct.TYPE_7__** %272, align 8
  %273 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %274 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = icmp eq %struct.TYPE_7__* %276, null
  br i1 %277, label %278, label %282

278:                                              ; preds = %17
  %279 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %280 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %279, i32 0, i32 0
  %281 = call i32 @ib_dealloc_device(%struct.TYPE_8__* %280)
  store %struct.nes_ib_device* null, %struct.nes_ib_device** %2, align 8
  br label %332

282:                                              ; preds = %17
  %283 = load i32, i32* @nes_add_ref, align 4
  %284 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %285 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 7
  store i32 %283, i32* %288, align 4
  %289 = load i32, i32* @nes_rem_ref, align 4
  %290 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %291 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 6
  store i32 %289, i32* %294, align 4
  %295 = load i32, i32* @nes_get_qp, align 4
  %296 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %297 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 5
  store i32 %295, i32* %300, align 4
  %301 = load i32, i32* @nes_connect, align 4
  %302 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %303 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 3
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 4
  store i32 %301, i32* %306, align 4
  %307 = load i32, i32* @nes_accept, align 4
  %308 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %309 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 3
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  store i32 %307, i32* %312, align 4
  %313 = load i32, i32* @nes_reject, align 4
  %314 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %315 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 2
  store i32 %313, i32* %318, align 4
  %319 = load i32, i32* @nes_create_listen, align 4
  %320 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %321 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 3
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  store i32 %319, i32* %324, align 4
  %325 = load i32, i32* @nes_destroy_listen, align 4
  %326 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  %327 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  store i32 %325, i32* %330, align 4
  %331 = load %struct.nes_ib_device*, %struct.nes_ib_device** %4, align 8
  store %struct.nes_ib_device* %331, %struct.nes_ib_device** %2, align 8
  br label %332

332:                                              ; preds = %282, %278, %16
  %333 = load %struct.nes_ib_device*, %struct.nes_ib_device** %2, align 8
  ret %struct.nes_ib_device* %333
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ib_alloc_device(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_dealloc_device(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
