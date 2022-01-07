; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i64, i64, i32, i32, i32, i64, i64, i64 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Phy Initialization started\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"(1) req_speed %d, req_flowctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"(2) req_speed %d, req_flowctrl %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"req_adv_flow_ctrl 0x%x\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@MAC_TYPE_NONE = common dso_local global i32 0, align 4
@PHY_INITIALIZED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Link Flap Avoidance in progress\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot avoid link flap lfa_sta=0x%x\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"No phy found for initialization !!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Num of phys on board: %d\0A\00", align 1
@SWITCH_CFG_10G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_phy_init(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 9
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load i32, i32* @NETIF_MSG_LINK, align 4
  %12 = call i32 (i32, i8*, ...) @DP(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @NETIF_MSG_LINK, align 4
  %14 = load %struct.link_params*, %struct.link_params** %4, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.link_params*, %struct.link_params** %4, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @DP(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load i32, i32* @NETIF_MSG_LINK, align 4
  %26 = load %struct.link_params*, %struct.link_params** %4, align 8
  %27 = getelementptr inbounds %struct.link_params, %struct.link_params* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.link_params*, %struct.link_params** %4, align 8
  %32 = getelementptr inbounds %struct.link_params, %struct.link_params* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @DP(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load i32, i32* @NETIF_MSG_LINK, align 4
  %38 = load %struct.link_params*, %struct.link_params** %4, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @DP(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %43 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %45 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %47 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %49 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @DUPLEX_FULL, align 4
  %51 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %52 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @BNX2X_FLOW_CTRL_NONE, align 4
  %54 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %55 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MAC_TYPE_NONE, align 4
  %57 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %58 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %60 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %62 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @PHY_INITIALIZED, align 4
  %64 = load %struct.link_params*, %struct.link_params** %4, align 8
  %65 = getelementptr inbounds %struct.link_params, %struct.link_params* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.link_params*, %struct.link_params** %4, align 8
  %67 = call i32 @bnx2x_set_rx_filter(%struct.link_params* %66, i32 1)
  %68 = load %struct.link_params*, %struct.link_params** %4, align 8
  %69 = call i32 @bnx2x_check_lfa(%struct.link_params* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %2
  %73 = load i32, i32* @NETIF_MSG_LINK, align 4
  %74 = call i32 (i32, i8*, ...) @DP(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.link_params*, %struct.link_params** %4, align 8
  %76 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %77 = call i32 @bnx2x_avoid_link_flap(%struct.link_params* %75, %struct.link_vars* %76)
  store i32 %77, i32* %3, align 4
  br label %197

78:                                               ; preds = %2
  %79 = load i32, i32* @NETIF_MSG_LINK, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32, i8*, ...) @DP(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load %struct.link_params*, %struct.link_params** %4, align 8
  %83 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @bnx2x_cannot_avoid_link_flap(%struct.link_params* %82, %struct.link_vars* %83, i32 %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %87 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %88 = load %struct.link_params*, %struct.link_params** %4, align 8
  %89 = getelementptr inbounds %struct.link_params, %struct.link_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %87, %92
  %94 = load i32, i32* @NIG_MASK_XGXS0_LINK_STATUS, align 4
  %95 = load i32, i32* @NIG_MASK_XGXS0_LINK10G, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @NIG_MASK_SERDES0_LINK_STATUS, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %86, i64 %93, i32 %100)
  %102 = load %struct.link_params*, %struct.link_params** %4, align 8
  %103 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %104 = call i32 @bnx2x_emac_init(%struct.link_params* %102, %struct.link_vars* %103)
  %105 = load %struct.link_params*, %struct.link_params** %4, align 8
  %106 = getelementptr inbounds %struct.link_params, %struct.link_params* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %78
  %112 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %113 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %114 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %78
  %118 = load %struct.link_params*, %struct.link_params** %4, align 8
  %119 = getelementptr inbounds %struct.link_params, %struct.link_params* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32, i32* @NETIF_MSG_LINK, align 4
  %124 = call i32 (i32, i8*, ...) @DP(i32 %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %197

127:                                              ; preds = %117
  %128 = load %struct.link_params*, %struct.link_params** %4, align 8
  %129 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %130 = call i32 @set_phy_vars(%struct.link_params* %128, %struct.link_vars* %129)
  %131 = load i32, i32* @NETIF_MSG_LINK, align 4
  %132 = load %struct.link_params*, %struct.link_params** %4, align 8
  %133 = getelementptr inbounds %struct.link_params, %struct.link_params* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, ...) @DP(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = load %struct.link_params*, %struct.link_params** %4, align 8
  %137 = getelementptr inbounds %struct.link_params, %struct.link_params* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %159 [
    i32 133, label %139
    i32 132, label %143
    i32 128, label %147
    i32 130, label %151
    i32 129, label %155
    i32 131, label %155
  ]

139:                                              ; preds = %127
  %140 = load %struct.link_params*, %struct.link_params** %4, align 8
  %141 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %142 = call i32 @bnx2x_init_bmac_loopback(%struct.link_params* %140, %struct.link_vars* %141)
  br label %186

143:                                              ; preds = %127
  %144 = load %struct.link_params*, %struct.link_params** %4, align 8
  %145 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %146 = call i32 @bnx2x_init_emac_loopback(%struct.link_params* %144, %struct.link_vars* %145)
  br label %186

147:                                              ; preds = %127
  %148 = load %struct.link_params*, %struct.link_params** %4, align 8
  %149 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %150 = call i32 @bnx2x_init_xmac_loopback(%struct.link_params* %148, %struct.link_vars* %149)
  br label %186

151:                                              ; preds = %127
  %152 = load %struct.link_params*, %struct.link_params** %4, align 8
  %153 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %154 = call i32 @bnx2x_init_umac_loopback(%struct.link_params* %152, %struct.link_vars* %153)
  br label %186

155:                                              ; preds = %127, %127
  %156 = load %struct.link_params*, %struct.link_params** %4, align 8
  %157 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %158 = call i32 @bnx2x_init_xgxs_loopback(%struct.link_params* %156, %struct.link_vars* %157)
  br label %186

159:                                              ; preds = %127
  %160 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %161 = call i32 @CHIP_IS_E3(%struct.bnx2x* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %159
  %164 = load %struct.link_params*, %struct.link_params** %4, align 8
  %165 = getelementptr inbounds %struct.link_params, %struct.link_params* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SWITCH_CFG_10G, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.link_params*, %struct.link_params** %4, align 8
  %171 = call i32 @bnx2x_xgxs_deassert(%struct.link_params* %170)
  br label %178

172:                                              ; preds = %163
  %173 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %174 = load %struct.link_params*, %struct.link_params** %4, align 8
  %175 = getelementptr inbounds %struct.link_params, %struct.link_params* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @bnx2x_serdes_deassert(%struct.bnx2x* %173, i32 %176)
  br label %178

178:                                              ; preds = %172, %169
  br label %179

179:                                              ; preds = %178, %159
  %180 = load %struct.link_params*, %struct.link_params** %4, align 8
  %181 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %182 = call i32 @bnx2x_link_initialize(%struct.link_params* %180, %struct.link_vars* %181)
  %183 = call i32 @msleep(i32 30)
  %184 = load %struct.link_params*, %struct.link_params** %4, align 8
  %185 = call i32 @bnx2x_link_int_enable(%struct.link_params* %184)
  br label %186

186:                                              ; preds = %179, %155, %151, %147, %143, %139
  %187 = load %struct.link_params*, %struct.link_params** %4, align 8
  %188 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %189 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @bnx2x_update_mng(%struct.link_params* %187, i32 %190)
  %192 = load %struct.link_params*, %struct.link_params** %4, align 8
  %193 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %194 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @bnx2x_update_mng_eee(%struct.link_params* %192, i32 %195)
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %186, %122, %72
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_set_rx_filter(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_check_lfa(%struct.link_params*) #1

declare dso_local i32 @bnx2x_avoid_link_flap(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_cannot_avoid_link_flap(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_emac_init(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @set_phy_vars(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_bmac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_emac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_xmac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_umac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_xgxs_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_xgxs_deassert(%struct.link_params*) #1

declare dso_local i32 @bnx2x_serdes_deassert(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_link_initialize(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2x_link_int_enable(%struct.link_params*) #1

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_update_mng_eee(%struct.link_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
