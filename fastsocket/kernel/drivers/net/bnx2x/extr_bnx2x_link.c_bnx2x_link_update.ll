; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i64, i32, %struct.bnx2x_phy*, i32, %struct.bnx2x* }
%struct.bnx2x_phy = type { i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32, i32, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i64, i64, i64, i32, i32, i64, i32, i32 }

@MAX_PHYS = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@PHY_HALF_OPEN_CONN_FLAG = common dso_local global i64 0, align 8
@LINK_UPDATE_MASK = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"port %x, XGXS?%x, int_status 0x%x\0A\00", align 1
@PHY_XGXS_FLAG = common dso_local global i64 0, align 8
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_STATUS_MISC_MI_INT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"int_mask 0x%x MI_INT %x, SERDES_LINK %x\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_REG_SERDES0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c" 10G %x, XGXS_LINK %x\0A\00", align 1
@NIG_REG_XGXS0_STATUS_LINK10G = common dso_local global i64 0, align 8
@NIG_REG_XGXS0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"phy in index %d link is up\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"phy in index %d link is down\0A\00", align 1
@EXT_PHY2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"Invalid link indicationmpc=0x%x. DISABLING LINK !!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Disabling TX on EXT_PHY2\0A\00", align 1
@DISABLE_TX = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@LINK_STATUS_SERDES_LINK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Active external phy selected: %x\0A\00", align 1
@FLAGS_REARM_LATCH_SIGNAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [75 x i8] c"vars->flow_ctrl = 0x%x, vars->link_status = 0x%x, ext_phy_line_speed = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"Internal link speed %d is different than the external link speed %d\0A\00", align 1
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"ext_phy_link_up = %d, int_link_up = %d, init_preceding = %d\0A\00", align 1
@FLAGS_INIT_XGXS_FIRST = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@PHY_SGMII_FLAG = common dso_local global i64 0, align 8
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i64 0, align 8
@FEATURE_CONFIG_BC_SUPPORTS_AFEX = common dso_local global i32 0, align 4
@DRV_MSG_CODE_LINK_STATUS_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_link_update(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.bnx2x_phy*, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %19 = load %struct.link_params*, %struct.link_params** %3, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 5
  %21 = load %struct.bnx2x*, %struct.bnx2x** %20, align 8
  store %struct.bnx2x* %21, %struct.bnx2x** %5, align 8
  %22 = load i32, i32* @MAX_PHYS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca %struct.link_vars, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.link_params*, %struct.link_params** %3, align 8
  %27 = getelementptr inbounds %struct.link_params, %struct.link_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %29 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %30 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* @INT_PHY, align 8
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* @PHY_HALF_OPEN_CONN_FLAG, align 8
  %34 = xor i64 %33, -1
  %35 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %36 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* @LINK_UPDATE_MASK, align 8
  %40 = xor i64 %39, -1
  %41 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %42 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* @INT_PHY, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %81, %2
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.link_params*, %struct.link_params** %3, align 8
  %49 = getelementptr inbounds %struct.link_params, %struct.link_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %53
  %55 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %56
  %58 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %59
  %61 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @DUPLEX_FULL, align 4
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %63
  %65 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %64, i32 0, i32 8
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %66
  %68 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %67, i32 0, i32 4
  store i32 0, i32* %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %69
  %71 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %70, i32 0, i32 5
  store i32 0, i32* %71, align 4
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %72
  %74 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %76 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %78
  %80 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %79, i32 0, i32 7
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %52
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %46

84:                                               ; preds = %46
  %85 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %86 = call i64 @USES_WARPCORE(%struct.bnx2x* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.link_params*, %struct.link_params** %3, align 8
  %90 = load %struct.link_params*, %struct.link_params** %3, align 8
  %91 = getelementptr inbounds %struct.link_params, %struct.link_params* %90, i32 0, i32 3
  %92 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %91, align 8
  %93 = load i64, i64* @INT_PHY, align 8
  %94 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %92, i64 %93
  %95 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %89, %struct.bnx2x_phy* %94)
  br label %96

96:                                               ; preds = %88, %84
  %97 = load i32, i32* @NETIF_MSG_LINK, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %100 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PHY_XGXS_FLAG, align 8
  %103 = and i64 %101, %102
  %104 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %105 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %106 = load i64, i64* %8, align 8
  %107 = mul i64 %106, 4
  %108 = add i64 %105, %107
  %109 = call i64 @REG_RD(%struct.bnx2x* %104, i64 %108)
  %110 = call i32 (i32, i8*, ...) @DP(i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %98, i64 %103, i64 %109)
  %111 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %112 = load i64, i64* @NIG_REG_EMAC0_STATUS_MISC_MI_INT, align 8
  %113 = load i64, i64* %8, align 8
  %114 = mul i64 %113, 24
  %115 = add i64 %112, %114
  %116 = call i64 @REG_RD(%struct.bnx2x* %111, i64 %115)
  %117 = icmp ugt i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %14, align 8
  %120 = load i32, i32* @NETIF_MSG_LINK, align 4
  %121 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %122 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %123 = load i64, i64* %8, align 8
  %124 = mul i64 %123, 4
  %125 = add i64 %122, %124
  %126 = call i64 @REG_RD(%struct.bnx2x* %121, i64 %125)
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %129 = load i64, i64* @NIG_REG_SERDES0_STATUS_LINK_STATUS, align 8
  %130 = load i64, i64* %8, align 8
  %131 = mul i64 %130, 60
  %132 = add i64 %129, %131
  %133 = call i64 @REG_RD(%struct.bnx2x* %128, i64 %132)
  %134 = call i32 (i32, i8*, ...) @DP(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %126, i64 %127, i64 %133)
  %135 = load i32, i32* @NETIF_MSG_LINK, align 4
  %136 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %137 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK10G, align 8
  %138 = load i64, i64* %8, align 8
  %139 = mul i64 %138, 104
  %140 = add i64 %137, %139
  %141 = call i64 @REG_RD(%struct.bnx2x* %136, i64 %140)
  %142 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %143 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK_STATUS, align 8
  %144 = load i64, i64* %8, align 8
  %145 = mul i64 %144, 104
  %146 = add i64 %143, %145
  %147 = call i64 @REG_RD(%struct.bnx2x* %142, i64 %146)
  %148 = call i32 (i32, i8*, ...) @DP(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %141, i64 %147)
  %149 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %150 = call i32 @CHIP_IS_E3(%struct.bnx2x* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %96
  %153 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %154 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %155 = load i64, i64* %8, align 8
  %156 = mul i64 %155, 4
  %157 = add i64 %154, %156
  %158 = call i32 @REG_WR(%struct.bnx2x* %153, i64 %157, i32 0)
  br label %159

159:                                              ; preds = %152, %96
  %160 = load i64, i64* @EXT_PHY1, align 8
  store i64 %160, i64* %10, align 8
  br label %161

161:                                              ; preds = %217, %159
  %162 = load i64, i64* %10, align 8
  %163 = load %struct.link_params*, %struct.link_params** %3, align 8
  %164 = getelementptr inbounds %struct.link_params, %struct.link_params* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ult i64 %162, %165
  br i1 %166, label %167, label %220

167:                                              ; preds = %161
  %168 = load %struct.link_params*, %struct.link_params** %3, align 8
  %169 = getelementptr inbounds %struct.link_params, %struct.link_params* %168, i32 0, i32 3
  %170 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %169, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %170, i64 %171
  store %struct.bnx2x_phy* %172, %struct.bnx2x_phy** %18, align 8
  %173 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %18, align 8
  %174 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %173, i32 0, i32 0
  %175 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %174, align 8
  %176 = icmp ne i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %167
  br label %217

178:                                              ; preds = %167
  %179 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %18, align 8
  %180 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %179, i32 0, i32 0
  %181 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %180, align 8
  %182 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %18, align 8
  %183 = load %struct.link_params*, %struct.link_params** %3, align 8
  %184 = load i64, i64* %10, align 8
  %185 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %184
  %186 = call i64 %181(%struct.bnx2x_phy* %182, %struct.link_params* %183, %struct.link_vars* %185)
  store i64 %186, i64* %12, align 8
  %187 = load i64, i64* %12, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %178
  %190 = load i32, i32* @NETIF_MSG_LINK, align 4
  %191 = load i64, i64* %10, align 8
  %192 = call i32 (i32, i8*, ...) @DP(i32 %190, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %191)
  br label %197

193:                                              ; preds = %178
  %194 = load i32, i32* @NETIF_MSG_LINK, align 4
  %195 = load i64, i64* %10, align 8
  %196 = call i32 (i32, i8*, ...) @DP(i32 %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %195)
  br label %217

197:                                              ; preds = %189
  %198 = load i64, i64* %11, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  store i64 1, i64* %11, align 8
  %201 = load i64, i64* %10, align 8
  store i64 %201, i64* %17, align 8
  br label %216

202:                                              ; preds = %197
  %203 = load %struct.link_params*, %struct.link_params** %3, align 8
  %204 = call i32 @bnx2x_phy_selection(%struct.link_params* %203)
  switch i32 %204, label %209 [
    i32 129, label %205
    i32 130, label %205
    i32 128, label %207
  ]

205:                                              ; preds = %202, %202
  %206 = load i64, i64* @EXT_PHY1, align 8
  store i64 %206, i64* %17, align 8
  br label %215

207:                                              ; preds = %202
  %208 = load i64, i64* @EXT_PHY2, align 8
  store i64 %208, i64* %17, align 8
  br label %215

209:                                              ; preds = %202
  %210 = load i32, i32* @NETIF_MSG_LINK, align 4
  %211 = load %struct.link_params*, %struct.link_params** %3, align 8
  %212 = getelementptr inbounds %struct.link_params, %struct.link_params* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, ...) @DP(i32 %210, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %213)
  store i64 0, i64* %11, align 8
  br label %215

215:                                              ; preds = %209, %207, %205
  br label %216

216:                                              ; preds = %215, %200
  br label %217

217:                                              ; preds = %216, %193, %177
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %10, align 8
  br label %161

220:                                              ; preds = %161
  %221 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %222 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %16, align 8
  %224 = load %struct.link_params*, %struct.link_params** %3, align 8
  %225 = getelementptr inbounds %struct.link_params, %struct.link_params* %224, i32 0, i32 3
  %226 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %225, align 8
  %227 = load i64, i64* @INT_PHY, align 8
  %228 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %226, i64 %227
  %229 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %228, i32 0, i32 0
  %230 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %229, align 8
  %231 = icmp ne i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %230, null
  br i1 %231, label %232, label %248

232:                                              ; preds = %220
  %233 = load %struct.link_params*, %struct.link_params** %3, align 8
  %234 = getelementptr inbounds %struct.link_params, %struct.link_params* %233, i32 0, i32 3
  %235 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %234, align 8
  %236 = load i64, i64* @INT_PHY, align 8
  %237 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %235, i64 %236
  %238 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %237, i32 0, i32 0
  %239 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %238, align 8
  %240 = load %struct.link_params*, %struct.link_params** %3, align 8
  %241 = getelementptr inbounds %struct.link_params, %struct.link_params* %240, i32 0, i32 3
  %242 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %241, align 8
  %243 = load i64, i64* @INT_PHY, align 8
  %244 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %242, i64 %243
  %245 = load %struct.link_params*, %struct.link_params** %3, align 8
  %246 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %247 = call i64 %239(%struct.bnx2x_phy* %244, %struct.link_params* %245, %struct.link_vars* %246)
  br label %248

248:                                              ; preds = %232, %220
  %249 = load i64, i64* %17, align 8
  %250 = load i64, i64* @INT_PHY, align 8
  %251 = icmp ugt i64 %249, %250
  br i1 %251, label %252, label %342

252:                                              ; preds = %248
  %253 = load i64, i64* %17, align 8
  %254 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %253
  %255 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %258 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %257, i32 0, i32 3
  store i64 %256, i64* %258, align 8
  %259 = load i64, i64* %17, align 8
  %260 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %259
  %261 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %264 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = or i64 %265, %262
  store i64 %266, i64* %264, align 8
  %267 = load i64, i64* %17, align 8
  %268 = load i64, i64* @EXT_PHY1, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %298

270:                                              ; preds = %252
  %271 = load %struct.link_params*, %struct.link_params** %3, align 8
  %272 = getelementptr inbounds %struct.link_params, %struct.link_params* %271, i32 0, i32 3
  %273 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %272, align 8
  %274 = load i64, i64* @EXT_PHY2, align 8
  %275 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %273, i64 %274
  %276 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %275, i32 0, i32 4
  %277 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)** %276, align 8
  %278 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)* %277, null
  br i1 %278, label %279, label %297

279:                                              ; preds = %270
  %280 = load i32, i32* @NETIF_MSG_LINK, align 4
  %281 = call i32 (i32, i8*, ...) @DP(i32 %280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %282 = load %struct.link_params*, %struct.link_params** %3, align 8
  %283 = getelementptr inbounds %struct.link_params, %struct.link_params* %282, i32 0, i32 3
  %284 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %283, align 8
  %285 = load i64, i64* @EXT_PHY2, align 8
  %286 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %284, i64 %285
  %287 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %286, i32 0, i32 4
  %288 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)** %287, align 8
  %289 = load %struct.link_params*, %struct.link_params** %3, align 8
  %290 = getelementptr inbounds %struct.link_params, %struct.link_params* %289, i32 0, i32 3
  %291 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %290, align 8
  %292 = load i64, i64* @EXT_PHY2, align 8
  %293 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %291, i64 %292
  %294 = load %struct.link_params*, %struct.link_params** %3, align 8
  %295 = load i32, i32* @DISABLE_TX, align 4
  %296 = call i32 %288(%struct.bnx2x_phy* %293, %struct.link_params* %294, i32 %295)
  br label %297

297:                                              ; preds = %279, %270
  br label %298

298:                                              ; preds = %297, %252
  %299 = load i64, i64* %17, align 8
  %300 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %299
  %301 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %15, align 8
  %303 = load i64, i64* %17, align 8
  %304 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %303
  %305 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %308 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %307, i32 0, i32 8
  store i32 %306, i32* %308, align 4
  %309 = load %struct.link_params*, %struct.link_params** %3, align 8
  %310 = getelementptr inbounds %struct.link_params, %struct.link_params* %309, i32 0, i32 3
  %311 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %310, align 8
  %312 = load i64, i64* %17, align 8
  %313 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %311, i64 %312
  %314 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %298
  %320 = load i64, i64* @LINK_STATUS_SERDES_LINK, align 8
  %321 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %322 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = or i64 %323, %320
  store i64 %324, i64* %322, align 8
  br label %332

325:                                              ; preds = %298
  %326 = load i64, i64* @LINK_STATUS_SERDES_LINK, align 8
  %327 = xor i64 %326, -1
  %328 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %329 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = and i64 %330, %327
  store i64 %331, i64* %329, align 8
  br label %332

332:                                              ; preds = %325, %319
  %333 = load i64, i64* %17, align 8
  %334 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %333
  %335 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %334, i32 0, i32 7
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %338 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %337, i32 0, i32 7
  store i32 %336, i32* %338, align 8
  %339 = load i32, i32* @NETIF_MSG_LINK, align 4
  %340 = load i64, i64* %17, align 8
  %341 = call i32 (i32, i8*, ...) @DP(i32 %339, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %340)
  br label %342

342:                                              ; preds = %332, %248
  %343 = load i64, i64* @EXT_PHY1, align 8
  store i64 %343, i64* %10, align 8
  br label %344

344:                                              ; preds = %370, %342
  %345 = load i64, i64* %10, align 8
  %346 = load %struct.link_params*, %struct.link_params** %3, align 8
  %347 = getelementptr inbounds %struct.link_params, %struct.link_params* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = icmp ult i64 %345, %348
  br i1 %349, label %350, label %373

350:                                              ; preds = %344
  %351 = load %struct.link_params*, %struct.link_params** %3, align 8
  %352 = getelementptr inbounds %struct.link_params, %struct.link_params* %351, i32 0, i32 3
  %353 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %352, align 8
  %354 = load i64, i64* %10, align 8
  %355 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %353, i64 %354
  %356 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @FLAGS_REARM_LATCH_SIGNAL, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %350
  %362 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %363 = load i64, i64* %8, align 8
  %364 = load i64, i64* %10, align 8
  %365 = load i64, i64* %17, align 8
  %366 = icmp eq i64 %364, %365
  %367 = zext i1 %366 to i32
  %368 = call i32 @bnx2x_rearm_latch_signal(%struct.bnx2x* %362, i64 %363, i32 %367)
  br label %373

369:                                              ; preds = %350
  br label %370

370:                                              ; preds = %369
  %371 = load i64, i64* %10, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %10, align 8
  br label %344

373:                                              ; preds = %361, %344
  %374 = load i32, i32* @NETIF_MSG_LINK, align 4
  %375 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %376 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %379 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* %15, align 8
  %382 = call i32 (i32, i8*, ...) @DP(i32 %374, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i64 %377, i64 %380, i64 %381)
  %383 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %384 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %427

387:                                              ; preds = %373
  %388 = load %struct.link_params*, %struct.link_params** %3, align 8
  %389 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %409, label %391

391:                                              ; preds = %387
  %392 = load i64, i64* %11, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %409

394:                                              ; preds = %391
  %395 = load i64, i64* %15, align 8
  %396 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %397 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %395, %398
  br i1 %399, label %400, label %409

400:                                              ; preds = %394
  %401 = load i32, i32* @NETIF_MSG_LINK, align 4
  %402 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %403 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* %15, align 8
  %406 = call i32 (i32, i8*, ...) @DP(i32 %401, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i64 %404, i64 %405)
  %407 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %408 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %407, i32 0, i32 4
  store i32 0, i32* %408, align 8
  br label %426

409:                                              ; preds = %394, %391, %387
  %410 = load i64, i64* %16, align 8
  %411 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %412 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %410, %413
  br i1 %414, label %415, label %425

415:                                              ; preds = %409
  %416 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %417 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %418 = load %struct.link_params*, %struct.link_params** %3, align 8
  %419 = getelementptr inbounds %struct.link_params, %struct.link_params* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = mul i64 %420, 4
  %422 = add i64 %417, %421
  %423 = call i32 @REG_WR(%struct.bnx2x* %416, i64 %422, i32 0)
  %424 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %425

425:                                              ; preds = %415, %409
  br label %426

426:                                              ; preds = %425, %400
  br label %427

427:                                              ; preds = %426, %373
  %428 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %429 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @SPEED_10000, align 8
  %432 = icmp uge i64 %430, %431
  %433 = zext i1 %432 to i32
  %434 = sext i32 %433 to i64
  store i64 %434, i64* %9, align 8
  %435 = load %struct.link_params*, %struct.link_params** %3, align 8
  %436 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %437 = load i64, i64* %9, align 8
  %438 = call i32 @bnx2x_link_int_ack(%struct.link_params* %435, %struct.link_vars* %436, i64 %437)
  %439 = load %struct.link_params*, %struct.link_params** %3, align 8
  %440 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %527, label %442

442:                                              ; preds = %427
  %443 = load i32, i32* @NETIF_MSG_LINK, align 4
  %444 = load i64, i64* %11, align 8
  %445 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %446 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.link_params*, %struct.link_params** %3, align 8
  %449 = getelementptr inbounds %struct.link_params, %struct.link_params* %448, i32 0, i32 3
  %450 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %449, align 8
  %451 = load i64, i64* @EXT_PHY1, align 8
  %452 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %450, i64 %451
  %453 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  %456 = load i64, i64* @FLAGS_INIT_XGXS_FIRST, align 8
  %457 = and i64 %455, %456
  %458 = call i32 (i32, i8*, ...) @DP(i32 %443, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i64 %444, i32 %447, i64 %457)
  %459 = load %struct.link_params*, %struct.link_params** %3, align 8
  %460 = getelementptr inbounds %struct.link_params, %struct.link_params* %459, i32 0, i32 3
  %461 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %460, align 8
  %462 = load i64, i64* @EXT_PHY1, align 8
  %463 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %461, i64 %462
  %464 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = load i64, i64* @FLAGS_INIT_XGXS_FIRST, align 8
  %468 = and i64 %466, %467
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %526, label %470

470:                                              ; preds = %442
  %471 = load i64, i64* %11, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %526

473:                                              ; preds = %470
  %474 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %475 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 8
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %526, label %478

478:                                              ; preds = %473
  %479 = load i64, i64* %15, align 8
  %480 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %481 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %480, i32 0, i32 0
  store i64 %479, i64* %481, align 8
  %482 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %483 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @SPEED_1000, align 8
  %486 = icmp ult i64 %484, %485
  br i1 %486, label %487, label %493

487:                                              ; preds = %478
  %488 = load i64, i64* @PHY_SGMII_FLAG, align 8
  %489 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %490 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = or i64 %491, %488
  store i64 %492, i64* %490, align 8
  br label %500

493:                                              ; preds = %478
  %494 = load i64, i64* @PHY_SGMII_FLAG, align 8
  %495 = xor i64 %494, -1
  %496 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %497 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = and i64 %498, %495
  store i64 %499, i64* %497, align 8
  br label %500

500:                                              ; preds = %493, %487
  %501 = load %struct.link_params*, %struct.link_params** %3, align 8
  %502 = getelementptr inbounds %struct.link_params, %struct.link_params* %501, i32 0, i32 3
  %503 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %502, align 8
  %504 = load i64, i64* @INT_PHY, align 8
  %505 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %503, i64 %504
  %506 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %505, i32 0, i32 3
  %507 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %506, align 8
  %508 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %507, null
  br i1 %508, label %509, label %525

509:                                              ; preds = %500
  %510 = load %struct.link_params*, %struct.link_params** %3, align 8
  %511 = getelementptr inbounds %struct.link_params, %struct.link_params* %510, i32 0, i32 3
  %512 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %511, align 8
  %513 = load i64, i64* @INT_PHY, align 8
  %514 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %512, i64 %513
  %515 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %514, i32 0, i32 3
  %516 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %515, align 8
  %517 = load %struct.link_params*, %struct.link_params** %3, align 8
  %518 = getelementptr inbounds %struct.link_params, %struct.link_params* %517, i32 0, i32 3
  %519 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %518, align 8
  %520 = load i64, i64* @INT_PHY, align 8
  %521 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %519, i64 %520
  %522 = load %struct.link_params*, %struct.link_params** %3, align 8
  %523 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %524 = call i32 %516(%struct.bnx2x_phy* %521, %struct.link_params* %522, %struct.link_vars* %523)
  br label %525

525:                                              ; preds = %509, %500
  br label %526

526:                                              ; preds = %525, %473, %470, %442
  br label %527

527:                                              ; preds = %526, %427
  %528 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %529 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %528, i32 0, i32 4
  %530 = load i32, i32* %529, align 8
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %545

532:                                              ; preds = %527
  %533 = load i64, i64* %11, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %539, label %535

535:                                              ; preds = %532
  %536 = load %struct.link_params*, %struct.link_params** %3, align 8
  %537 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %535, %532
  %540 = load i64, i64* %17, align 8
  %541 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i64 %540
  %542 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %541, i32 0, i32 6
  %543 = load i64, i64* %542, align 8
  %544 = icmp eq i64 %543, 0
  br label %545

545:                                              ; preds = %539, %535, %527
  %546 = phi i1 [ false, %535 ], [ false, %527 ], [ %544, %539 ]
  %547 = zext i1 %546 to i32
  %548 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %549 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %548, i32 0, i32 5
  store i32 %547, i32* %549, align 4
  %550 = load %struct.link_params*, %struct.link_params** %3, align 8
  %551 = getelementptr inbounds %struct.link_params, %struct.link_params* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %562

556:                                              ; preds = %545
  %557 = load i64, i64* @LINK_STATUS_PFC_ENABLED, align 8
  %558 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %559 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = or i64 %560, %557
  store i64 %561, i64* %559, align 8
  br label %569

562:                                              ; preds = %545
  %563 = load i64, i64* @LINK_STATUS_PFC_ENABLED, align 8
  %564 = xor i64 %563, -1
  %565 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %566 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %565, i32 0, i32 2
  %567 = load i64, i64* %566, align 8
  %568 = and i64 %567, %564
  store i64 %568, i64* %566, align 8
  br label %569

569:                                              ; preds = %562, %556
  %570 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %571 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %570, i32 0, i32 5
  %572 = load i32, i32* %571, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %569
  %575 = load %struct.link_params*, %struct.link_params** %3, align 8
  %576 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %577 = load i64, i64* %9, align 8
  %578 = call i32 @bnx2x_update_link_up(%struct.link_params* %575, %struct.link_vars* %576, i64 %577)
  store i32 %578, i32* %13, align 4
  br label %583

579:                                              ; preds = %569
  %580 = load %struct.link_params*, %struct.link_params** %3, align 8
  %581 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %582 = call i32 @bnx2x_update_link_down(%struct.link_params* %580, %struct.link_vars* %581)
  store i32 %582, i32* %13, align 4
  br label %583

583:                                              ; preds = %579, %574
  %584 = load %struct.link_params*, %struct.link_params** %3, align 8
  %585 = getelementptr inbounds %struct.link_params, %struct.link_params* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @FEATURE_CONFIG_BC_SUPPORTS_AFEX, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %583
  %591 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %592 = load i32, i32* @DRV_MSG_CODE_LINK_STATUS_CHANGED, align 4
  %593 = call i32 @bnx2x_fw_command(%struct.bnx2x* %591, i32 %592, i32 0)
  br label %594

594:                                              ; preds = %590, %583
  %595 = load i32, i32* %13, align 4
  %596 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %596)
  ret i32 %595
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @USES_WARPCORE(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #2

declare dso_local i32 @DP(i32, i8*, ...) #2

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #2

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #2

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #2

declare dso_local i32 @bnx2x_phy_selection(%struct.link_params*) #2

declare dso_local i32 @bnx2x_rearm_latch_signal(%struct.bnx2x*, i64, i32) #2

declare dso_local i64 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @bnx2x_link_int_ack(%struct.link_params*, %struct.link_vars*, i64) #2

declare dso_local i32 @bnx2x_update_link_up(%struct.link_params*, %struct.link_vars*, i64) #2

declare dso_local i32 @bnx2x_update_link_down(%struct.link_params*, %struct.link_vars*) #2

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
