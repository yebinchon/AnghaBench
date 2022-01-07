; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PHASE_PORT1 = common dso_local global i32 0, align 4
@PHASE_PORT0 = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"starting port init  port %d\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@BLOCK_DMAE = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@TM_REG_LIN0_SCAN_TIME = common dso_local global i32 0, align 4
@TM_REG_LIN0_MAX_ACTIVE_CID = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@ONE_PORT_FLAG = common dso_local global i32 0, align 4
@BRB1_REG_PAUSE_LOW_THRESHOLD_0 = common dso_local global i32 0, align 4
@BRB1_REG_PAUSE_HIGH_THRESHOLD_0 = common dso_local global i32 0, align 4
@BRB1_REG_MAC_GUARANTIED_1 = common dso_local global i32 0, align 4
@BRB1_REG_MAC_GUARANTIED_0 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC_PORT_0 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0_PORT_0 = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS_PORT_0 = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_P0_PAUSE_ENABLE = common dso_local global i32 0, align 4
@PBF_REG_P0_ARB_THRSH = common dso_local global i32 0, align 4
@PBF_REG_P0_INIT_CRD = common dso_local global i32 0, align 4
@PBF_REG_INIT_P0 = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@BLOCK_CDU = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@NIG_REG_P1_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@NIG_REG_P0_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@NIG_REG_LLH1_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_LLH_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_XGXS_SERDES0_MODE_SEL = common dso_local global i32 0, align 4
@NIG_REG_LLH0_BRB1_DRV_MASK_MF = common dso_local global i32 0, align 4
@NIG_REG_LLH1_CLS_TYPE = common dso_local global i32 0, align 4
@NIG_REG_LLH0_CLS_TYPE = common dso_local global i32 0, align 4
@NIG_REG_LLFC_ENABLE_0 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_OUT_EN_0 = common dso_local global i32 0, align 4
@NIG_REG_PAUSE_ENABLE_0 = common dso_local global i32 0, align 4
@MISC_REG_SPIO_EVENT_EN = common dso_local global i32 0, align 4
@MISC_SPIO_SPIO5 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_SPIO5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_hw_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_hw_port(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i32 @BP_PORT(%struct.bnx2x* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @PHASE_PORT1, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @PHASE_PORT0, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @NETIF_MSG_HW, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @DP(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 4
  %26 = add nsw i32 %23, %25
  %27 = call i32 @REG_WR(%struct.bnx2x* %22, i32 %26, i32 0)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = load i32, i32* @BLOCK_MISC, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bnx2x_init_block(%struct.bnx2x* %28, i32 %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = load i32, i32* @BLOCK_PXP, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @bnx2x_init_block(%struct.bnx2x* %32, i32 %33, i32 %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = load i32, i32* @BLOCK_PXP2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @bnx2x_init_block(%struct.bnx2x* %36, i32 %37, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %17
  %44 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %45 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %46 = call i32 @REG_WR(%struct.bnx2x* %44, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %43, %17
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = load i32, i32* @BLOCK_ATC, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @bnx2x_init_block(%struct.bnx2x* %48, i32 %49, i32 %50)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %53 = load i32, i32* @BLOCK_DMAE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @bnx2x_init_block(%struct.bnx2x* %52, i32 %53, i32 %54)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @bnx2x_init_block(%struct.bnx2x* %56, i32 %57, i32 %58)
  %60 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %61 = load i32, i32* @BLOCK_QM, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @bnx2x_init_block(%struct.bnx2x* %60, i32 %61, i32 %62)
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = load i32, i32* @BLOCK_TCM, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @bnx2x_init_block(%struct.bnx2x* %64, i32 %65, i32 %66)
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = load i32, i32* @BLOCK_UCM, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @bnx2x_init_block(%struct.bnx2x* %68, i32 %69, i32 %70)
  %72 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %73 = load i32, i32* @BLOCK_CCM, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @bnx2x_init_block(%struct.bnx2x* %72, i32 %73, i32 %74)
  %76 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %77 = load i32, i32* @BLOCK_XCM, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @bnx2x_init_block(%struct.bnx2x* %76, i32 %77, i32 %78)
  %80 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @INITOP_SET, align 4
  %85 = call i32 @bnx2x_qm_init_cid_count(%struct.bnx2x* %80, i32 %83, i32 %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %47
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = load i32, i32* @BLOCK_TM, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @bnx2x_init_block(%struct.bnx2x* %90, i32 %91, i32 %92)
  %94 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %95 = load i32, i32* @TM_REG_LIN0_SCAN_TIME, align 4
  %96 = load i32, i32* %3, align 4
  %97 = mul nsw i32 %96, 4
  %98 = add nsw i32 %95, %97
  %99 = call i32 @REG_WR(%struct.bnx2x* %94, i32 %98, i32 20)
  %100 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %101 = load i32, i32* @TM_REG_LIN0_MAX_ACTIVE_CID, align 4
  %102 = load i32, i32* %3, align 4
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 %101, %103
  %105 = call i32 @REG_WR(%struct.bnx2x* %100, i32 %104, i32 31)
  br label %106

106:                                              ; preds = %89, %47
  %107 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %108 = load i32, i32* @BLOCK_DORQ, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @bnx2x_init_block(%struct.bnx2x* %107, i32 %108, i32 %109)
  %111 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %112 = load i32, i32* @BLOCK_BRB1, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @bnx2x_init_block(%struct.bnx2x* %111, i32 %112, i32 %113)
  %115 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %116 = call i64 @CHIP_IS_E1(%struct.bnx2x* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %106
  %119 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %120 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %193

122:                                              ; preds = %118, %106
  %123 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %124 = call i32 @IS_MF(%struct.bnx2x* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ONE_PORT_FLAG, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 160, i32 246
  store i32 %134, i32* %5, align 4
  br label %176

135:                                              ; preds = %122
  %136 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %137 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 4096
  br i1 %141, label %142, label %166

142:                                              ; preds = %135
  %143 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %144 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ONE_PORT_FLAG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 160, i32* %5, align 4
  br label %165

150:                                              ; preds = %142
  %151 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %152 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %151, i32 0, i32 3
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sdiv i32 %156, 64
  %158 = add nsw i32 96, %157
  %159 = load i32, i32* %7, align 4
  %160 = srem i32 %159, 64
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  %164 = add nsw i32 %158, %163
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %150, %149
  br label %175

166:                                              ; preds = %135
  %167 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %168 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ONE_PORT_FLAG, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 80, i32 160
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %166, %165
  br label %176

176:                                              ; preds = %175, %126
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 56
  store i32 %178, i32* %6, align 4
  %179 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %180 = load i32, i32* @BRB1_REG_PAUSE_LOW_THRESHOLD_0, align 4
  %181 = load i32, i32* %3, align 4
  %182 = mul nsw i32 %181, 4
  %183 = add nsw i32 %180, %182
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @REG_WR(%struct.bnx2x* %179, i32 %183, i32 %184)
  %186 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %187 = load i32, i32* @BRB1_REG_PAUSE_HIGH_THRESHOLD_0, align 4
  %188 = load i32, i32* %3, align 4
  %189 = mul nsw i32 %188, 4
  %190 = add nsw i32 %187, %189
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @REG_WR(%struct.bnx2x* %186, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %176, %118
  %194 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %195 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %199 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %200 = call i32 @BP_PORT(%struct.bnx2x* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @BRB1_REG_MAC_GUARANTIED_1, align 4
  br label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @BRB1_REG_MAC_GUARANTIED_0, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = call i32 @REG_WR(%struct.bnx2x* %198, i32 %207, i32 40)
  br label %209

209:                                              ; preds = %206, %193
  %210 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %211 = load i32, i32* @BLOCK_PRS, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @bnx2x_init_block(%struct.bnx2x* %210, i32 %211, i32 %212)
  %214 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %215 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %274

217:                                              ; preds = %209
  %218 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %219 = call i64 @IS_MF_AFEX(%struct.bnx2x* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %255

221:                                              ; preds = %217
  %222 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %223 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %224 = call i32 @BP_PORT(%struct.bnx2x* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_1, align 4
  br label %230

228:                                              ; preds = %221
  %229 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_0, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = call i32 @REG_WR(%struct.bnx2x* %222, i32 %231, i32 14)
  %233 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %234 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %235 = call i32 @BP_PORT(%struct.bnx2x* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0_PORT_1, align 4
  br label %241

239:                                              ; preds = %230
  %240 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0_PORT_0, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  %243 = call i32 @REG_WR(%struct.bnx2x* %233, i32 %242, i32 6)
  %244 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %245 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %246 = call i32 @BP_PORT(%struct.bnx2x* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS_PORT_1, align 4
  br label %252

250:                                              ; preds = %241
  %251 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS_PORT_0, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi i32 [ %249, %248 ], [ %251, %250 ]
  %254 = call i32 @REG_WR(%struct.bnx2x* %244, i32 %253, i32 10)
  br label %273

255:                                              ; preds = %217
  %256 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %257 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %258 = call i32 @BP_PORT(%struct.bnx2x* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_1, align 4
  br label %264

262:                                              ; preds = %255
  %263 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_0, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %267 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  %270 = zext i1 %269 to i64
  %271 = select i1 %269, i32 7, i32 6
  %272 = call i32 @REG_WR(%struct.bnx2x* %256, i32 %265, i32 %271)
  br label %273

273:                                              ; preds = %264, %252
  br label %274

274:                                              ; preds = %273, %209
  %275 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %276 = load i32, i32* @BLOCK_TSDM, align 4
  %277 = load i32, i32* %4, align 4
  %278 = call i32 @bnx2x_init_block(%struct.bnx2x* %275, i32 %276, i32 %277)
  %279 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %280 = load i32, i32* @BLOCK_CSDM, align 4
  %281 = load i32, i32* %4, align 4
  %282 = call i32 @bnx2x_init_block(%struct.bnx2x* %279, i32 %280, i32 %281)
  %283 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %284 = load i32, i32* @BLOCK_USDM, align 4
  %285 = load i32, i32* %4, align 4
  %286 = call i32 @bnx2x_init_block(%struct.bnx2x* %283, i32 %284, i32 %285)
  %287 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %288 = load i32, i32* @BLOCK_XSDM, align 4
  %289 = load i32, i32* %4, align 4
  %290 = call i32 @bnx2x_init_block(%struct.bnx2x* %287, i32 %288, i32 %289)
  %291 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %292 = load i32, i32* @BLOCK_TSEM, align 4
  %293 = load i32, i32* %4, align 4
  %294 = call i32 @bnx2x_init_block(%struct.bnx2x* %291, i32 %292, i32 %293)
  %295 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %296 = load i32, i32* @BLOCK_USEM, align 4
  %297 = load i32, i32* %4, align 4
  %298 = call i32 @bnx2x_init_block(%struct.bnx2x* %295, i32 %296, i32 %297)
  %299 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %300 = load i32, i32* @BLOCK_CSEM, align 4
  %301 = load i32, i32* %4, align 4
  %302 = call i32 @bnx2x_init_block(%struct.bnx2x* %299, i32 %300, i32 %301)
  %303 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %304 = load i32, i32* @BLOCK_XSEM, align 4
  %305 = load i32, i32* %4, align 4
  %306 = call i32 @bnx2x_init_block(%struct.bnx2x* %303, i32 %304, i32 %305)
  %307 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %308 = load i32, i32* @BLOCK_UPB, align 4
  %309 = load i32, i32* %4, align 4
  %310 = call i32 @bnx2x_init_block(%struct.bnx2x* %307, i32 %308, i32 %309)
  %311 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %312 = load i32, i32* @BLOCK_XPB, align 4
  %313 = load i32, i32* %4, align 4
  %314 = call i32 @bnx2x_init_block(%struct.bnx2x* %311, i32 %312, i32 %313)
  %315 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %316 = load i32, i32* @BLOCK_PBF, align 4
  %317 = load i32, i32* %4, align 4
  %318 = call i32 @bnx2x_init_block(%struct.bnx2x* %315, i32 %316, i32 %317)
  %319 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %320 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %354

322:                                              ; preds = %274
  %323 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %324 = load i32, i32* @PBF_REG_P0_PAUSE_ENABLE, align 4
  %325 = load i32, i32* %3, align 4
  %326 = mul nsw i32 %325, 4
  %327 = add nsw i32 %324, %326
  %328 = call i32 @REG_WR(%struct.bnx2x* %323, i32 %327, i32 0)
  %329 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %330 = load i32, i32* @PBF_REG_P0_ARB_THRSH, align 4
  %331 = load i32, i32* %3, align 4
  %332 = mul nsw i32 %331, 4
  %333 = add nsw i32 %330, %332
  %334 = call i32 @REG_WR(%struct.bnx2x* %329, i32 %333, i32 565)
  %335 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %336 = load i32, i32* @PBF_REG_P0_INIT_CRD, align 4
  %337 = load i32, i32* %3, align 4
  %338 = mul nsw i32 %337, 4
  %339 = add nsw i32 %336, %338
  %340 = call i32 @REG_WR(%struct.bnx2x* %335, i32 %339, i32 1096)
  %341 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %342 = load i32, i32* @PBF_REG_INIT_P0, align 4
  %343 = load i32, i32* %3, align 4
  %344 = mul nsw i32 %343, 4
  %345 = add nsw i32 %342, %344
  %346 = call i32 @REG_WR(%struct.bnx2x* %341, i32 %345, i32 1)
  %347 = call i32 @udelay(i32 50)
  %348 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %349 = load i32, i32* @PBF_REG_INIT_P0, align 4
  %350 = load i32, i32* %3, align 4
  %351 = mul nsw i32 %350, 4
  %352 = add nsw i32 %349, %351
  %353 = call i32 @REG_WR(%struct.bnx2x* %348, i32 %352, i32 0)
  br label %354

354:                                              ; preds = %322, %274
  %355 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %356 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %354
  %359 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %360 = load i32, i32* @BLOCK_SRC, align 4
  %361 = load i32, i32* %4, align 4
  %362 = call i32 @bnx2x_init_block(%struct.bnx2x* %359, i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %358, %354
  %364 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %365 = load i32, i32* @BLOCK_CDU, align 4
  %366 = load i32, i32* %4, align 4
  %367 = call i32 @bnx2x_init_block(%struct.bnx2x* %364, i32 %365, i32 %366)
  %368 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %369 = load i32, i32* @BLOCK_CFC, align 4
  %370 = load i32, i32* %4, align 4
  %371 = call i32 @bnx2x_init_block(%struct.bnx2x* %368, i32 %369, i32 %370)
  %372 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %373 = call i64 @CHIP_IS_E1(%struct.bnx2x* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %388

375:                                              ; preds = %363
  %376 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %377 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %378 = load i32, i32* %3, align 4
  %379 = mul nsw i32 %378, 8
  %380 = add nsw i32 %377, %379
  %381 = call i32 @REG_WR(%struct.bnx2x* %376, i32 %380, i32 0)
  %382 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %383 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %384 = load i32, i32* %3, align 4
  %385 = mul nsw i32 %384, 8
  %386 = add nsw i32 %383, %385
  %387 = call i32 @REG_WR(%struct.bnx2x* %382, i32 %386, i32 0)
  br label %388

388:                                              ; preds = %375, %363
  %389 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %390 = load i32, i32* @BLOCK_HC, align 4
  %391 = load i32, i32* %4, align 4
  %392 = call i32 @bnx2x_init_block(%struct.bnx2x* %389, i32 %390, i32 %391)
  %393 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %394 = load i32, i32* @BLOCK_IGU, align 4
  %395 = load i32, i32* %4, align 4
  %396 = call i32 @bnx2x_init_block(%struct.bnx2x* %393, i32 %394, i32 %395)
  %397 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %398 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %399 = load i32, i32* %4, align 4
  %400 = call i32 @bnx2x_init_block(%struct.bnx2x* %397, i32 %398, i32 %399)
  %401 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %402 = call i32 @IS_MF(%struct.bnx2x* %401)
  %403 = icmp ne i32 %402, 0
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i32 247, i32 7
  store i32 %405, i32* %7, align 4
  %406 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %407 = call i64 @CHIP_IS_E1(%struct.bnx2x* %406)
  %408 = icmp ne i64 %407, 0
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i32 0, i32 16
  %411 = load i32, i32* %7, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %7, align 4
  %413 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %414 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  %415 = load i32, i32* %3, align 4
  %416 = mul nsw i32 %415, 4
  %417 = add nsw i32 %414, %416
  %418 = load i32, i32* %7, align 4
  %419 = call i32 @REG_WR(%struct.bnx2x* %413, i32 %417, i32 %418)
  %420 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %421 = load i32, i32* @BLOCK_NIG, align 4
  %422 = load i32, i32* %4, align 4
  %423 = call i32 @bnx2x_init_block(%struct.bnx2x* %420, i32 %421, i32 %422)
  %424 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %425 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %479, label %427

427:                                              ; preds = %388
  %428 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %429 = call i64 @IS_MF_AFEX(%struct.bnx2x* %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %443

431:                                              ; preds = %427
  %432 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %433 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %434 = call i32 @BP_PORT(%struct.bnx2x* %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %431
  %437 = load i32, i32* @NIG_REG_P1_HDRS_AFTER_BASIC, align 4
  br label %440

438:                                              ; preds = %431
  %439 = load i32, i32* @NIG_REG_P0_HDRS_AFTER_BASIC, align 4
  br label %440

440:                                              ; preds = %438, %436
  %441 = phi i32 [ %437, %436 ], [ %439, %438 ]
  %442 = call i32 @REG_WR(%struct.bnx2x* %432, i32 %441, i32 14)
  br label %460

443:                                              ; preds = %427
  %444 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %445 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %446 = call i32 @BP_PORT(%struct.bnx2x* %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %450

448:                                              ; preds = %443
  %449 = load i32, i32* @NIG_REG_P1_HDRS_AFTER_BASIC, align 4
  br label %452

450:                                              ; preds = %443
  %451 = load i32, i32* @NIG_REG_P0_HDRS_AFTER_BASIC, align 4
  br label %452

452:                                              ; preds = %450, %448
  %453 = phi i32 [ %449, %448 ], [ %451, %450 ]
  %454 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %455 = call i64 @IS_MF_SD(%struct.bnx2x* %454)
  %456 = icmp ne i64 %455, 0
  %457 = zext i1 %456 to i64
  %458 = select i1 %456, i32 7, i32 6
  %459 = call i32 @REG_WR(%struct.bnx2x* %444, i32 %453, i32 %458)
  br label %460

460:                                              ; preds = %452, %440
  %461 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %462 = call i64 @CHIP_IS_E3(%struct.bnx2x* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %478

464:                                              ; preds = %460
  %465 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %466 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %467 = call i32 @BP_PORT(%struct.bnx2x* %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %464
  %470 = load i32, i32* @NIG_REG_LLH1_MF_MODE, align 4
  br label %473

471:                                              ; preds = %464
  %472 = load i32, i32* @NIG_REG_LLH_MF_MODE, align 4
  br label %473

473:                                              ; preds = %471, %469
  %474 = phi i32 [ %470, %469 ], [ %472, %471 ]
  %475 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %476 = call i32 @IS_MF(%struct.bnx2x* %475)
  %477 = call i32 @REG_WR(%struct.bnx2x* %465, i32 %474, i32 %476)
  br label %478

478:                                              ; preds = %473, %460
  br label %479

479:                                              ; preds = %478, %388
  %480 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %481 = call i64 @CHIP_IS_E3(%struct.bnx2x* %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %490, label %483

483:                                              ; preds = %479
  %484 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %485 = load i32, i32* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 4
  %486 = load i32, i32* %3, align 4
  %487 = mul nsw i32 %486, 4
  %488 = add nsw i32 %485, %487
  %489 = call i32 @REG_WR(%struct.bnx2x* %484, i32 %488, i32 1)
  br label %490

490:                                              ; preds = %483, %479
  %491 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %492 = call i64 @CHIP_IS_E1(%struct.bnx2x* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %547, label %494

494:                                              ; preds = %490
  %495 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %496 = load i32, i32* @NIG_REG_LLH0_BRB1_DRV_MASK_MF, align 4
  %497 = load i32, i32* %3, align 4
  %498 = mul nsw i32 %497, 4
  %499 = add nsw i32 %496, %498
  %500 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %501 = call i64 @IS_MF_SD(%struct.bnx2x* %500)
  %502 = icmp ne i64 %501, 0
  %503 = zext i1 %502 to i64
  %504 = select i1 %502, i32 1, i32 2
  %505 = call i32 @REG_WR(%struct.bnx2x* %495, i32 %499, i32 %504)
  %506 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %507 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %528, label %509

509:                                              ; preds = %494
  store i32 0, i32* %7, align 4
  %510 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %511 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  switch i32 %512, label %515 [
    i32 129, label %513
    i32 128, label %514
    i32 130, label %514
  ]

513:                                              ; preds = %509
  store i32 1, i32* %7, align 4
  br label %515

514:                                              ; preds = %509, %509
  store i32 2, i32* %7, align 4
  br label %515

515:                                              ; preds = %509, %514, %513
  %516 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %517 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %518 = call i32 @BP_PORT(%struct.bnx2x* %517)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %515
  %521 = load i32, i32* @NIG_REG_LLH1_CLS_TYPE, align 4
  br label %524

522:                                              ; preds = %515
  %523 = load i32, i32* @NIG_REG_LLH0_CLS_TYPE, align 4
  br label %524

524:                                              ; preds = %522, %520
  %525 = phi i32 [ %521, %520 ], [ %523, %522 ]
  %526 = load i32, i32* %7, align 4
  %527 = call i32 @REG_WR(%struct.bnx2x* %516, i32 %525, i32 %526)
  br label %528

528:                                              ; preds = %524, %494
  %529 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %530 = load i32, i32* @NIG_REG_LLFC_ENABLE_0, align 4
  %531 = load i32, i32* %3, align 4
  %532 = mul nsw i32 %531, 4
  %533 = add nsw i32 %530, %532
  %534 = call i32 @REG_WR(%struct.bnx2x* %529, i32 %533, i32 0)
  %535 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %536 = load i32, i32* @NIG_REG_LLFC_OUT_EN_0, align 4
  %537 = load i32, i32* %3, align 4
  %538 = mul nsw i32 %537, 4
  %539 = add nsw i32 %536, %538
  %540 = call i32 @REG_WR(%struct.bnx2x* %535, i32 %539, i32 0)
  %541 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %542 = load i32, i32* @NIG_REG_PAUSE_ENABLE_0, align 4
  %543 = load i32, i32* %3, align 4
  %544 = mul nsw i32 %543, 4
  %545 = add nsw i32 %542, %544
  %546 = call i32 @REG_WR(%struct.bnx2x* %541, i32 %545, i32 1)
  br label %547

547:                                              ; preds = %528, %490
  %548 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %549 = load i32, i32* @MISC_REG_SPIO_EVENT_EN, align 4
  %550 = call i32 @REG_RD(%struct.bnx2x* %548, i32 %549)
  store i32 %550, i32* %7, align 4
  %551 = load i32, i32* %7, align 4
  %552 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %553 = and i32 %551, %552
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %574

555:                                              ; preds = %547
  %556 = load i32, i32* %3, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %560

558:                                              ; preds = %555
  %559 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0, align 4
  br label %562

560:                                              ; preds = %555
  %561 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0, align 4
  br label %562

562:                                              ; preds = %560, %558
  %563 = phi i32 [ %559, %558 ], [ %561, %560 ]
  store i32 %563, i32* %8, align 4
  %564 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %565 = load i32, i32* %8, align 4
  %566 = call i32 @REG_RD(%struct.bnx2x* %564, i32 %565)
  store i32 %566, i32* %7, align 4
  %567 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %568 = load i32, i32* %7, align 4
  %569 = or i32 %568, %567
  store i32 %569, i32* %7, align 4
  %570 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %571 = load i32, i32* %8, align 4
  %572 = load i32, i32* %7, align 4
  %573 = call i32 @REG_WR(%struct.bnx2x* %570, i32 %571, i32 %572)
  br label %574

574:                                              ; preds = %562, %547
  ret i32 0
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_init_block(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_qm_init_cid_count(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
