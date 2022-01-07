; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_CMD_QUERY_DEV_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS_XOR = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS_TOP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FS_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"BlueFlame available (reg size %d, regs/page %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"BlueFlame not available\0A\00", align 1
@MLX4_DEV_CAP_FLAGS2_REASSIGN_MAC_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_COUNTERS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_VLAN_CONTROL = common dso_local global i32 0, align 4
@MLX4_FLAG_OLD_PORT_CMDS = common dso_local global i32 0, align 4
@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Base MM extensions: flags %08x, rsvd L_Key %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Max ICM size %lld MB\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Max QPs: %d, reserved QPs: %d, entry size: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Max SRQs: %d, reserved SRQs: %d, entry size: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Max CQs: %d, reserved CQs: %d, entry size: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Max EQs: %d, reserved EQs: %d, entry size: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"reserved MPTs: %d, reserved MTTs: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Max PDs: %d, reserved PDs: %d, reserved UARs: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Max QP/MCG: %d, reserved MGMs: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Max CQEs: %d, max WQEs: %d, max SRQ WQEs: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Local CA ACK delay: %d, max MTU: %d, port width cap: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Max SQ desc size: %d, max SQ S/G: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Max RQ desc size: %d, max RQ S/G: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Max GSO size: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Max counters: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Max RSS Table size: %d\0A\00", align 1
@QUERY_DEV_CAP_ACK_DELAY_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ALTC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_AUX_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BF_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BMME_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_C_MPT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_D_MPT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EQC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_MAX_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FW_REASSIGN_MAC = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_LOG_BF_REG_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_LOG_MAX_BF_REGS_PER_PAGE_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_COUNTERS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_CQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_CQ_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_DESC_SZ_RQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_DESC_SZ_SQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_GSO_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_ICM_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MPT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MRW_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MSG_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MTT_SEG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_PD_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_RDMA_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_REQ_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_RES_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SG_RQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SG_SQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SRQ_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_XRC_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MTT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MTU_WIDTH_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PAGE_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QPC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RATE_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RDMARC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_CQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_LKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MRW_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MTT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_PD_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_UAR_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_XRC_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSZ_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_SRQ_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_UAR_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VL_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_ETH_MTU_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAC_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAX_GID_PKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAX_MACVLAN_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAX_VL_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MTU_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_SUPPORTED_TYPE_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_WIDTH_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_dev_cap*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %5, align 8
  %16 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %16, i32 0, i32 71
  store i32 0, i32* %17, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %18)
  store %struct.mlx4_cmd_mailbox* %19, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %24)
  store i32 %25, i32* %3, align 4
  br label %986

26:                                               ; preds = %2
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MLX4_CMD_QUERY_DEV_CAP, align 4
  %35 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %36 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %37 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %30, i32 0, i32 %33, i32 0, i32 0, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %981

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @MLX4_GET(i32 %42, i32* %43, i32 18)
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 15
  %47 = shl i32 1, %46
  %48 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %49 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @MLX4_GET(i32 %50, i32* %51, i32 19)
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 31
  %55 = shl i32 1, %54
  %56 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @MLX4_GET(i32 %58, i32* %59, i32 20)
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 4
  %63 = shl i32 1, %62
  %64 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %65 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @MLX4_GET(i32 %66, i32* %67, i32 21)
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 31
  %71 = shl i32 1, %70
  %72 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %73 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @MLX4_GET(i32 %74, i32* %75, i32 25)
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 1, %77
  %79 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %80 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @MLX4_GET(i32 %81, i32* %82, i32 26)
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 15
  %86 = shl i32 1, %85
  %87 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %88 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @MLX4_GET(i32 %89, i32* %90, i32 27)
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 31
  %94 = shl i32 1, %93
  %95 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %96 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @MLX4_GET(i32 %97, i32* %98, i32 29)
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, 63
  %102 = shl i32 1, %101
  %103 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %104 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @MLX4_GET(i32 %105, i32* %106, i32 30)
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, 15
  %110 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @MLX4_GET(i32 %112, i32* %113, i32 31)
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 15
  %117 = shl i32 1, %116
  %118 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %119 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @MLX4_GET(i32 %120, i32* %121, i32 32)
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 4
  %125 = shl i32 1, %124
  %126 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %127 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @MLX4_GET(i32 %128, i32* %129, i32 33)
  %131 = load i32, i32* %8, align 4
  %132 = shl i32 1, %131
  %133 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %134 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %133, i32 0, i32 11
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @MLX4_GET(i32 %135, i32* %136, i32 34)
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, 15
  %140 = shl i32 1, %139
  %141 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %142 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %141, i32 0, i32 12
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @MLX4_GET(i32 %143, i32* %144, i32 35)
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, 63
  %148 = shl i32 1, %147
  %149 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %150 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %149, i32 0, i32 13
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @MLX4_GET(i32 %151, i32* %152, i32 41)
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, 63
  %156 = shl i32 1, %155
  %157 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %158 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %157, i32 0, i32 14
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @MLX4_GET(i32 %159, i32* %160, i32 43)
  %162 = load i32, i32* %8, align 4
  %163 = and i32 %162, 63
  %164 = shl i32 1, %163
  %165 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %166 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %165, i32 0, i32 15
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @MLX4_GET(i32 %167, i32* %168, i32 45)
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, 31
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %41
  %175 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %176 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %175, i32 0, i32 16
  store i32 0, i32* %176, align 8
  br label %182

177:                                              ; preds = %41
  %178 = load i32, i32* %8, align 4
  %179 = shl i32 1, %178
  %180 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %181 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %180, i32 0, i32 16
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %177, %174
  %183 = load i32, i32* %8, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @MLX4_GET(i32 %183, i32* %184, i32 46)
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, 32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS_XOR, align 4
  %191 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %192 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %191, i32 0, i32 71
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %182
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %196, 16
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS_TOP, align 4
  %201 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %202 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %201, i32 0, i32 71
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %195
  %206 = load i32, i32* %8, align 4
  %207 = and i32 %206, 15
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %205
  %211 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS, align 4
  %212 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %213 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %212, i32 0, i32 71
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %8, align 4
  %217 = shl i32 1, %216
  %218 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %219 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %218, i32 0, i32 17
  store i32 %217, i32* %219, align 4
  br label %223

220:                                              ; preds = %205
  %221 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %222 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %221, i32 0, i32 17
  store i32 0, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %210
  %224 = load i32, i32* %8, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @MLX4_GET(i32 %224, i32* %225, i32 47)
  %227 = load i32, i32* %8, align 4
  %228 = and i32 %227, 63
  %229 = shl i32 1, %228
  %230 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %231 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %230, i32 0, i32 18
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = call i32 @MLX4_GET(i32 %232, i32* %233, i32 53)
  %235 = load i32, i32* %8, align 4
  %236 = and i32 %235, 31
  %237 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %238 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %237, i32 0, i32 19
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = call i32 @MLX4_GET(i32 %239, i32* %240, i32 55)
  %242 = load i32, i32* %8, align 4
  %243 = and i32 %242, 15
  %244 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %245 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %244, i32 0, i32 20
  store i32 %243, i32* %245, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = call i32 @MLX4_GET(i32 %246, i32* %247, i32 56)
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, 31
  %251 = shl i32 1, %250
  %252 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %253 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %252, i32 0, i32 21
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %8, align 4
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 @MLX4_GET(i32 %254, i32* %255, i32 118)
  %257 = load i32, i32* %8, align 4
  %258 = and i32 %257, 128
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %223
  %261 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FS_EN, align 4
  %262 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %263 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %262, i32 0, i32 71
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %223
  %267 = load i32, i32* %8, align 4
  %268 = and i32 %267, 31
  %269 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %270 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %269, i32 0, i32 22
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* %8, align 4
  %272 = load i32*, i32** %7, align 8
  %273 = call i32 @MLX4_GET(i32 %271, i32* %272, i32 119)
  %274 = load i32, i32* %8, align 4
  %275 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %276 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %275, i32 0, i32 23
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %13, align 4
  %278 = load i32*, i32** %7, align 8
  %279 = call i32 @MLX4_GET(i32 %277, i32* %278, i32 60)
  %280 = load i32, i32* %13, align 4
  %281 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %282 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %281, i32 0, i32 24
  store i32 %280, i32* %282, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load i32*, i32** %7, align 8
  %285 = call i32 @MLX4_GET(i32 %283, i32* %284, i32 62)
  %286 = load i32, i32* %8, align 4
  %287 = and i32 %286, 128
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %266
  %290 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %291 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %292 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %291, i32 0, i32 71
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %289, %266
  %296 = load i32, i32* %11, align 4
  %297 = load i32*, i32** %7, align 8
  %298 = call i32 @MLX4_GET(i32 %296, i32* %297, i32 64)
  %299 = load i32, i32* %10, align 4
  %300 = load i32*, i32** %7, align 8
  %301 = call i32 @MLX4_GET(i32 %299, i32* %300, i32 68)
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %11, align 4
  %304 = shl i32 %303, 32
  %305 = or i32 %302, %304
  %306 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %307 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %306, i32 0, i32 25
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* %8, align 4
  %309 = load i32*, i32** %7, align 8
  %310 = call i32 @MLX4_GET(i32 %308, i32* %309, i32 72)
  %311 = load i32, i32* %8, align 4
  %312 = ashr i32 %311, 4
  %313 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %314 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %313, i32 0, i32 26
  store i32 %312, i32* %314, align 8
  %315 = load i32, i32* %8, align 4
  %316 = load i32*, i32** %7, align 8
  %317 = call i32 @MLX4_GET(i32 %315, i32* %316, i32 73)
  %318 = load i32, i32* %8, align 4
  %319 = and i32 %318, 63
  %320 = add nsw i32 %319, 20
  %321 = shl i32 1, %320
  %322 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %323 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %322, i32 0, i32 27
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32*, i32** %7, align 8
  %326 = call i32 @MLX4_GET(i32 %324, i32* %325, i32 75)
  %327 = load i32, i32* %8, align 4
  %328 = shl i32 1, %327
  %329 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %330 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %329, i32 0, i32 28
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* %8, align 4
  %332 = load i32*, i32** %7, align 8
  %333 = call i32 @MLX4_GET(i32 %331, i32* %332, i32 76)
  %334 = load i32, i32* %8, align 4
  %335 = and i32 %334, 128
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %373

337:                                              ; preds = %295
  %338 = load i32, i32* %8, align 4
  %339 = load i32*, i32** %7, align 8
  %340 = call i32 @MLX4_GET(i32 %338, i32* %339, i32 77)
  %341 = load i32, i32* %8, align 4
  %342 = and i32 %341, 31
  %343 = shl i32 1, %342
  %344 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %345 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %344, i32 0, i32 29
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* %8, align 4
  %347 = load i32*, i32** %7, align 8
  %348 = call i32 @MLX4_GET(i32 %346, i32* %347, i32 78)
  %349 = load i32, i32* %8, align 4
  %350 = and i32 %349, 63
  %351 = shl i32 1, %350
  %352 = load i32, i32* @PAGE_SIZE, align 4
  %353 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %354 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %353, i32 0, i32 29
  %355 = load i32, i32* %354, align 4
  %356 = sdiv i32 %352, %355
  %357 = icmp sgt i32 %351, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %337
  store i32 3, i32* %8, align 4
  br label %359

359:                                              ; preds = %358, %337
  %360 = load i32, i32* %8, align 4
  %361 = and i32 %360, 63
  %362 = shl i32 1, %361
  %363 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %364 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %363, i32 0, i32 30
  store i32 %362, i32* %364, align 8
  %365 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %366 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %367 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %366, i32 0, i32 29
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %370 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %369, i32 0, i32 30
  %371 = load i32, i32* %370, align 8
  %372 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %365, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %368, i32 %371)
  br label %378

373:                                              ; preds = %295
  %374 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %375 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %374, i32 0, i32 29
  store i32 0, i32* %375, align 4
  %376 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %377 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %376, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %378

378:                                              ; preds = %373, %359
  %379 = load i32, i32* %8, align 4
  %380 = load i32*, i32** %7, align 8
  %381 = call i32 @MLX4_GET(i32 %379, i32* %380, i32 81)
  %382 = load i32, i32* %8, align 4
  %383 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %384 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %383, i32 0, i32 31
  store i32 %382, i32* %384, align 4
  %385 = load i32, i32* %12, align 4
  %386 = load i32*, i32** %7, align 8
  %387 = call i32 @MLX4_GET(i32 %385, i32* %386, i32 82)
  %388 = load i32, i32* %12, align 4
  %389 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %390 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %389, i32 0, i32 32
  store i32 %388, i32* %390, align 8
  %391 = load i32, i32* %8, align 4
  %392 = load i32*, i32** %7, align 8
  %393 = call i32 @MLX4_GET(i32 %391, i32* %392, i32 97)
  %394 = load i32, i32* %8, align 4
  %395 = shl i32 1, %394
  %396 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %397 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %396, i32 0, i32 33
  store i32 %395, i32* %397, align 4
  %398 = load i32, i32* %8, align 4
  %399 = load i32*, i32** %7, align 8
  %400 = call i32 @MLX4_GET(i32 %398, i32* %399, i32 98)
  %401 = load i32, i32* %8, align 4
  %402 = and i32 %401, 15
  %403 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %404 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %403, i32 0, i32 34
  store i32 %402, i32* %404, align 8
  %405 = load i32, i32* %8, align 4
  %406 = load i32*, i32** %7, align 8
  %407 = call i32 @MLX4_GET(i32 %405, i32* %406, i32 99)
  %408 = load i32, i32* %8, align 4
  %409 = shl i32 1, %408
  %410 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %411 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %410, i32 0, i32 35
  store i32 %409, i32* %411, align 4
  %412 = load i32, i32* %8, align 4
  %413 = load i32*, i32** %7, align 8
  %414 = call i32 @MLX4_GET(i32 %412, i32* %413, i32 100)
  %415 = load i32, i32* %8, align 4
  %416 = ashr i32 %415, 4
  %417 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %418 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %417, i32 0, i32 36
  store i32 %416, i32* %418, align 8
  %419 = load i32, i32* %8, align 4
  %420 = load i32*, i32** %7, align 8
  %421 = call i32 @MLX4_GET(i32 %419, i32* %420, i32 101)
  %422 = load i32, i32* %8, align 4
  %423 = and i32 %422, 63
  %424 = shl i32 1, %423
  %425 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %426 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %425, i32 0, i32 37
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* %8, align 4
  %428 = load i32*, i32** %7, align 8
  %429 = call i32 @MLX4_GET(i32 %427, i32* %428, i32 102)
  %430 = load i32, i32* %8, align 4
  %431 = ashr i32 %430, 4
  %432 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %433 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %432, i32 0, i32 38
  store i32 %431, i32* %433, align 8
  %434 = load i32, i32* %8, align 4
  %435 = load i32*, i32** %7, align 8
  %436 = call i32 @MLX4_GET(i32 %434, i32* %435, i32 103)
  %437 = load i32, i32* %8, align 4
  %438 = and i32 %437, 31
  %439 = shl i32 1, %438
  %440 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %441 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %440, i32 0, i32 39
  store i32 %439, i32* %441, align 4
  %442 = load i32, i32* %12, align 4
  %443 = load i32*, i32** %7, align 8
  %444 = call i32 @MLX4_GET(i32 %442, i32* %443, i32 128)
  %445 = load i32, i32* %12, align 4
  %446 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %447 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %446, i32 0, i32 40
  store i32 %445, i32* %447, align 8
  %448 = load i32, i32* %12, align 4
  %449 = load i32*, i32** %7, align 8
  %450 = call i32 @MLX4_GET(i32 %448, i32* %449, i32 130)
  %451 = load i32, i32* %12, align 4
  %452 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %453 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %452, i32 0, i32 41
  store i32 %451, i32* %453, align 4
  %454 = load i32, i32* %12, align 4
  %455 = load i32*, i32** %7, align 8
  %456 = call i32 @MLX4_GET(i32 %454, i32* %455, i32 132)
  %457 = load i32, i32* %12, align 4
  %458 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %459 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %458, i32 0, i32 42
  store i32 %457, i32* %459, align 8
  %460 = load i32, i32* %12, align 4
  %461 = load i32*, i32** %7, align 8
  %462 = call i32 @MLX4_GET(i32 %460, i32* %461, i32 134)
  %463 = load i32, i32* %12, align 4
  %464 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %465 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %464, i32 0, i32 43
  store i32 %463, i32* %465, align 4
  %466 = load i32, i32* %12, align 4
  %467 = load i32*, i32** %7, align 8
  %468 = call i32 @MLX4_GET(i32 %466, i32* %467, i32 136)
  %469 = load i32, i32* %12, align 4
  %470 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %471 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %470, i32 0, i32 44
  store i32 %469, i32* %471, align 8
  %472 = load i32, i32* %12, align 4
  %473 = load i32*, i32** %7, align 8
  %474 = call i32 @MLX4_GET(i32 %472, i32* %473, i32 138)
  %475 = load i32, i32* %12, align 4
  %476 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %477 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %476, i32 0, i32 45
  store i32 %475, i32* %477, align 4
  %478 = load i32, i32* %12, align 4
  %479 = load i32*, i32** %7, align 8
  %480 = call i32 @MLX4_GET(i32 %478, i32* %479, i32 140)
  %481 = load i32, i32* %12, align 4
  %482 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %483 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %482, i32 0, i32 46
  store i32 %481, i32* %483, align 8
  %484 = load i32, i32* %12, align 4
  %485 = load i32*, i32** %7, align 8
  %486 = call i32 @MLX4_GET(i32 %484, i32* %485, i32 142)
  %487 = load i32, i32* %12, align 4
  %488 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %489 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %488, i32 0, i32 47
  store i32 %487, i32* %489, align 4
  %490 = load i32, i32* %12, align 4
  %491 = load i32*, i32** %7, align 8
  %492 = call i32 @MLX4_GET(i32 %490, i32* %491, i32 144)
  %493 = load i32, i32* %12, align 4
  %494 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %495 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %494, i32 0, i32 48
  store i32 %493, i32* %495, align 8
  %496 = load i32, i32* %12, align 4
  %497 = load i32*, i32** %7, align 8
  %498 = call i32 @MLX4_GET(i32 %496, i32* %497, i32 146)
  %499 = load i32, i32* %12, align 4
  %500 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %501 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %500, i32 0, i32 49
  store i32 %499, i32* %501, align 4
  %502 = load i32, i32* %8, align 4
  %503 = load i32*, i32** %7, align 8
  %504 = call i32 @MLX4_GET(i32 %502, i32* %503, i32 16)
  %505 = load i32, i32* %8, align 4
  %506 = shl i32 1, %505
  %507 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %508 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %507, i32 0, i32 50
  store i32 %506, i32* %508, align 8
  %509 = load i32, i32* %8, align 4
  %510 = load i32*, i32** %7, align 8
  %511 = call i32 @MLX4_GET(i32 %509, i32* %510, i32 17)
  %512 = load i32, i32* %8, align 4
  %513 = shl i32 1, %512
  %514 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %515 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %514, i32 0, i32 51
  store i32 %513, i32* %515, align 4
  %516 = load i32, i32* %8, align 4
  %517 = load i32*, i32** %7, align 8
  %518 = call i32 @MLX4_GET(i32 %516, i32* %517, i32 51)
  %519 = load i32, i32* %8, align 4
  %520 = and i32 %519, 1
  %521 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %522 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %521, i32 0, i32 52
  store i32 %520, i32* %522, align 8
  %523 = load i32, i32* %8, align 4
  %524 = load i32*, i32** %7, align 8
  %525 = call i32 @MLX4_GET(i32 %523, i32* %524, i32 85)
  %526 = load i32, i32* %8, align 4
  %527 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %528 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %527, i32 0, i32 53
  store i32 %526, i32* %528, align 4
  %529 = load i32, i32* %12, align 4
  %530 = load i32*, i32** %7, align 8
  %531 = call i32 @MLX4_GET(i32 %529, i32* %530, i32 86)
  %532 = load i32, i32* %12, align 4
  %533 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %534 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %533, i32 0, i32 54
  store i32 %532, i32* %534, align 8
  %535 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %536 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %535, i32 0, i32 55
  %537 = load i32, i32* %536, align 4
  %538 = load i32*, i32** %7, align 8
  %539 = call i32 @MLX4_GET(i32 %537, i32* %538, i32 148)
  %540 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %541 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %540, i32 0, i32 56
  %542 = load i32, i32* %541, align 8
  %543 = load i32*, i32** %7, align 8
  %544 = call i32 @MLX4_GET(i32 %542, i32* %543, i32 152)
  %545 = load i32, i32* %8, align 4
  %546 = load i32*, i32** %7, align 8
  %547 = call i32 @MLX4_GET(i32 %545, i32* %546, i32 157)
  %548 = load i32, i32* %8, align 4
  %549 = and i32 %548, 64
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %557

551:                                              ; preds = %378
  %552 = load i32, i32* @MLX4_DEV_CAP_FLAGS2_REASSIGN_MAC_EN, align 4
  %553 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %554 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %553, i32 0, i32 71
  %555 = load i32, i32* %554, align 8
  %556 = or i32 %555, %552
  store i32 %556, i32* %554, align 8
  br label %557

557:                                              ; preds = %551, %378
  %558 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %559 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %558, i32 0, i32 57
  %560 = load i32, i32* %559, align 4
  %561 = load i32*, i32** %7, align 8
  %562 = call i32 @MLX4_GET(i32 %560, i32* %561, i32 160)
  %563 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %564 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %563, i32 0, i32 25
  %565 = load i32, i32* %564, align 4
  %566 = load i32, i32* @MLX4_DEV_CAP_FLAG_COUNTERS, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %575

569:                                              ; preds = %557
  %570 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %571 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %570, i32 0, i32 58
  %572 = load i32, i32* %571, align 8
  %573 = load i32*, i32** %7, align 8
  %574 = call i32 @MLX4_GET(i32 %572, i32* %573, i32 104)
  br label %575

575:                                              ; preds = %569, %557
  %576 = load i32, i32* %9, align 4
  %577 = load i32*, i32** %7, align 8
  %578 = call i32 @MLX4_GET(i32 %576, i32* %577, i32 112)
  %579 = load i32, i32* %9, align 4
  %580 = and i32 %579, 65536
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %588

582:                                              ; preds = %575
  %583 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP, align 4
  %584 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %585 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %584, i32 0, i32 71
  %586 = load i32, i32* %585, align 8
  %587 = or i32 %586, %583
  store i32 %587, i32* %585, align 8
  br label %588

588:                                              ; preds = %582, %575
  %589 = load i32, i32* %9, align 4
  %590 = and i32 %589, 67108864
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %598

592:                                              ; preds = %588
  %593 = load i32, i32* @MLX4_DEV_CAP_FLAG2_VLAN_CONTROL, align 4
  %594 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %595 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %594, i32 0, i32 71
  %596 = load i32, i32* %595, align 8
  %597 = or i32 %596, %593
  store i32 %597, i32* %595, align 8
  br label %598

598:                                              ; preds = %592, %588
  %599 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %600 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* @MLX4_FLAG_OLD_PORT_CMDS, align 4
  %603 = and i32 %601, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %671

605:                                              ; preds = %598
  store i32 1, i32* %15, align 4
  br label %606

606:                                              ; preds = %667, %605
  %607 = load i32, i32* %15, align 4
  %608 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %609 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %608, i32 0, i32 20
  %610 = load i32, i32* %609, align 8
  %611 = icmp sle i32 %607, %610
  br i1 %611, label %612, label %670

612:                                              ; preds = %606
  %613 = load i32, i32* %8, align 4
  %614 = load i32*, i32** %7, align 8
  %615 = call i32 @MLX4_GET(i32 %613, i32* %614, i32 55)
  %616 = load i32, i32* %8, align 4
  %617 = ashr i32 %616, 4
  %618 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %619 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %618, i32 0, i32 59
  %620 = load i32*, i32** %619, align 8
  %621 = load i32, i32* %15, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32, i32* %620, i64 %622
  store i32 %617, i32* %623, align 4
  %624 = load i32, i32* %8, align 4
  %625 = load i32*, i32** %7, align 8
  %626 = call i32 @MLX4_GET(i32 %624, i32* %625, i32 54)
  %627 = load i32, i32* %8, align 4
  %628 = ashr i32 %627, 4
  %629 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %630 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %629, i32 0, i32 60
  %631 = load i32*, i32** %630, align 8
  %632 = load i32, i32* %15, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i32, i32* %631, i64 %633
  store i32 %628, i32* %634, align 4
  %635 = load i32, i32* %8, align 4
  %636 = and i32 %635, 15
  %637 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %638 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %637, i32 0, i32 61
  %639 = load i32*, i32** %638, align 8
  %640 = load i32, i32* %15, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i32, i32* %639, i64 %641
  store i32 %636, i32* %642, align 4
  %643 = load i32, i32* %8, align 4
  %644 = load i32*, i32** %7, align 8
  %645 = call i32 @MLX4_GET(i32 %643, i32* %644, i32 59)
  %646 = load i32, i32* %8, align 4
  %647 = and i32 %646, 15
  %648 = shl i32 1, %647
  %649 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %650 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %649, i32 0, i32 62
  %651 = load i32*, i32** %650, align 8
  %652 = load i32, i32* %15, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i32, i32* %651, i64 %653
  store i32 %648, i32* %654, align 4
  %655 = load i32, i32* %8, align 4
  %656 = load i32*, i32** %7, align 8
  %657 = call i32 @MLX4_GET(i32 %655, i32* %656, i32 63)
  %658 = load i32, i32* %8, align 4
  %659 = and i32 %658, 15
  %660 = shl i32 1, %659
  %661 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %662 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %661, i32 0, i32 63
  %663 = load i32*, i32** %662, align 8
  %664 = load i32, i32* %15, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i32, i32* %663, i64 %665
  store i32 %660, i32* %666, align 4
  br label %667

667:                                              ; preds = %612
  %668 = load i32, i32* %15, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %15, align 4
  br label %606

670:                                              ; preds = %606
  br label %816

671:                                              ; preds = %598
  store i32 1, i32* %15, align 4
  br label %672

672:                                              ; preds = %812, %671
  %673 = load i32, i32* %15, align 4
  %674 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %675 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %674, i32 0, i32 20
  %676 = load i32, i32* %675, align 8
  %677 = icmp sle i32 %673, %676
  br i1 %677, label %678, label %815

678:                                              ; preds = %672
  %679 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %680 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %681 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 8
  %683 = load i32, i32* %15, align 4
  %684 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %685 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %686 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %687 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %679, i32 0, i32 %682, i32 %683, i32 0, i32 %684, i32 %685, i32 %686)
  store i32 %687, i32* %14, align 4
  %688 = load i32, i32* %14, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %691

690:                                              ; preds = %678
  br label %981

691:                                              ; preds = %678
  %692 = load i32, i32* %8, align 4
  %693 = load i32*, i32** %7, align 8
  %694 = call i32 @MLX4_GET(i32 %692, i32* %693, i32 0)
  %695 = load i32, i32* %8, align 4
  %696 = and i32 %695, 3
  %697 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %698 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %697, i32 0, i32 64
  %699 = load i32*, i32** %698, align 8
  %700 = load i32, i32* %15, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %699, i64 %701
  store i32 %696, i32* %702, align 4
  %703 = load i32, i32* %8, align 4
  %704 = ashr i32 %703, 3
  %705 = and i32 %704, 1
  %706 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %707 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %706, i32 0, i32 65
  %708 = load i32*, i32** %707, align 8
  %709 = load i32, i32* %15, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  store i32 %705, i32* %711, align 4
  %712 = load i32, i32* %8, align 4
  %713 = ashr i32 %712, 4
  %714 = and i32 %713, 1
  %715 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %716 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %715, i32 0, i32 66
  %717 = load i32*, i32** %716, align 8
  %718 = load i32, i32* %15, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds i32, i32* %717, i64 %719
  store i32 %714, i32* %720, align 4
  %721 = load i32, i32* %8, align 4
  %722 = load i32*, i32** %7, align 8
  %723 = call i32 @MLX4_GET(i32 %721, i32* %722, i32 1)
  %724 = load i32, i32* %8, align 4
  %725 = and i32 %724, 15
  %726 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %727 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %726, i32 0, i32 60
  %728 = load i32*, i32** %727, align 8
  %729 = load i32, i32* %15, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i32, i32* %728, i64 %730
  store i32 %725, i32* %731, align 4
  %732 = load i32, i32* %8, align 4
  %733 = load i32*, i32** %7, align 8
  %734 = call i32 @MLX4_GET(i32 %732, i32* %733, i32 6)
  %735 = load i32, i32* %8, align 4
  %736 = and i32 %735, 15
  %737 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %738 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %737, i32 0, i32 61
  %739 = load i32*, i32** %738, align 8
  %740 = load i32, i32* %15, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i32, i32* %739, i64 %741
  store i32 %736, i32* %742, align 4
  %743 = load i32, i32* %8, align 4
  %744 = load i32*, i32** %7, align 8
  %745 = call i32 @MLX4_GET(i32 %743, i32* %744, i32 7)
  %746 = load i32, i32* %8, align 4
  %747 = ashr i32 %746, 4
  %748 = shl i32 1, %747
  %749 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %750 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %749, i32 0, i32 62
  %751 = load i32*, i32** %750, align 8
  %752 = load i32, i32* %15, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i32, i32* %751, i64 %753
  store i32 %748, i32* %754, align 4
  %755 = load i32, i32* %8, align 4
  %756 = and i32 %755, 15
  %757 = shl i32 1, %756
  %758 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %759 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %758, i32 0, i32 63
  %760 = load i32*, i32** %759, align 8
  %761 = load i32, i32* %15, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32, i32* %760, i64 %762
  store i32 %757, i32* %763, align 4
  %764 = load i32, i32* %8, align 4
  %765 = load i32*, i32** %7, align 8
  %766 = call i32 @MLX4_GET(i32 %764, i32* %765, i32 11)
  %767 = load i32, i32* %8, align 4
  %768 = and i32 %767, 15
  %769 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %770 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %769, i32 0, i32 59
  %771 = load i32*, i32** %770, align 8
  %772 = load i32, i32* %15, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i32, i32* %771, i64 %773
  store i32 %768, i32* %774, align 4
  %775 = load i32, i32* %8, align 4
  %776 = load i32*, i32** %7, align 8
  %777 = call i32 @MLX4_GET(i32 %775, i32* %776, i32 10)
  %778 = load i32, i32* %8, align 4
  %779 = and i32 %778, 15
  %780 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %781 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %780, i32 0, i32 67
  %782 = load i32*, i32** %781, align 8
  %783 = load i32, i32* %15, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i32, i32* %782, i64 %784
  store i32 %779, i32* %785, align 4
  %786 = load i32, i32* %8, align 4
  %787 = ashr i32 %786, 4
  %788 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %789 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %788, i32 0, i32 68
  %790 = load i32*, i32** %789, align 8
  %791 = load i32, i32* %15, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i32, i32* %790, i64 %792
  store i32 %787, i32* %793, align 4
  %794 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %795 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %794, i32 0, i32 69
  %796 = load i32*, i32** %795, align 8
  %797 = load i32, i32* %15, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds i32, i32* %796, i64 %798
  %800 = load i32, i32* %799, align 4
  %801 = load i32*, i32** %7, align 8
  %802 = call i32 @MLX4_GET(i32 %800, i32* %801, i32 2)
  %803 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %804 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %803, i32 0, i32 70
  %805 = load i32*, i32** %804, align 8
  %806 = load i32, i32* %15, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds i32, i32* %805, i64 %807
  %809 = load i32, i32* %808, align 4
  %810 = load i32*, i32** %7, align 8
  %811 = call i32 @MLX4_GET(i32 %809, i32* %810, i32 16)
  br label %812

812:                                              ; preds = %691
  %813 = load i32, i32* %15, align 4
  %814 = add nsw i32 %813, 1
  store i32 %814, i32* %15, align 4
  br label %672

815:                                              ; preds = %672
  br label %816

816:                                              ; preds = %815, %670
  %817 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %818 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %819 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %818, i32 0, i32 55
  %820 = load i32, i32* %819, align 4
  %821 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %822 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %821, i32 0, i32 56
  %823 = load i32, i32* %822, align 8
  %824 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %817, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %820, i32 %823)
  %825 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %826 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %825, i32 0, i32 26
  %827 = load i32, i32* %826, align 8
  %828 = mul nsw i32 %827, 4
  %829 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %830 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %829, i32 0, i32 8
  %831 = load i32, i32* %830, align 8
  %832 = call i32 @max(i32 %828, i32 %831)
  %833 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %834 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %833, i32 0, i32 8
  store i32 %832, i32* %834, align 8
  %835 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %836 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %837 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %836, i32 0, i32 57
  %838 = load i32, i32* %837, align 4
  %839 = sext i32 %838 to i64
  %840 = lshr i64 %839, 20
  %841 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %835, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %840)
  %842 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %843 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %844 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %843, i32 0, i32 1
  %845 = load i32, i32* %844, align 4
  %846 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %847 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 8
  %849 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %850 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %849, i32 0, i32 41
  %851 = load i32, i32* %850, align 4
  %852 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %842, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %845, i32 %848, i32 %851)
  %853 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %854 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %855 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %854, i32 0, i32 3
  %856 = load i32, i32* %855, align 4
  %857 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %858 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %857, i32 0, i32 2
  %859 = load i32, i32* %858, align 8
  %860 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %861 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %860, i32 0, i32 46
  %862 = load i32, i32* %861, align 8
  %863 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %853, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %856, i32 %859, i32 %862)
  %864 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %865 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %866 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %865, i32 0, i32 6
  %867 = load i32, i32* %866, align 8
  %868 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %869 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %868, i32 0, i32 5
  %870 = load i32, i32* %869, align 4
  %871 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %872 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %871, i32 0, i32 45
  %873 = load i32, i32* %872, align 4
  %874 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %864, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %867, i32 %870, i32 %873)
  %875 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %876 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %877 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %876, i32 0, i32 9
  %878 = load i32, i32* %877, align 4
  %879 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %880 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %879, i32 0, i32 8
  %881 = load i32, i32* %880, align 8
  %882 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %883 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %882, i32 0, i32 44
  %884 = load i32, i32* %883, align 8
  %885 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %875, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %878, i32 %881, i32 %884)
  %886 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %887 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %888 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %887, i32 0, i32 12
  %889 = load i32, i32* %888, align 8
  %890 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %891 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %890, i32 0, i32 10
  %892 = load i32, i32* %891, align 8
  %893 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %886, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %889, i32 %892)
  %894 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %895 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %896 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %895, i32 0, i32 37
  %897 = load i32, i32* %896, align 4
  %898 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %899 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %898, i32 0, i32 36
  %900 = load i32, i32* %899, align 8
  %901 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %902 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %901, i32 0, i32 26
  %903 = load i32, i32* %902, align 8
  %904 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %894, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %897, i32 %900, i32 %903)
  %905 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %906 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %907 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %906, i32 0, i32 37
  %908 = load i32, i32* %907, align 4
  %909 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %910 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %909, i32 0, i32 34
  %911 = load i32, i32* %910, align 8
  %912 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %905, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %908, i32 %911)
  %913 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %914 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %915 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %914, i32 0, i32 4
  %916 = load i32, i32* %915, align 8
  %917 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %918 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %917, i32 0, i32 51
  %919 = load i32, i32* %918, align 4
  %920 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %921 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %920, i32 0, i32 50
  %922 = load i32, i32* %921, align 8
  %923 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %913, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %916, i32 %919, i32 %922)
  %924 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %925 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %926 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %925, i32 0, i32 19
  %927 = load i32, i32* %926, align 4
  %928 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %929 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %928, i32 0, i32 60
  %930 = load i32*, i32** %929, align 8
  %931 = getelementptr inbounds i32, i32* %930, i64 1
  %932 = load i32, i32* %931, align 4
  %933 = shl i32 128, %932
  %934 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %935 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %934, i32 0, i32 61
  %936 = load i32*, i32** %935, align 8
  %937 = getelementptr inbounds i32, i32* %936, i64 1
  %938 = load i32, i32* %937, align 4
  %939 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %924, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i32 %927, i32 %933, i32 %938)
  %940 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %941 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %942 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %941, i32 0, i32 32
  %943 = load i32, i32* %942, align 8
  %944 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %945 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %944, i32 0, i32 31
  %946 = load i32, i32* %945, align 4
  %947 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %940, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %943, i32 %946)
  %948 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %949 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %950 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %949, i32 0, i32 54
  %951 = load i32, i32* %950, align 8
  %952 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %953 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %952, i32 0, i32 53
  %954 = load i32, i32* %953, align 4
  %955 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %948, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %951, i32 %954)
  %956 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %957 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %958 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %957, i32 0, i32 16
  %959 = load i32, i32* %958, align 8
  %960 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %956, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %959)
  %961 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %962 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %963 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %962, i32 0, i32 58
  %964 = load i32, i32* %963, align 8
  %965 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %961, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %964)
  %966 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %967 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %968 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %967, i32 0, i32 17
  %969 = load i32, i32* %968, align 4
  %970 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %966, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %969)
  %971 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %972 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %973 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %972, i32 0, i32 25
  %974 = load i32, i32* %973, align 4
  %975 = call i32 @dump_dev_cap_flags(%struct.mlx4_dev* %971, i32 %974)
  %976 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %977 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %978 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %977, i32 0, i32 71
  %979 = load i32, i32* %978, align 8
  %980 = call i32 @dump_dev_cap_flags2(%struct.mlx4_dev* %976, i32 %979)
  br label %981

981:                                              ; preds = %816, %690, %40
  %982 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %983 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %984 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %982, %struct.mlx4_cmd_mailbox* %983)
  %985 = load i32, i32* %14, align 4
  store i32 %985, i32* %3, align 4
  br label %986

986:                                              ; preds = %981, %23
  %987 = load i32, i32* %3, align 4
  ret i32 %987
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dump_dev_cap_flags(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @dump_dev_cap_flags2(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
