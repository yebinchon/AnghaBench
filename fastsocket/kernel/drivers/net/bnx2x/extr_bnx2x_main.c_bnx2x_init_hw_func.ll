; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.bnx2x_ilt = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@PHASE_PF0 = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"starting func init  func %d\0A\00", align 1
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_CONFIG_1 = common dso_local global i32 0, align 4
@HC_REG_CONFIG_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_MSI_ATTN_EN_0 = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@ILT_CLIENT_CDU = common dso_local global i64 0, align 8
@BNX2X_FIRST_VF_CID = common dso_local global i32 0, align 4
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@PRS_REG_NIC_MODE = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"NIC MODE disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"NIC MODE configured\0A\00", align 1
@IGU_PF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@USING_MSIX_FLAG = common dso_local global i32 0, align 4
@IGU_PF_CONF_SINGLE_ISR_EN = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@IGU_REG_PF_CONFIGURATION = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@BLOCK_DMAE = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@QM_REG_PF_EN = common dso_local global i32 0, align 4
@TSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@BNX2X_MAX_NUM_OF_VFS = common dso_local global i32 0, align 4
@USEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@CSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@XSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_DISABLE_PF = common dso_local global i32 0, align 4
@BLOCK_CDU = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@CFC_REG_WEAK_ENABLE_PF = common dso_local global i32 0, align 4
@NIG_REG_LLH0_FUNC_EN = common dso_local global i32 0, align 4
@NIG_REG_LLH0_FUNC_VLAN_ID = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_ATTN_12 = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i32 0, align 4
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@IGU_BC_NDSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_NORM_NDSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_REG_PROD_CONS_MEMORY = common dso_local global i32 0, align 4
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_NOP = common dso_local global i32 0, align 4
@IGU_BC_DSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_NORM_DSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_BC_BASE_DSB_PROD = common dso_local global i32 0, align 4
@IGU_NORM_BASE_DSB_PROD = common dso_local global i32 0, align 4
@E1HVN_MAX = common dso_local global i32 0, align 4
@CSTORM_ID = common dso_local global i32 0, align 4
@XSTORM_ID = common dso_local global i32 0, align 4
@TSTORM_ID = common dso_local global i32 0, align 4
@ATTENTION_ID = common dso_local global i32 0, align 4
@IGU_REG_SB_INT_BEFORE_MASK_LSB = common dso_local global i32 0, align 4
@IGU_REG_SB_INT_BEFORE_MASK_MSB = common dso_local global i32 0, align 4
@IGU_REG_SB_MASK_LSB = common dso_local global i32 0, align 4
@IGU_REG_SB_MASK_MSB = common dso_local global i32 0, align 4
@IGU_REG_PBA_STATUS_LSB = common dso_local global i32 0, align 4
@IGU_REG_PBA_STATUS_MSB = common dso_local global i32 0, align 4
@HC_REG_MAIN_MEMORY_SIZE = common dso_local global i32 0, align 4
@HC_REG_MAIN_MEMORY = common dso_local global i32 0, align 4
@HC_REG_HC_PRTY_STS_CLR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Hmmm... Parity errors in HC block during function init (0x%x)!\0A\00", align 1
@wb_data = common dso_local global i32 0, align 4
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_hw_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_hw_func(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_ilt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = call i32 @BP_PORT(%struct.bnx2x* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = call i32 @BP_FUNC(%struct.bnx2x* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @PHASE_PF0, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = call %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x* %29)
  store %struct.bnx2x_ilt* %30, %struct.bnx2x_ilt** %7, align 8
  %31 = load i32, i32* @NETIF_MSG_HW, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, ...) @DP(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %1
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = call i32 @bnx2x_pf_flr_clnup(%struct.bnx2x* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = call i32 @bnx2x_fw_dump(%struct.bnx2x* %43)
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %2, align 4
  br label %736

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INT_BLOCK_HC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @HC_REG_CONFIG_1, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @HC_REG_CONFIG_0, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %9, align 4
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @REG_RD(%struct.bnx2x* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @HC_CONFIG_0_REG_MSI_ATTN_EN_0, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @REG_WR(%struct.bnx2x* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %47
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = load i32, i32* @BLOCK_PXP, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @bnx2x_init_block(%struct.bnx2x* %74, i32 %75, i32 %76)
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = load i32, i32* @BLOCK_PXP2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @bnx2x_init_block(%struct.bnx2x* %78, i32 %79, i32 %80)
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = call %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x* %82)
  store %struct.bnx2x_ilt* %83, %struct.bnx2x_ilt** %7, align 8
  %84 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %85 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* @ILT_CLIENT_CDU, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %92 = call i64 @IS_SRIOV(%struct.bnx2x* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %73
  %95 = load i32, i32* @BNX2X_FIRST_VF_CID, align 4
  %96 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %97 = sdiv i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %94, %73
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @bnx2x_iov_init_ilt(%struct.bnx2x* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %105 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i64, i64* @ILT_CLIENT_CDU, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %168, %100
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %114 = call i32 @L2_ILT_LINES(%struct.bnx2x* %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %171

116:                                              ; preds = %111
  %117 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %126 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i32 %124, i32* %133, align 4
  %134 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %135 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %134, i32 0, i32 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %143 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %141, i32* %150, align 4
  %151 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %152 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %151, i32 0, i32 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %160 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %158, i32* %167, align 4
  br label %168

168:                                              ; preds = %116
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %111

171:                                              ; preds = %111
  %172 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %173 = load i32, i32* @INITOP_SET, align 4
  %174 = call i32 @bnx2x_ilt_init_op(%struct.bnx2x* %172, i32 %173)
  %175 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %176 = call i32 @CONFIGURE_NIC_MODE(%struct.bnx2x* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %171
  %179 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %180 = call i32 @bnx2x_init_searcher(%struct.bnx2x* %179)
  %181 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %182 = load i32, i32* @PRS_REG_NIC_MODE, align 4
  %183 = call i32 @REG_WR(%struct.bnx2x* %181, i32 %182, i32 0)
  %184 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %185 = call i32 (i32, i8*, ...) @DP(i32 %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %192

186:                                              ; preds = %171
  %187 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %188 = load i32, i32* @PRS_REG_NIC_MODE, align 4
  %189 = call i32 @REG_WR(%struct.bnx2x* %187, i32 %188, i32 1)
  %190 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %191 = call i32 (i32, i8*, ...) @DP(i32 %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %186, %178
  %193 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %194 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %217, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* @IGU_PF_CONF_FUNC_EN, align 4
  store i32 %197, i32* %17, align 4
  %198 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %199 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @USING_MSIX_FLAG, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %206 = load i32, i32* %17, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %204, %196
  %209 = call i32 @msleep(i32 20)
  %210 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %211 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %212 = call i32 @REG_WR(%struct.bnx2x* %210, i32 %211, i32 1)
  %213 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %214 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %215 = load i32, i32* %17, align 4
  %216 = call i32 @REG_WR(%struct.bnx2x* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %208, %192
  %218 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %219 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %218, i32 0, i32 1
  store i32 1, i32* %219, align 4
  %220 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %221 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @bnx2x_init_block(%struct.bnx2x* %220, i32 %221, i32 %222)
  %224 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %225 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %217
  %228 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %229 = load i32, i32* @PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @REG_WR(%struct.bnx2x* %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %217
  %233 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %234 = load i32, i32* @BLOCK_ATC, align 4
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @bnx2x_init_block(%struct.bnx2x* %233, i32 %234, i32 %235)
  %237 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %238 = load i32, i32* @BLOCK_DMAE, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @bnx2x_init_block(%struct.bnx2x* %237, i32 %238, i32 %239)
  %241 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %242 = load i32, i32* @BLOCK_NIG, align 4
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @bnx2x_init_block(%struct.bnx2x* %241, i32 %242, i32 %243)
  %245 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %246 = load i32, i32* @BLOCK_SRC, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @bnx2x_init_block(%struct.bnx2x* %245, i32 %246, i32 %247)
  %249 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %250 = load i32, i32* @BLOCK_MISC, align 4
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @bnx2x_init_block(%struct.bnx2x* %249, i32 %250, i32 %251)
  %253 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %254 = load i32, i32* @BLOCK_TCM, align 4
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @bnx2x_init_block(%struct.bnx2x* %253, i32 %254, i32 %255)
  %257 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %258 = load i32, i32* @BLOCK_UCM, align 4
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @bnx2x_init_block(%struct.bnx2x* %257, i32 %258, i32 %259)
  %261 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %262 = load i32, i32* @BLOCK_CCM, align 4
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @bnx2x_init_block(%struct.bnx2x* %261, i32 %262, i32 %263)
  %265 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %266 = load i32, i32* @BLOCK_XCM, align 4
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @bnx2x_init_block(%struct.bnx2x* %265, i32 %266, i32 %267)
  %269 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %270 = load i32, i32* @BLOCK_TSEM, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @bnx2x_init_block(%struct.bnx2x* %269, i32 %270, i32 %271)
  %273 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %274 = load i32, i32* @BLOCK_USEM, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @bnx2x_init_block(%struct.bnx2x* %273, i32 %274, i32 %275)
  %277 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %278 = load i32, i32* @BLOCK_CSEM, align 4
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @bnx2x_init_block(%struct.bnx2x* %277, i32 %278, i32 %279)
  %281 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %282 = load i32, i32* @BLOCK_XSEM, align 4
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @bnx2x_init_block(%struct.bnx2x* %281, i32 %282, i32 %283)
  %285 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %286 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %232
  %289 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %290 = load i32, i32* @QM_REG_PF_EN, align 4
  %291 = call i32 @REG_WR(%struct.bnx2x* %289, i32 %290, i32 1)
  br label %292

292:                                              ; preds = %288, %232
  %293 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %294 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %321, label %296

296:                                              ; preds = %292
  %297 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %298 = load i32, i32* @TSEM_REG_VFPF_ERR_NUM, align 4
  %299 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %299, %300
  %302 = call i32 @REG_WR(%struct.bnx2x* %297, i32 %298, i32 %301)
  %303 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %304 = load i32, i32* @USEM_REG_VFPF_ERR_NUM, align 4
  %305 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %305, %306
  %308 = call i32 @REG_WR(%struct.bnx2x* %303, i32 %304, i32 %307)
  %309 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %310 = load i32, i32* @CSEM_REG_VFPF_ERR_NUM, align 4
  %311 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %312 = load i32, i32* %5, align 4
  %313 = add nsw i32 %311, %312
  %314 = call i32 @REG_WR(%struct.bnx2x* %309, i32 %310, i32 %313)
  %315 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %316 = load i32, i32* @XSEM_REG_VFPF_ERR_NUM, align 4
  %317 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %318 = load i32, i32* %5, align 4
  %319 = add nsw i32 %317, %318
  %320 = call i32 @REG_WR(%struct.bnx2x* %315, i32 %316, i32 %319)
  br label %321

321:                                              ; preds = %296, %292
  %322 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %323 = load i32, i32* @BLOCK_QM, align 4
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @bnx2x_init_block(%struct.bnx2x* %322, i32 %323, i32 %324)
  %326 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %327 = load i32, i32* @BLOCK_TM, align 4
  %328 = load i32, i32* %6, align 4
  %329 = call i32 @bnx2x_init_block(%struct.bnx2x* %326, i32 %327, i32 %328)
  %330 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %331 = load i32, i32* @BLOCK_DORQ, align 4
  %332 = load i32, i32* %6, align 4
  %333 = call i32 @bnx2x_init_block(%struct.bnx2x* %330, i32 %331, i32 %332)
  %334 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %335 = call i32 @bnx2x_iov_init_dq(%struct.bnx2x* %334)
  %336 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %337 = load i32, i32* @BLOCK_BRB1, align 4
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @bnx2x_init_block(%struct.bnx2x* %336, i32 %337, i32 %338)
  %340 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %341 = load i32, i32* @BLOCK_PRS, align 4
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @bnx2x_init_block(%struct.bnx2x* %340, i32 %341, i32 %342)
  %344 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %345 = load i32, i32* @BLOCK_TSDM, align 4
  %346 = load i32, i32* %6, align 4
  %347 = call i32 @bnx2x_init_block(%struct.bnx2x* %344, i32 %345, i32 %346)
  %348 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %349 = load i32, i32* @BLOCK_CSDM, align 4
  %350 = load i32, i32* %6, align 4
  %351 = call i32 @bnx2x_init_block(%struct.bnx2x* %348, i32 %349, i32 %350)
  %352 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %353 = load i32, i32* @BLOCK_USDM, align 4
  %354 = load i32, i32* %6, align 4
  %355 = call i32 @bnx2x_init_block(%struct.bnx2x* %352, i32 %353, i32 %354)
  %356 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %357 = load i32, i32* @BLOCK_XSDM, align 4
  %358 = load i32, i32* %6, align 4
  %359 = call i32 @bnx2x_init_block(%struct.bnx2x* %356, i32 %357, i32 %358)
  %360 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %361 = load i32, i32* @BLOCK_UPB, align 4
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @bnx2x_init_block(%struct.bnx2x* %360, i32 %361, i32 %362)
  %364 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %365 = load i32, i32* @BLOCK_XPB, align 4
  %366 = load i32, i32* %6, align 4
  %367 = call i32 @bnx2x_init_block(%struct.bnx2x* %364, i32 %365, i32 %366)
  %368 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %369 = load i32, i32* @BLOCK_PBF, align 4
  %370 = load i32, i32* %6, align 4
  %371 = call i32 @bnx2x_init_block(%struct.bnx2x* %368, i32 %369, i32 %370)
  %372 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %373 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %321
  %376 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %377 = load i32, i32* @PBF_REG_DISABLE_PF, align 4
  %378 = call i32 @REG_WR(%struct.bnx2x* %376, i32 %377, i32 0)
  br label %379

379:                                              ; preds = %375, %321
  %380 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %381 = load i32, i32* @BLOCK_CDU, align 4
  %382 = load i32, i32* %6, align 4
  %383 = call i32 @bnx2x_init_block(%struct.bnx2x* %380, i32 %381, i32 %382)
  %384 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %385 = load i32, i32* @BLOCK_CFC, align 4
  %386 = load i32, i32* %6, align 4
  %387 = call i32 @bnx2x_init_block(%struct.bnx2x* %384, i32 %385, i32 %386)
  %388 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %389 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %379
  %392 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %393 = load i32, i32* @CFC_REG_WEAK_ENABLE_PF, align 4
  %394 = call i32 @REG_WR(%struct.bnx2x* %392, i32 %393, i32 1)
  br label %395

395:                                              ; preds = %391, %379
  %396 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %397 = call i64 @IS_MF(%struct.bnx2x* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %415

399:                                              ; preds = %395
  %400 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %401 = load i32, i32* @NIG_REG_LLH0_FUNC_EN, align 4
  %402 = load i32, i32* %4, align 4
  %403 = mul nsw i32 %402, 8
  %404 = add nsw i32 %401, %403
  %405 = call i32 @REG_WR(%struct.bnx2x* %400, i32 %404, i32 1)
  %406 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %407 = load i32, i32* @NIG_REG_LLH0_FUNC_VLAN_ID, align 4
  %408 = load i32, i32* %4, align 4
  %409 = mul nsw i32 %408, 8
  %410 = add nsw i32 %407, %409
  %411 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %412 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @REG_WR(%struct.bnx2x* %406, i32 %410, i32 %413)
  br label %415

415:                                              ; preds = %399, %395
  %416 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %417 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %418 = load i32, i32* %6, align 4
  %419 = call i32 @bnx2x_init_block(%struct.bnx2x* %416, i32 %417, i32 %418)
  %420 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %421 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %420, i32 0, i32 7
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @INT_BLOCK_HC, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %454

426:                                              ; preds = %415
  %427 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %428 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %449

430:                                              ; preds = %426
  %431 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %432 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_12, align 4
  %433 = load i32, i32* %5, align 4
  %434 = mul nsw i32 %433, 4
  %435 = add nsw i32 %432, %434
  %436 = call i32 @REG_WR(%struct.bnx2x* %431, i32 %435, i32 0)
  %437 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %438 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %439 = load i32, i32* %4, align 4
  %440 = mul nsw i32 %439, 8
  %441 = add nsw i32 %438, %440
  %442 = call i32 @REG_WR(%struct.bnx2x* %437, i32 %441, i32 0)
  %443 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %444 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %445 = load i32, i32* %4, align 4
  %446 = mul nsw i32 %445, 8
  %447 = add nsw i32 %444, %446
  %448 = call i32 @REG_WR(%struct.bnx2x* %443, i32 %447, i32 0)
  br label %449

449:                                              ; preds = %430, %426
  %450 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %451 = load i32, i32* @BLOCK_HC, align 4
  %452 = load i32, i32* %6, align 4
  %453 = call i32 @bnx2x_init_block(%struct.bnx2x* %450, i32 %451, i32 %452)
  br label %673

454:                                              ; preds = %415
  %455 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %456 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_12, align 4
  %457 = load i32, i32* %5, align 4
  %458 = mul nsw i32 %457, 4
  %459 = add nsw i32 %456, %458
  %460 = call i32 @REG_WR(%struct.bnx2x* %455, i32 %459, i32 0)
  %461 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %462 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %471, label %464

464:                                              ; preds = %454
  %465 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %466 = load i32, i32* @IGU_REG_LEADING_EDGE_LATCH, align 4
  %467 = call i32 @REG_WR(%struct.bnx2x* %465, i32 %466, i32 0)
  %468 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %469 = load i32, i32* @IGU_REG_TRAILING_EDGE_LATCH, align 4
  %470 = call i32 @REG_WR(%struct.bnx2x* %468, i32 %469, i32 0)
  br label %471

471:                                              ; preds = %464, %454
  %472 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %473 = load i32, i32* @BLOCK_IGU, align 4
  %474 = load i32, i32* %6, align 4
  %475 = call i32 @bnx2x_init_block(%struct.bnx2x* %472, i32 %473, i32 %474)
  %476 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %477 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %672, label %479

479:                                              ; preds = %471
  store i32 0, i32* %21, align 4
  %480 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %481 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %479
  %484 = load i32, i32* @IGU_BC_NDSB_NUM_SEGS, align 4
  br label %487

485:                                              ; preds = %479
  %486 = load i32, i32* @IGU_NORM_NDSB_NUM_SEGS, align 4
  br label %487

487:                                              ; preds = %485, %483
  %488 = phi i32 [ %484, %483 ], [ %486, %485 ]
  store i32 %488, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %489

489:                                              ; preds = %537, %487
  %490 = load i32, i32* %19, align 4
  %491 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %492 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = icmp slt i32 %490, %493
  br i1 %494, label %495, label %540

495:                                              ; preds = %489
  %496 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %497 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %19, align 4
  %500 = add nsw i32 %498, %499
  %501 = load i32, i32* %18, align 4
  %502 = mul nsw i32 %500, %501
  store i32 %502, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %503

503:                                              ; preds = %517, %495
  %504 = load i32, i32* %14, align 4
  %505 = load i32, i32* %18, align 4
  %506 = icmp slt i32 %504, %505
  br i1 %506, label %507, label %520

507:                                              ; preds = %503
  %508 = load i32, i32* @IGU_REG_PROD_CONS_MEMORY, align 4
  %509 = load i32, i32* %20, align 4
  %510 = load i32, i32* %14, align 4
  %511 = add nsw i32 %509, %510
  %512 = mul nsw i32 %511, 4
  %513 = add nsw i32 %508, %512
  store i32 %513, i32* %9, align 4
  %514 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %515 = load i32, i32* %9, align 4
  %516 = call i32 @REG_WR(%struct.bnx2x* %514, i32 %515, i32 0)
  br label %517

517:                                              ; preds = %507
  %518 = load i32, i32* %14, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %14, align 4
  br label %503

520:                                              ; preds = %503
  %521 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %522 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %523 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* %19, align 4
  %526 = add nsw i32 %524, %525
  %527 = load i32, i32* @USTORM_ID, align 4
  %528 = load i32, i32* @IGU_INT_NOP, align 4
  %529 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %521, i32 %526, i32 %527, i32 0, i32 %528, i32 1)
  %530 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %531 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %532 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* %19, align 4
  %535 = add nsw i32 %533, %534
  %536 = call i32 @bnx2x_igu_clear_sb(%struct.bnx2x* %530, i32 %535)
  br label %537

537:                                              ; preds = %520
  %538 = load i32, i32* %19, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %19, align 4
  br label %489

540:                                              ; preds = %489
  %541 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %542 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %546

544:                                              ; preds = %540
  %545 = load i32, i32* @IGU_BC_DSB_NUM_SEGS, align 4
  br label %548

546:                                              ; preds = %540
  %547 = load i32, i32* @IGU_NORM_DSB_NUM_SEGS, align 4
  br label %548

548:                                              ; preds = %546, %544
  %549 = phi i32 [ %545, %544 ], [ %547, %546 ]
  store i32 %549, i32* %18, align 4
  %550 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %551 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %550)
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %548
  %554 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %555 = call i32 @BP_FUNC(%struct.bnx2x* %554)
  store i32 %555, i32* %21, align 4
  br label %559

556:                                              ; preds = %548
  %557 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %558 = call i32 @BP_VN(%struct.bnx2x* %557)
  store i32 %558, i32* %21, align 4
  br label %559

559:                                              ; preds = %556, %553
  %560 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %561 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %567

563:                                              ; preds = %559
  %564 = load i32, i32* @IGU_BC_BASE_DSB_PROD, align 4
  %565 = load i32, i32* %21, align 4
  %566 = add nsw i32 %564, %565
  br label %571

567:                                              ; preds = %559
  %568 = load i32, i32* @IGU_NORM_BASE_DSB_PROD, align 4
  %569 = load i32, i32* %21, align 4
  %570 = add nsw i32 %568, %569
  br label %571

571:                                              ; preds = %567, %563
  %572 = phi i32 [ %566, %563 ], [ %570, %567 ]
  store i32 %572, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %573

573:                                              ; preds = %589, %571
  %574 = load i32, i32* %14, align 4
  %575 = load i32, i32* %18, align 4
  %576 = load i32, i32* @E1HVN_MAX, align 4
  %577 = mul nsw i32 %575, %576
  %578 = icmp slt i32 %574, %577
  br i1 %578, label %579, label %593

579:                                              ; preds = %573
  %580 = load i32, i32* @IGU_REG_PROD_CONS_MEMORY, align 4
  %581 = load i32, i32* %20, align 4
  %582 = load i32, i32* %14, align 4
  %583 = add nsw i32 %581, %582
  %584 = mul nsw i32 %583, 4
  %585 = add nsw i32 %580, %584
  store i32 %585, i32* %9, align 4
  %586 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %587 = load i32, i32* %9, align 4
  %588 = call i32 @REG_WR(%struct.bnx2x* %586, i32 %587, i32 0)
  br label %589

589:                                              ; preds = %579
  %590 = load i32, i32* @E1HVN_MAX, align 4
  %591 = load i32, i32* %14, align 4
  %592 = add nsw i32 %591, %590
  store i32 %592, i32* %14, align 4
  br label %573

593:                                              ; preds = %573
  %594 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %595 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %633

597:                                              ; preds = %593
  %598 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %599 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %600 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %599, i32 0, i32 5
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* @USTORM_ID, align 4
  %603 = load i32, i32* @IGU_INT_NOP, align 4
  %604 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %598, i32 %601, i32 %602, i32 0, i32 %603, i32 1)
  %605 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %606 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %607 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %606, i32 0, i32 5
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @CSTORM_ID, align 4
  %610 = load i32, i32* @IGU_INT_NOP, align 4
  %611 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %605, i32 %608, i32 %609, i32 0, i32 %610, i32 1)
  %612 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %613 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %614 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %613, i32 0, i32 5
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* @XSTORM_ID, align 4
  %617 = load i32, i32* @IGU_INT_NOP, align 4
  %618 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %612, i32 %615, i32 %616, i32 0, i32 %617, i32 1)
  %619 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %620 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %621 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %620, i32 0, i32 5
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @TSTORM_ID, align 4
  %624 = load i32, i32* @IGU_INT_NOP, align 4
  %625 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %619, i32 %622, i32 %623, i32 0, i32 %624, i32 1)
  %626 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %627 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %628 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %627, i32 0, i32 5
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* @ATTENTION_ID, align 4
  %631 = load i32, i32* @IGU_INT_NOP, align 4
  %632 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %626, i32 %629, i32 %630, i32 0, i32 %631, i32 1)
  br label %648

633:                                              ; preds = %593
  %634 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %635 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %636 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %635, i32 0, i32 5
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* @USTORM_ID, align 4
  %639 = load i32, i32* @IGU_INT_NOP, align 4
  %640 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %634, i32 %637, i32 %638, i32 0, i32 %639, i32 1)
  %641 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %642 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %643 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %642, i32 0, i32 5
  %644 = load i32, i32* %643, align 4
  %645 = load i32, i32* @ATTENTION_ID, align 4
  %646 = load i32, i32* @IGU_INT_NOP, align 4
  %647 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %641, i32 %644, i32 %645, i32 0, i32 %646, i32 1)
  br label %648

648:                                              ; preds = %633, %597
  %649 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %650 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %651 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %650, i32 0, i32 5
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @bnx2x_igu_clear_sb(%struct.bnx2x* %649, i32 %652)
  %654 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %655 = load i32, i32* @IGU_REG_SB_INT_BEFORE_MASK_LSB, align 4
  %656 = call i32 @REG_WR(%struct.bnx2x* %654, i32 %655, i32 0)
  %657 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %658 = load i32, i32* @IGU_REG_SB_INT_BEFORE_MASK_MSB, align 4
  %659 = call i32 @REG_WR(%struct.bnx2x* %657, i32 %658, i32 0)
  %660 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %661 = load i32, i32* @IGU_REG_SB_MASK_LSB, align 4
  %662 = call i32 @REG_WR(%struct.bnx2x* %660, i32 %661, i32 0)
  %663 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %664 = load i32, i32* @IGU_REG_SB_MASK_MSB, align 4
  %665 = call i32 @REG_WR(%struct.bnx2x* %663, i32 %664, i32 0)
  %666 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %667 = load i32, i32* @IGU_REG_PBA_STATUS_LSB, align 4
  %668 = call i32 @REG_WR(%struct.bnx2x* %666, i32 %667, i32 0)
  %669 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %670 = load i32, i32* @IGU_REG_PBA_STATUS_MSB, align 4
  %671 = call i32 @REG_WR(%struct.bnx2x* %669, i32 %670, i32 0)
  br label %672

672:                                              ; preds = %648, %471
  br label %673

673:                                              ; preds = %672, %449
  %674 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %675 = call i32 @REG_WR(%struct.bnx2x* %674, i32 8468, i32 -1)
  %676 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %677 = call i32 @REG_WR(%struct.bnx2x* %676, i32 8480, i32 -1)
  %678 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %679 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %678)
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %681, label %732

681:                                              ; preds = %673
  %682 = load i32, i32* @HC_REG_MAIN_MEMORY_SIZE, align 4
  %683 = sdiv i32 %682, 2
  store i32 %683, i32* %12, align 4
  %684 = load i32, i32* @HC_REG_MAIN_MEMORY, align 4
  %685 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %686 = call i32 @BP_PORT(%struct.bnx2x* %685)
  %687 = load i32, i32* %12, align 4
  %688 = mul nsw i32 %687, 4
  %689 = mul nsw i32 %686, %688
  %690 = add nsw i32 %684, %689
  store i32 %690, i32* %11, align 4
  %691 = load i32, i32* @HC_REG_HC_PRTY_STS_CLR, align 4
  store i32 %691, i32* %13, align 4
  store i32 8, i32* %15, align 4
  %692 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %693 = load i32, i32* %13, align 4
  %694 = call i32 @REG_RD(%struct.bnx2x* %692, i32 %693)
  store i32 %694, i32* %10, align 4
  %695 = load i32, i32* %10, align 4
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %701

697:                                              ; preds = %681
  %698 = load i32, i32* @NETIF_MSG_HW, align 4
  %699 = load i32, i32* %10, align 4
  %700 = call i32 (i32, i8*, ...) @DP(i32 %698, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %699)
  br label %701

701:                                              ; preds = %697, %681
  %702 = load i32, i32* %11, align 4
  store i32 %702, i32* %14, align 4
  br label %703

703:                                              ; preds = %724, %701
  %704 = load i32, i32* %14, align 4
  %705 = load i32, i32* %11, align 4
  %706 = load i32, i32* %12, align 4
  %707 = mul nsw i32 %706, 4
  %708 = add nsw i32 %705, %707
  %709 = icmp slt i32 %704, %708
  br i1 %709, label %710, label %728

710:                                              ; preds = %703
  %711 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %712 = load i32, i32* %14, align 4
  %713 = load i32, i32* %15, align 4
  %714 = sdiv i32 %713, 4
  %715 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %711, i32 %712, i32 %714)
  %716 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %717 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %718 = load i32, i32* @wb_data, align 4
  %719 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %717, i32 %718)
  %720 = load i32, i32* %14, align 4
  %721 = load i32, i32* %15, align 4
  %722 = sdiv i32 %721, 4
  %723 = call i32 @bnx2x_write_dmae(%struct.bnx2x* %716, i32 %719, i32 %720, i32 %722)
  br label %724

724:                                              ; preds = %710
  %725 = load i32, i32* %15, align 4
  %726 = load i32, i32* %14, align 4
  %727 = add nsw i32 %726, %725
  store i32 %727, i32* %14, align 4
  br label %703

728:                                              ; preds = %703
  %729 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %730 = load i32, i32* %13, align 4
  %731 = call i32 @REG_RD(%struct.bnx2x* %729, i32 %730)
  br label %732

732:                                              ; preds = %728, %673
  %733 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %734 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %733, i32 0, i32 6
  %735 = call i32 @bnx2x_phy_probe(i32* %734)
  store i32 0, i32* %2, align 4
  br label %736

736:                                              ; preds = %732, %42
  %737 = load i32, i32* %2, align 4
  ret i32 %737
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_pf_flr_clnup(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_dump(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_init_block(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_iov_init_ilt(%struct.bnx2x*, i32) #1

declare dso_local i32 @L2_ILT_LINES(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ilt_init_op(%struct.bnx2x*, i32) #1

declare dso_local i32 @CONFIGURE_NIC_MODE(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_searcher(%struct.bnx2x*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2x_iov_init_dq(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ack_sb(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_igu_clear_sb(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_dmae(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_write_dmae(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_phy_probe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
