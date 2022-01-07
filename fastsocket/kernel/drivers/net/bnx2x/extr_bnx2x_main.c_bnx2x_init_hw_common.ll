; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ilt_client_info = type { i32, i64, i64 }
%struct.bnx2x_ilt = type { i32, i64, i64 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"starting common init  func %d\0A\00", align 1
@HW_LOCK_RESOURCE_RESET = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_SET = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_MSTAT0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_MSTAT1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@PHASE_COMMON = common dso_local global i32 0, align 4
@E2_FUNC_MAX = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@PXP_REG_PXP_INT_MASK_0 = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@PXP2_REG_PGL_TAGS_LIMIT = common dso_local global i32 0, align 4
@PXP2_REG_RQ_CFG_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PXP2 CFG failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PXP2_REG_RD_INIT_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"PXP2 RD_INIT failed\0A\00", align 1
@ILT_NUM_PAGE_ENTRIES = common dso_local global i64 0, align 8
@ILT_CLIENT_TM = common dso_local global i32 0, align 4
@INITOP_CLEAR = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN = common dso_local global i32 0, align 4
@BNX2X_PXP_DRAM_ALIGN = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN_RD = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN_SEL = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DISABLE_INPUTS = common dso_local global i32 0, align 4
@PXP2_REG_RD_DISABLE_INPUTS = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@ATC_REG_ATC_INIT_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"ATC_INIT failed\0A\00", align 1
@BLOCK_DMAE = common dso_local global i32 0, align 4
@TSEM_REG_PRAM = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@XSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@CSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@TSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@USEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@QM_REG_SOFT_RESET = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@DORQ_REG_DPM_CID_OFST = common dso_local global i32 0, align 4
@BNX2X_DB_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_DORQ_INT_MASK = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@PRS_REG_A_PRSU_20 = common dso_local global i32 0, align 4
@PRS_REG_E1HOV_MODE = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0 = common dso_local global i32 0, align 4
@PRS_REG_TAG_ETHERTYPE_0 = common dso_local global i32 0, align 4
@PRS_REG_TAG_LEN_0 = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@TSEM_REG_FAST_MEMORY = common dso_local global i32 0, align 4
@VFC_REG_MEMORIES_RST = common dso_local global i32 0, align 4
@VFC_MEMORIES_RST_REG_CAM_RST = common dso_local global i32 0, align 4
@VFC_MEMORIES_RST_REG_RAM_RST = common dso_local global i32 0, align 4
@XSEM_REG_FAST_MEMORY = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_CLEAR = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@PBF_REG_MUST_HAVE_HDRS = common dso_local global i32 0, align 4
@PBF_REG_HDRS_AFTER_TAG_0 = common dso_local global i32 0, align 4
@PBF_REG_TAG_ETHERTYPE_0 = common dso_local global i32 0, align 4
@PBF_REG_TAG_LEN_0 = common dso_local global i32 0, align 4
@SRC_REG_SOFT_RST = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_0 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_1 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_2 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_3 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_4 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_5 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_6 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_7 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_8 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_9 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"please adjust the size of cdu_context(%ld)\0A\00", align 1
@BLOCK_CDU = common dso_local global i32 0, align 4
@CDU_REG_CDU_GLOBAL_PARAMS = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@CFC_REG_INIT_REG = common dso_local global i32 0, align 4
@CFC_REG_CFC_INT_MASK = common dso_local global i32 0, align 4
@CFC_REG_DEBUG0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@IGU_REG_RESET_MEMORIES = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@PCICFG_OFFSET = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5 = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5_ERR_UNSPPORT1 = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5_ERR_UNSPPORT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5 = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@NIG_REG_LLH_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_LLH_E1HOV_MODE = common dso_local global i32 0, align 4
@CFC_REG_LL_INIT_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"CFC LL_INIT failed\0A\00", align 1
@CFC_REG_AC_INIT_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"CFC AC_INIT failed\0A\00", align 1
@CFC_REG_CAM_INIT_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"CFC CAM_INIT failed\0A\00", align 1
@NIG_REG_STAT2_BRB_OCTET = common dso_local global i32 0, align 4
@wb_data = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"internal mem self test failed\0A\00", align 1
@PXP2_REG_PXP2_INT_STS_CLR_0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"Bootcode is missing - can not initialize link\0A\00", align 1
@PXP2_REG_RD_CDURD_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_QM_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_SRC_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_TM_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RQ_CDU_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DBG_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_HC_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_QM_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_SRC_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_TM_ENDIAN_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_hw_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_hw_common(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ilt_client_info, align 8
  %7 = alloca %struct.bnx2x_ilt, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %9 = load i32, i32* @NETIF_MSG_HW, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %10)
  %12 = call i32 @DP(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = load i32, i32* @HW_LOCK_RESOURCE_RESET, align 4
  %15 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %13, i32 %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = call i32 @bnx2x_reset_common(%struct.bnx2x* %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i32, i32* @GRCBASE_MISC, align 4
  %20 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_SET, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @REG_WR(%struct.bnx2x* %18, i32 %21, i32 -1)
  store i32 65532, i32* %4, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = call i64 @CHIP_IS_E3(%struct.bnx2x* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT1, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load i32, i32* @GRCBASE_MISC, align 4
  %36 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_SET, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @REG_WR(%struct.bnx2x* %34, i32 %37, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = load i32, i32* @HW_LOCK_RESOURCE_RESET, align 4
  %42 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %40, i32 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load i32, i32* @BLOCK_MISC, align 4
  %45 = load i32, i32* @PHASE_COMMON, align 4
  %46 = call i32 @bnx2x_init_block(%struct.bnx2x* %43, i32 %44, i32 %45)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %81, label %50

50:                                               ; preds = %33
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = call i32 @BP_PATH(%struct.bnx2x* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %77, %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @E2_FUNC_MAX, align 4
  %56 = mul nsw i32 %55, 2
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %60)
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %66 = call i32 @REG_WR(%struct.bnx2x* %64, i32 %65, i32 1)
  br label %77

67:                                               ; preds = %58
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %68, i32 %69)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = call i32 @bnx2x_pf_disable(%struct.bnx2x* %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %74)
  %76 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %73, i32 %75)
  br label %77

77:                                               ; preds = %67, %63
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %5, align 4
  br label %53

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80, %33
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = load i32, i32* @BLOCK_PXP, align 4
  %84 = load i32, i32* @PHASE_COMMON, align 4
  %85 = call i32 @bnx2x_init_block(%struct.bnx2x* %82, i32 %83, i32 %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = call i64 @CHIP_IS_E1(%struct.bnx2x* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %91 = load i32, i32* @PXP_REG_PXP_INT_MASK_0, align 4
  %92 = call i32 @REG_WR(%struct.bnx2x* %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %89, %81
  %94 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %95 = load i32, i32* @BLOCK_PXP2, align 4
  %96 = load i32, i32* @PHASE_COMMON, align 4
  %97 = call i32 @bnx2x_init_block(%struct.bnx2x* %94, i32 %95, i32 %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %99 = call i32 @bnx2x_init_pxp(%struct.bnx2x* %98)
  %100 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %101 = load i32, i32* @INITOP_SET, align 4
  %102 = call i32 @bnx2x_ilt_init_page_size(%struct.bnx2x* %100, i32 %101)
  %103 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %104 = call i64 @CHIP_REV_IS_FPGA(%struct.bnx2x* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %93
  %107 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %108 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %112 = load i32, i32* @PXP2_REG_PGL_TAGS_LIMIT, align 4
  %113 = call i32 @REG_WR(%struct.bnx2x* %111, i32 %112, i32 1)
  br label %114

114:                                              ; preds = %110, %106, %93
  %115 = call i32 @msleep(i32 100)
  %116 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %117 = load i32, i32* @PXP2_REG_RQ_CFG_DONE, align 4
  %118 = call i32 @REG_RD(%struct.bnx2x* %116, i32 %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EBUSY, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %727

125:                                              ; preds = %114
  %126 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %127 = load i32, i32* @PXP2_REG_RD_INIT_DONE, align 4
  %128 = call i32 @REG_RD(%struct.bnx2x* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @EBUSY, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %727

135:                                              ; preds = %125
  %136 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %137 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %173, label %139

139:                                              ; preds = %135
  %140 = call i32 @memset(%struct.ilt_client_info* %6, i32 0, i32 24)
  %141 = bitcast %struct.bnx2x_ilt* %7 to %struct.ilt_client_info*
  %142 = call i32 @memset(%struct.ilt_client_info* %141, i32 0, i32 24)
  %143 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load i64, i64* @ILT_NUM_PAGE_ENTRIES, align 8
  %145 = sub nsw i64 %144, 1
  %146 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 1
  store i64 %145, i64* %146, align 8
  %147 = load i32, i32* @ILT_CLIENT_TM, align 4
  %148 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 0
  store i32 %147, i32* %148, align 8
  %149 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %150 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %151 = call i32 @BP_PATH(%struct.bnx2x* %150)
  %152 = add nsw i32 %151, 6
  %153 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %149, i32 %152)
  %154 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %155 = bitcast %struct.bnx2x_ilt* %7 to %struct.ilt_client_info*
  %156 = load i32, i32* @INITOP_CLEAR, align 4
  %157 = call i32 @bnx2x_ilt_client_init_op_ilt(%struct.bnx2x* %154, %struct.ilt_client_info* %155, %struct.ilt_client_info* %6, i32 %156)
  %158 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %159 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %160 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %159)
  %161 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %158, i32 %160)
  %162 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %163 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN, align 4
  %164 = load i32, i32* @BNX2X_PXP_DRAM_ALIGN, align 4
  %165 = call i32 @REG_WR(%struct.bnx2x* %162, i32 %163, i32 %164)
  %166 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %167 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN_RD, align 4
  %168 = load i32, i32* @BNX2X_PXP_DRAM_ALIGN, align 4
  %169 = call i32 @REG_WR(%struct.bnx2x* %166, i32 %167, i32 %168)
  %170 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %171 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN_SEL, align 4
  %172 = call i32 @REG_WR(%struct.bnx2x* %170, i32 %171, i32 1)
  br label %173

173:                                              ; preds = %139, %135
  %174 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %175 = load i32, i32* @PXP2_REG_RQ_DISABLE_INPUTS, align 4
  %176 = call i32 @REG_WR(%struct.bnx2x* %174, i32 %175, i32 0)
  %177 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %178 = load i32, i32* @PXP2_REG_RD_DISABLE_INPUTS, align 4
  %179 = call i32 @REG_WR(%struct.bnx2x* %177, i32 %178, i32 0)
  %180 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %181 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %226, label %183

183:                                              ; preds = %173
  %184 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %185 = call i64 @CHIP_REV_IS_EMUL(%struct.bnx2x* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %194

188:                                              ; preds = %183
  %189 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %190 = call i64 @CHIP_REV_IS_FPGA(%struct.bnx2x* %189)
  %191 = icmp ne i64 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 400, i32 0
  br label %194

194:                                              ; preds = %188, %187
  %195 = phi i32 [ 1000, %187 ], [ %193, %188 ]
  store i32 %195, i32* %8, align 4
  %196 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %197 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %198 = load i32, i32* @PHASE_COMMON, align 4
  %199 = call i32 @bnx2x_init_block(%struct.bnx2x* %196, i32 %197, i32 %198)
  %200 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %201 = load i32, i32* @BLOCK_ATC, align 4
  %202 = load i32, i32* @PHASE_COMMON, align 4
  %203 = call i32 @bnx2x_init_block(%struct.bnx2x* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %216, %194
  %205 = call i32 @msleep(i32 200)
  %206 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %207 = load i32, i32* @ATC_REG_ATC_INIT_DONE, align 4
  %208 = call i32 @REG_RD(%struct.bnx2x* %206, i32 %207)
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %8, align 4
  %212 = icmp ne i32 %210, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, i32* %4, align 4
  %215 = icmp ne i32 %214, 1
  br label %216

216:                                              ; preds = %213, %209
  %217 = phi i1 [ false, %209 ], [ %215, %213 ]
  br i1 %217, label %204, label %218

218:                                              ; preds = %216
  %219 = load i32, i32* %4, align 4
  %220 = icmp ne i32 %219, 1
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %223 = load i32, i32* @EBUSY, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %2, align 4
  br label %727

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225, %173
  %227 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %228 = load i32, i32* @BLOCK_DMAE, align 4
  %229 = load i32, i32* @PHASE_COMMON, align 4
  %230 = call i32 @bnx2x_init_block(%struct.bnx2x* %227, i32 %228, i32 %229)
  %231 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %232 = call i32 @bnx2x_iov_init_dmae(%struct.bnx2x* %231)
  %233 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %234 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  %235 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %236 = load i32, i32* @TSEM_REG_PRAM, align 4
  %237 = call i32 @bnx2x_init_fill(%struct.bnx2x* %235, i32 %236, i32 0, i32 8, i32 1)
  %238 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %239 = load i32, i32* @BLOCK_TCM, align 4
  %240 = load i32, i32* @PHASE_COMMON, align 4
  %241 = call i32 @bnx2x_init_block(%struct.bnx2x* %238, i32 %239, i32 %240)
  %242 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %243 = load i32, i32* @BLOCK_UCM, align 4
  %244 = load i32, i32* @PHASE_COMMON, align 4
  %245 = call i32 @bnx2x_init_block(%struct.bnx2x* %242, i32 %243, i32 %244)
  %246 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %247 = load i32, i32* @BLOCK_CCM, align 4
  %248 = load i32, i32* @PHASE_COMMON, align 4
  %249 = call i32 @bnx2x_init_block(%struct.bnx2x* %246, i32 %247, i32 %248)
  %250 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %251 = load i32, i32* @BLOCK_XCM, align 4
  %252 = load i32, i32* @PHASE_COMMON, align 4
  %253 = call i32 @bnx2x_init_block(%struct.bnx2x* %250, i32 %251, i32 %252)
  %254 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %255 = load i32, i32* @XSEM_REG_PASSIVE_BUFFER, align 4
  %256 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %254, i32 %255, i32 3)
  %257 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %258 = load i32, i32* @CSEM_REG_PASSIVE_BUFFER, align 4
  %259 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %257, i32 %258, i32 3)
  %260 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %261 = load i32, i32* @TSEM_REG_PASSIVE_BUFFER, align 4
  %262 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %260, i32 %261, i32 3)
  %263 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %264 = load i32, i32* @USEM_REG_PASSIVE_BUFFER, align 4
  %265 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %263, i32 %264, i32 3)
  %266 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %267 = load i32, i32* @BLOCK_QM, align 4
  %268 = load i32, i32* @PHASE_COMMON, align 4
  %269 = call i32 @bnx2x_init_block(%struct.bnx2x* %266, i32 %267, i32 %268)
  %270 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %271 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %272 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @INITOP_SET, align 4
  %275 = call i32 @bnx2x_qm_init_ptr_table(%struct.bnx2x* %270, i32 %273, i32 %274)
  %276 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %277 = load i32, i32* @QM_REG_SOFT_RESET, align 4
  %278 = call i32 @REG_WR(%struct.bnx2x* %276, i32 %277, i32 1)
  %279 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %280 = load i32, i32* @QM_REG_SOFT_RESET, align 4
  %281 = call i32 @REG_WR(%struct.bnx2x* %279, i32 %280, i32 0)
  %282 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %283 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %226
  %286 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %287 = load i32, i32* @BLOCK_TM, align 4
  %288 = load i32, i32* @PHASE_COMMON, align 4
  %289 = call i32 @bnx2x_init_block(%struct.bnx2x* %286, i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %285, %226
  %291 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %292 = load i32, i32* @BLOCK_DORQ, align 4
  %293 = load i32, i32* @PHASE_COMMON, align 4
  %294 = call i32 @bnx2x_init_block(%struct.bnx2x* %291, i32 %292, i32 %293)
  %295 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %296 = load i32, i32* @DORQ_REG_DPM_CID_OFST, align 4
  %297 = load i32, i32* @BNX2X_DB_SHIFT, align 4
  %298 = call i32 @REG_WR(%struct.bnx2x* %295, i32 %296, i32 %297)
  %299 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %300 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %290
  %303 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %304 = load i32, i32* @DORQ_REG_DORQ_INT_MASK, align 4
  %305 = call i32 @REG_WR(%struct.bnx2x* %303, i32 %304, i32 0)
  br label %306

306:                                              ; preds = %302, %290
  %307 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %308 = load i32, i32* @BLOCK_BRB1, align 4
  %309 = load i32, i32* @PHASE_COMMON, align 4
  %310 = call i32 @bnx2x_init_block(%struct.bnx2x* %307, i32 %308, i32 %309)
  %311 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %312 = load i32, i32* @BLOCK_PRS, align 4
  %313 = load i32, i32* @PHASE_COMMON, align 4
  %314 = call i32 @bnx2x_init_block(%struct.bnx2x* %311, i32 %312, i32 %313)
  %315 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %316 = load i32, i32* @PRS_REG_A_PRSU_20, align 4
  %317 = call i32 @REG_WR(%struct.bnx2x* %315, i32 %316, i32 15)
  %318 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %319 = call i64 @CHIP_IS_E1(%struct.bnx2x* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %328, label %321

321:                                              ; preds = %306
  %322 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %323 = load i32, i32* @PRS_REG_E1HOV_MODE, align 4
  %324 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %325 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @REG_WR(%struct.bnx2x* %322, i32 %323, i32 %326)
  br label %328

328:                                              ; preds = %321, %306
  %329 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %330 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %367, label %332

332:                                              ; preds = %328
  %333 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %334 = call i32 @CHIP_IS_E3B0(%struct.bnx2x* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %367, label %336

336:                                              ; preds = %332
  %337 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %338 = call i64 @IS_MF_AFEX(%struct.bnx2x* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %356

340:                                              ; preds = %336
  %341 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %342 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC, align 4
  %343 = call i32 @REG_WR(%struct.bnx2x* %341, i32 %342, i32 14)
  %344 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %345 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS, align 4
  %346 = call i32 @REG_WR(%struct.bnx2x* %344, i32 %345, i32 10)
  %347 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %348 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0, align 4
  %349 = call i32 @REG_WR(%struct.bnx2x* %347, i32 %348, i32 6)
  %350 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %351 = load i32, i32* @PRS_REG_TAG_ETHERTYPE_0, align 4
  %352 = call i32 @REG_WR(%struct.bnx2x* %350, i32 %351, i32 35110)
  %353 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %354 = load i32, i32* @PRS_REG_TAG_LEN_0, align 4
  %355 = call i32 @REG_WR(%struct.bnx2x* %353, i32 %354, i32 4)
  br label %366

356:                                              ; preds = %336
  %357 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %358 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC, align 4
  %359 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %360 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, i32 7, i32 6
  %365 = call i32 @REG_WR(%struct.bnx2x* %357, i32 %358, i32 %364)
  br label %366

366:                                              ; preds = %356, %340
  br label %367

367:                                              ; preds = %366, %332, %328
  %368 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %369 = load i32, i32* @BLOCK_TSDM, align 4
  %370 = load i32, i32* @PHASE_COMMON, align 4
  %371 = call i32 @bnx2x_init_block(%struct.bnx2x* %368, i32 %369, i32 %370)
  %372 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %373 = load i32, i32* @BLOCK_CSDM, align 4
  %374 = load i32, i32* @PHASE_COMMON, align 4
  %375 = call i32 @bnx2x_init_block(%struct.bnx2x* %372, i32 %373, i32 %374)
  %376 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %377 = load i32, i32* @BLOCK_USDM, align 4
  %378 = load i32, i32* @PHASE_COMMON, align 4
  %379 = call i32 @bnx2x_init_block(%struct.bnx2x* %376, i32 %377, i32 %378)
  %380 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %381 = load i32, i32* @BLOCK_XSDM, align 4
  %382 = load i32, i32* @PHASE_COMMON, align 4
  %383 = call i32 @bnx2x_init_block(%struct.bnx2x* %380, i32 %381, i32 %382)
  %384 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %385 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %405, label %387

387:                                              ; preds = %367
  %388 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %389 = load i32, i32* @TSEM_REG_FAST_MEMORY, align 4
  %390 = load i32, i32* @VFC_REG_MEMORIES_RST, align 4
  %391 = add nsw i32 %389, %390
  %392 = load i32, i32* @VFC_MEMORIES_RST_REG_CAM_RST, align 4
  %393 = load i32, i32* @VFC_MEMORIES_RST_REG_RAM_RST, align 4
  %394 = or i32 %392, %393
  %395 = call i32 @REG_WR(%struct.bnx2x* %388, i32 %391, i32 %394)
  %396 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %397 = load i32, i32* @XSEM_REG_FAST_MEMORY, align 4
  %398 = load i32, i32* @VFC_REG_MEMORIES_RST, align 4
  %399 = add nsw i32 %397, %398
  %400 = load i32, i32* @VFC_MEMORIES_RST_REG_CAM_RST, align 4
  %401 = load i32, i32* @VFC_MEMORIES_RST_REG_RAM_RST, align 4
  %402 = or i32 %400, %401
  %403 = call i32 @REG_WR(%struct.bnx2x* %396, i32 %399, i32 %402)
  %404 = call i32 @msleep(i32 20)
  br label %405

405:                                              ; preds = %387, %367
  %406 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %407 = load i32, i32* @BLOCK_TSEM, align 4
  %408 = load i32, i32* @PHASE_COMMON, align 4
  %409 = call i32 @bnx2x_init_block(%struct.bnx2x* %406, i32 %407, i32 %408)
  %410 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %411 = load i32, i32* @BLOCK_USEM, align 4
  %412 = load i32, i32* @PHASE_COMMON, align 4
  %413 = call i32 @bnx2x_init_block(%struct.bnx2x* %410, i32 %411, i32 %412)
  %414 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %415 = load i32, i32* @BLOCK_CSEM, align 4
  %416 = load i32, i32* @PHASE_COMMON, align 4
  %417 = call i32 @bnx2x_init_block(%struct.bnx2x* %414, i32 %415, i32 %416)
  %418 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %419 = load i32, i32* @BLOCK_XSEM, align 4
  %420 = load i32, i32* @PHASE_COMMON, align 4
  %421 = call i32 @bnx2x_init_block(%struct.bnx2x* %418, i32 %419, i32 %420)
  %422 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %423 = load i32, i32* @GRCBASE_MISC, align 4
  %424 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_CLEAR, align 4
  %425 = add nsw i32 %423, %424
  %426 = call i32 @REG_WR(%struct.bnx2x* %422, i32 %425, i32 -2147483648)
  %427 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %428 = load i32, i32* @GRCBASE_MISC, align 4
  %429 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_SET, align 4
  %430 = add nsw i32 %428, %429
  %431 = call i32 @REG_WR(%struct.bnx2x* %427, i32 %430, i32 -2147483648)
  %432 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %433 = load i32, i32* @BLOCK_UPB, align 4
  %434 = load i32, i32* @PHASE_COMMON, align 4
  %435 = call i32 @bnx2x_init_block(%struct.bnx2x* %432, i32 %433, i32 %434)
  %436 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %437 = load i32, i32* @BLOCK_XPB, align 4
  %438 = load i32, i32* @PHASE_COMMON, align 4
  %439 = call i32 @bnx2x_init_block(%struct.bnx2x* %436, i32 %437, i32 %438)
  %440 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %441 = load i32, i32* @BLOCK_PBF, align 4
  %442 = load i32, i32* @PHASE_COMMON, align 4
  %443 = call i32 @bnx2x_init_block(%struct.bnx2x* %440, i32 %441, i32 %442)
  %444 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %445 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %478, label %447

447:                                              ; preds = %405
  %448 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %449 = call i64 @IS_MF_AFEX(%struct.bnx2x* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %467

451:                                              ; preds = %447
  %452 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %453 = load i32, i32* @PBF_REG_HDRS_AFTER_BASIC, align 4
  %454 = call i32 @REG_WR(%struct.bnx2x* %452, i32 %453, i32 14)
  %455 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %456 = load i32, i32* @PBF_REG_MUST_HAVE_HDRS, align 4
  %457 = call i32 @REG_WR(%struct.bnx2x* %455, i32 %456, i32 10)
  %458 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %459 = load i32, i32* @PBF_REG_HDRS_AFTER_TAG_0, align 4
  %460 = call i32 @REG_WR(%struct.bnx2x* %458, i32 %459, i32 6)
  %461 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %462 = load i32, i32* @PBF_REG_TAG_ETHERTYPE_0, align 4
  %463 = call i32 @REG_WR(%struct.bnx2x* %461, i32 %462, i32 35110)
  %464 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %465 = load i32, i32* @PBF_REG_TAG_LEN_0, align 4
  %466 = call i32 @REG_WR(%struct.bnx2x* %464, i32 %465, i32 4)
  br label %477

467:                                              ; preds = %447
  %468 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %469 = load i32, i32* @PBF_REG_HDRS_AFTER_BASIC, align 4
  %470 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %471 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = icmp ne i32 %472, 0
  %474 = zext i1 %473 to i64
  %475 = select i1 %473, i32 7, i32 6
  %476 = call i32 @REG_WR(%struct.bnx2x* %468, i32 %469, i32 %475)
  br label %477

477:                                              ; preds = %467, %451
  br label %478

478:                                              ; preds = %477, %405
  %479 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %480 = load i32, i32* @SRC_REG_SOFT_RST, align 4
  %481 = call i32 @REG_WR(%struct.bnx2x* %479, i32 %480, i32 1)
  %482 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %483 = load i32, i32* @BLOCK_SRC, align 4
  %484 = load i32, i32* @PHASE_COMMON, align 4
  %485 = call i32 @bnx2x_init_block(%struct.bnx2x* %482, i32 %483, i32 %484)
  %486 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %487 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %520

489:                                              ; preds = %478
  %490 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %491 = load i32, i32* @SRC_REG_KEYSEARCH_0, align 4
  %492 = call i32 @REG_WR(%struct.bnx2x* %490, i32 %491, i32 1663587954)
  %493 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %494 = load i32, i32* @SRC_REG_KEYSEARCH_1, align 4
  %495 = call i32 @REG_WR(%struct.bnx2x* %493, i32 %494, i32 616100556)
  %496 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %497 = load i32, i32* @SRC_REG_KEYSEARCH_2, align 4
  %498 = call i32 @REG_WR(%struct.bnx2x* %496, i32 %497, i32 574287771)
  %499 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %500 = load i32, i32* @SRC_REG_KEYSEARCH_3, align 4
  %501 = call i32 @REG_WR(%struct.bnx2x* %499, i32 %500, i32 637541946)
  %502 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %503 = load i32, i32* @SRC_REG_KEYSEARCH_4, align 4
  %504 = call i32 @REG_WR(%struct.bnx2x* %502, i32 %503, i32 2062094614)
  %505 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %506 = load i32, i32* @SRC_REG_KEYSEARCH_5, align 4
  %507 = call i32 @REG_WR(%struct.bnx2x* %505, i32 %506, i32 1558520587)
  %508 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %509 = load i32, i32* @SRC_REG_KEYSEARCH_6, align 4
  %510 = call i32 @REG_WR(%struct.bnx2x* %508, i32 %509, i32 697141983)
  %511 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %512 = load i32, i32* @SRC_REG_KEYSEARCH_7, align 4
  %513 = call i32 @REG_WR(%struct.bnx2x* %511, i32 %512, i32 1857093385)
  %514 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %515 = load i32, i32* @SRC_REG_KEYSEARCH_8, align 4
  %516 = call i32 @REG_WR(%struct.bnx2x* %514, i32 %515, i32 405862447)
  %517 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %518 = load i32, i32* @SRC_REG_KEYSEARCH_9, align 4
  %519 = call i32 @REG_WR(%struct.bnx2x* %517, i32 %518, i32 31747047)
  br label %520

520:                                              ; preds = %489, %478
  %521 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %522 = load i32, i32* @SRC_REG_SOFT_RST, align 4
  %523 = call i32 @REG_WR(%struct.bnx2x* %521, i32 %522, i32 0)
  %524 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %525 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %524, i32 0, i32 2
  %526 = load %struct.TYPE_2__*, %struct.TYPE_2__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %526, i32 0, i32 0
  %528 = call i32 @dev_alert(i32* %527, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 4)
  %529 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %530 = load i32, i32* @BLOCK_CDU, align 4
  %531 = load i32, i32* @PHASE_COMMON, align 4
  %532 = call i32 @bnx2x_init_block(%struct.bnx2x* %529, i32 %530, i32 %531)
  store i32 67109888, i32* %4, align 4
  %533 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %534 = load i32, i32* @CDU_REG_CDU_GLOBAL_PARAMS, align 4
  %535 = load i32, i32* %4, align 4
  %536 = call i32 @REG_WR(%struct.bnx2x* %533, i32 %534, i32 %535)
  %537 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %538 = load i32, i32* @BLOCK_CFC, align 4
  %539 = load i32, i32* @PHASE_COMMON, align 4
  %540 = call i32 @bnx2x_init_block(%struct.bnx2x* %537, i32 %538, i32 %539)
  %541 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %542 = load i32, i32* @CFC_REG_INIT_REG, align 4
  %543 = call i32 @REG_WR(%struct.bnx2x* %541, i32 %542, i32 2047)
  %544 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %545 = load i32, i32* @CFC_REG_CFC_INT_MASK, align 4
  %546 = call i32 @REG_WR(%struct.bnx2x* %544, i32 %545, i32 0)
  %547 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %548 = load i32, i32* @CFC_REG_DEBUG0, align 4
  %549 = call i32 @REG_WR(%struct.bnx2x* %547, i32 %548, i32 537001984)
  %550 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %551 = load i32, i32* @BLOCK_HC, align 4
  %552 = load i32, i32* @PHASE_COMMON, align 4
  %553 = call i32 @bnx2x_init_block(%struct.bnx2x* %550, i32 %551, i32 %552)
  %554 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %555 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %554)
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %565, label %557

557:                                              ; preds = %520
  %558 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %559 = call i64 @BP_NOMCP(%struct.bnx2x* %558)
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %565

561:                                              ; preds = %557
  %562 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %563 = load i32, i32* @IGU_REG_RESET_MEMORIES, align 4
  %564 = call i32 @REG_WR(%struct.bnx2x* %562, i32 %563, i32 54)
  br label %565

565:                                              ; preds = %561, %557, %520
  %566 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %567 = load i32, i32* @BLOCK_IGU, align 4
  %568 = load i32, i32* @PHASE_COMMON, align 4
  %569 = call i32 @bnx2x_init_block(%struct.bnx2x* %566, i32 %567, i32 %568)
  %570 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %571 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %572 = load i32, i32* @PHASE_COMMON, align 4
  %573 = call i32 @bnx2x_init_block(%struct.bnx2x* %570, i32 %571, i32 %572)
  %574 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %575 = call i32 @REG_WR(%struct.bnx2x* %574, i32 10260, i32 -1)
  %576 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %577 = call i32 @REG_WR(%struct.bnx2x* %576, i32 14368, i32 -1)
  %578 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %579 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %610, label %581

581:                                              ; preds = %565
  %582 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %583 = load i32, i32* @PCICFG_OFFSET, align 4
  %584 = load i32, i32* @PXPCS_TL_CONTROL_5, align 4
  %585 = add nsw i32 %583, %584
  %586 = load i32, i32* @PXPCS_TL_CONTROL_5_ERR_UNSPPORT1, align 4
  %587 = load i32, i32* @PXPCS_TL_CONTROL_5_ERR_UNSPPORT, align 4
  %588 = or i32 %586, %587
  %589 = call i32 @REG_WR(%struct.bnx2x* %582, i32 %585, i32 %588)
  %590 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %591 = load i32, i32* @PCICFG_OFFSET, align 4
  %592 = load i32, i32* @PXPCS_TL_FUNC345_STAT, align 4
  %593 = add nsw i32 %591, %592
  %594 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4, align 4
  %595 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3, align 4
  %596 = or i32 %594, %595
  %597 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2, align 4
  %598 = or i32 %596, %597
  %599 = call i32 @REG_WR(%struct.bnx2x* %590, i32 %593, i32 %598)
  %600 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %601 = load i32, i32* @PCICFG_OFFSET, align 4
  %602 = load i32, i32* @PXPCS_TL_FUNC678_STAT, align 4
  %603 = add nsw i32 %601, %602
  %604 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7, align 4
  %605 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6, align 4
  %606 = or i32 %604, %605
  %607 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5, align 4
  %608 = or i32 %606, %607
  %609 = call i32 @REG_WR(%struct.bnx2x* %600, i32 %603, i32 %608)
  br label %610

610:                                              ; preds = %581, %565
  %611 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %612 = load i32, i32* @BLOCK_NIG, align 4
  %613 = load i32, i32* @PHASE_COMMON, align 4
  %614 = call i32 @bnx2x_init_block(%struct.bnx2x* %611, i32 %612, i32 %613)
  %615 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %616 = call i64 @CHIP_IS_E1(%struct.bnx2x* %615)
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %629, label %618

618:                                              ; preds = %610
  %619 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %620 = call i64 @CHIP_IS_E3(%struct.bnx2x* %619)
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %628, label %622

622:                                              ; preds = %618
  %623 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %624 = load i32, i32* @NIG_REG_LLH_MF_MODE, align 4
  %625 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %626 = call i32 @IS_MF(%struct.bnx2x* %625)
  %627 = call i32 @REG_WR(%struct.bnx2x* %623, i32 %624, i32 %626)
  br label %628

628:                                              ; preds = %622, %618
  br label %629

629:                                              ; preds = %628, %610
  %630 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %631 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %639

633:                                              ; preds = %629
  %634 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %635 = load i32, i32* @NIG_REG_LLH_E1HOV_MODE, align 4
  %636 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %637 = call i32 @IS_MF_SD(%struct.bnx2x* %636)
  %638 = call i32 @REG_WR(%struct.bnx2x* %634, i32 %635, i32 %637)
  br label %639

639:                                              ; preds = %633, %629
  %640 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %641 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %640)
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %645

643:                                              ; preds = %639
  %644 = call i32 @msleep(i32 200)
  br label %645

645:                                              ; preds = %643, %639
  %646 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %647 = load i32, i32* @CFC_REG_LL_INIT_DONE, align 4
  %648 = call i32 @reg_poll(%struct.bnx2x* %646, i32 %647, i32 1, i32 100, i32 10)
  store i32 %648, i32* %4, align 4
  %649 = load i32, i32* %4, align 4
  %650 = icmp ne i32 %649, 1
  br i1 %650, label %651, label %655

651:                                              ; preds = %645
  %652 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %653 = load i32, i32* @EBUSY, align 4
  %654 = sub nsw i32 0, %653
  store i32 %654, i32* %2, align 4
  br label %727

655:                                              ; preds = %645
  %656 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %657 = load i32, i32* @CFC_REG_AC_INIT_DONE, align 4
  %658 = call i32 @reg_poll(%struct.bnx2x* %656, i32 %657, i32 1, i32 100, i32 10)
  store i32 %658, i32* %4, align 4
  %659 = load i32, i32* %4, align 4
  %660 = icmp ne i32 %659, 1
  br i1 %660, label %661, label %665

661:                                              ; preds = %655
  %662 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %663 = load i32, i32* @EBUSY, align 4
  %664 = sub nsw i32 0, %663
  store i32 %664, i32* %2, align 4
  br label %727

665:                                              ; preds = %655
  %666 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %667 = load i32, i32* @CFC_REG_CAM_INIT_DONE, align 4
  %668 = call i32 @reg_poll(%struct.bnx2x* %666, i32 %667, i32 1, i32 100, i32 10)
  store i32 %668, i32* %4, align 4
  %669 = load i32, i32* %4, align 4
  %670 = icmp ne i32 %669, 1
  br i1 %670, label %671, label %675

671:                                              ; preds = %665
  %672 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %673 = load i32, i32* @EBUSY, align 4
  %674 = sub nsw i32 0, %673
  store i32 %674, i32* %2, align 4
  br label %727

675:                                              ; preds = %665
  %676 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %677 = load i32, i32* @CFC_REG_DEBUG0, align 4
  %678 = call i32 @REG_WR(%struct.bnx2x* %676, i32 %677, i32 0)
  %679 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %680 = call i64 @CHIP_IS_E1(%struct.bnx2x* %679)
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %682, label %703

682:                                              ; preds = %675
  %683 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %684 = load i32, i32* @NIG_REG_STAT2_BRB_OCTET, align 4
  %685 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %683, i32 %684, i32 2)
  %686 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %687 = load i32*, i32** @wb_data, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 0
  %689 = load i32, i32* %688, align 4
  %690 = call i32* @bnx2x_sp(%struct.bnx2x* %686, i32 %689)
  %691 = load i32, i32* %690, align 4
  store i32 %691, i32* %4, align 4
  %692 = load i32, i32* %4, align 4
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %702

694:                                              ; preds = %682
  %695 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %696 = call i64 @bnx2x_int_mem_test(%struct.bnx2x* %695)
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %702

698:                                              ; preds = %694
  %699 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %700 = load i32, i32* @EBUSY, align 4
  %701 = sub nsw i32 0, %700
  store i32 %701, i32* %2, align 4
  br label %727

702:                                              ; preds = %694, %682
  br label %703

703:                                              ; preds = %702, %675
  %704 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %705 = call i32 @bnx2x_setup_fan_failure_detection(%struct.bnx2x* %704)
  %706 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %707 = load i32, i32* @PXP2_REG_PXP2_INT_STS_CLR_0, align 4
  %708 = call i32 @REG_RD(%struct.bnx2x* %706, i32 %707)
  %709 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %710 = call i32 @bnx2x_enable_blocks_attention(%struct.bnx2x* %709)
  %711 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %712 = call i32 @bnx2x_enable_blocks_parity(%struct.bnx2x* %711)
  %713 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %714 = call i64 @BP_NOMCP(%struct.bnx2x* %713)
  %715 = icmp ne i64 %714, 0
  br i1 %715, label %724, label %716

716:                                              ; preds = %703
  %717 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %718 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %717)
  %719 = icmp ne i64 %718, 0
  br i1 %719, label %720, label %723

720:                                              ; preds = %716
  %721 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %722 = call i32 @bnx2x__common_init_phy(%struct.bnx2x* %721)
  br label %723

723:                                              ; preds = %720, %716
  br label %726

724:                                              ; preds = %703
  %725 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  br label %726

726:                                              ; preds = %724, %723
  store i32 0, i32* %2, align 4
  br label %727

727:                                              ; preds = %726, %698, %671, %661, %651, %221, %131, %121
  %728 = load i32, i32* %2, align 4
  ret i32 %728
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_reset_common(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_init_block(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_pretend_func(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_pf_disable(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_pxp(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ilt_init_page_size(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @memset(%struct.ilt_client_info*, i32, i32) #1

declare dso_local i32 @bnx2x_ilt_client_init_op_ilt(%struct.bnx2x*, %struct.ilt_client_info*, %struct.ilt_client_info*, i32) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_iov_init_dmae(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_fill(%struct.bnx2x*, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_read_dmae(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_qm_init_ptr_table(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @dev_alert(i32*, i8*, i64) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @reg_poll(%struct.bnx2x*, i32, i32, i32, i32) #1

declare dso_local i32* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_int_mem_test(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_setup_fan_failure_detection(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_enable_blocks_attention(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_enable_blocks_parity(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x__common_init_phy(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
