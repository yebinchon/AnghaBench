; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32*, i64*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [158 x i8] c"ethtool_cmd: cmd %d\0A  supported 0x%x  advertising 0x%x  speed %u\0A  duplex %d  port %d  phy_address %d  transceiver %d\0A  autoneg %d  maxtxpkt %d  maxrxpkt %d\0A\00", align 1
@DUPLEX_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@REQ_BC_VER_4_SET_MF_BW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"To set speed BC %X or higher is required, please upgrade BC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"Speed setting should be in a range from 1%% to 100%% of actual line speed\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@SUPPORTED_TP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unsupported port type\0A\00", align 1
@PORT_HW_CFG_PHY_SELECTION_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SWAPPED_ENABLED = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_SECOND_PHY = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_FIRST_PHY = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"cfg_idx = %x\0A\00", align 1
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Autoneg not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Advertisement parameters are not supported\0A\00", align 1
@SPEED_AUTO_NEG = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseKX4_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseKR_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@ADVERTISED_20000baseKR2_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_20G = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"10M full not supported\0A\00", align 1
@ADVERTISED_TP = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"10M half not supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"100M full not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"100M half not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"1G half not supported\0A\00", align 1
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"1G full not supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"2.5G half not supported\0A\00", align 1
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"2.5G full not supported\0A\00", align 1
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"10G half not supported\0A\00", align 1
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ETH_PHY_SFP_1G_FIBER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"10G full not supported\0A\00", align 1
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"Unsupported speed %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"req_line_speed %d\0A  req_duplex %d  advertising 0x%x\0A\00", align 1
@STATS_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @bnx2x_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %16)
  store %struct.bnx2x* %17, %struct.bnx2x** %6, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %19 = call i64 @IS_MF_SD(%struct.bnx2x* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %827

22:                                               ; preds = %2
  %23 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %34 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %33)
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @DP(i32 %23, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %34, i64 %37, i32 %40, i32 %43, i32 %46, i64 %49, i32 %52, i32 %55)
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %58 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DUPLEX_UNKNOWN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %22
  %65 = load i64, i64* @DUPLEX_FULL, align 8
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %22
  %69 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %70 = call i64 @IS_MF_SI(%struct.bnx2x* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %74 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 10000, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @REQ_BC_VER_4_SET_MF_BW, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %89 = load i64, i64* @REQ_BC_VER_4_SET_MF_BW, align 8
  %90 = call i32 (i32, i8*, ...) @DP(i32 %88, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %827

93:                                               ; preds = %80
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 100
  %96 = load i32, i32* %14, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %101, %93
  %105 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %106 = call i32 (i32, i8*, ...) @DP(i32 %105, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %827

109:                                              ; preds = %101
  %110 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %111 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  br label %123

119:                                              ; preds = %109
  %120 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @bnx2x_update_max_mf_config(%struct.bnx2x* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %115
  store i32 0, i32* %3, align 4
  br label %827

124:                                              ; preds = %68
  %125 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %126 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %9, align 4
  %131 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %270 [
    i32 133, label %134
    i32 134, label %202
    i32 135, label %202
  ]

134:                                              ; preds = %124
  %135 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %136 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SUPPORTED_TP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %275

147:                                              ; preds = %134
  %148 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %149 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @SUPPORTED_TP, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %147
  %158 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %159 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SUPPORTED_TP, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %157
  %168 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %169 = call i32 (i32, i8*, ...) @DP(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %827

172:                                              ; preds = %157, %147
  %173 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_MASK, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %176 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %174
  store i32 %179, i32* %177, align 8
  %180 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %181 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %172
  %188 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_SECOND_PHY, align 4
  %189 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %190 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 8
  br label %201

194:                                              ; preds = %172
  %195 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_FIRST_PHY, align 4
  %196 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %197 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %194, %187
  br label %275

202:                                              ; preds = %124, %124
  %203 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %204 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %275

215:                                              ; preds = %202
  %216 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %217 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %240, label %225

225:                                              ; preds = %215
  %226 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %227 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %225
  %236 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %237 = call i32 (i32, i8*, ...) @DP(i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %3, align 4
  br label %827

240:                                              ; preds = %225, %215
  %241 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_MASK, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %244 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, %242
  store i32 %247, i32* %245, align 8
  %248 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %249 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %240
  %256 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_FIRST_PHY, align 4
  %257 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %258 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %256
  store i32 %261, i32* %259, align 8
  br label %269

262:                                              ; preds = %240
  %263 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_SECOND_PHY, align 4
  %264 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %265 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %263
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %262, %255
  br label %275

270:                                              ; preds = %124
  %271 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %272 = call i32 (i32, i8*, ...) @DP(i32 %271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %3, align 4
  br label %827

275:                                              ; preds = %269, %214, %201, %146
  %276 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %277 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  store i32 %279, i32* %10, align 4
  %280 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %281 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %280)
  store i32 %281, i32* %8, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %284 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  store i32 %282, i32* %285, align 8
  %286 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %287 = load i32, i32* %8, align 4
  %288 = call i32 (i32, i8*, ...) @DP(i32 %286, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %287)
  %289 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %290 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @AUTONEG_ENABLE, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %543

294:                                              ; preds = %275
  %295 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %296 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %15, align 4
  %303 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %304 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %305, align 8
  %307 = load i64, i64* @EXT_PHY1, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %294
  %314 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %315 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* %15, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %15, align 4
  br label %319

319:                                              ; preds = %313, %294
  %320 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %321 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %319
  %332 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %333 = call i32 (i32, i8*, ...) @DP(i32 %332, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %334 = load i32, i32* @EINVAL, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %3, align 4
  br label %827

336:                                              ; preds = %319
  %337 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %338 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %15, align 4
  %341 = xor i32 %340, -1
  %342 = and i32 %339, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %336
  %345 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %346 = call i32 (i32, i8*, ...) @DP(i32 %345, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %3, align 4
  br label %827

349:                                              ; preds = %336
  %350 = load i32, i32* @SPEED_AUTO_NEG, align 4
  %351 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %352 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32 %350, i32* %357, align 4
  %358 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %359 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %362 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 2
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  store i64 %360, i64* %367, align 8
  %368 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %369 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %370 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = or i32 %368, %371
  %373 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %374 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  store i32 %372, i32* %379, align 4
  %380 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %381 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %542

384:                                              ; preds = %349
  %385 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %386 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 4
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %8, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 0, i32* %391, align 4
  %392 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %393 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %409

398:                                              ; preds = %384
  %399 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF, align 4
  %400 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %401 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 4
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %399
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %398, %384
  %410 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %411 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %427

416:                                              ; preds = %409
  %417 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL, align 4
  %418 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %419 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 4
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %425, %417
  store i32 %426, i32* %424, align 4
  br label %427

427:                                              ; preds = %416, %409
  %428 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %429 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %445

434:                                              ; preds = %427
  %435 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL, align 4
  %436 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %437 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 4
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %8, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = or i32 %443, %435
  store i32 %444, i32* %442, align 4
  br label %445

445:                                              ; preds = %434, %427
  %446 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %447 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %445
  %453 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF, align 4
  %454 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %455 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 4
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %8, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = or i32 %461, %453
  store i32 %462, i32* %460, align 4
  br label %463

463:                                              ; preds = %452, %445
  %464 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %465 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %481

470:                                              ; preds = %463
  %471 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %472 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %473 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 4
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %8, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = or i32 %479, %471
  store i32 %480, i32* %478, align 4
  br label %481

481:                                              ; preds = %470, %463
  %482 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %483 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %486 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %487 = or i32 %485, %486
  %488 = and i32 %484, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %501

490:                                              ; preds = %481
  %491 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %492 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %493 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 4
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %8, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = or i32 %499, %491
  store i32 %500, i32* %498, align 4
  br label %501

501:                                              ; preds = %490, %481
  %502 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %503 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %506 = load i32, i32* @ADVERTISED_10000baseKX4_Full, align 4
  %507 = or i32 %505, %506
  %508 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %509 = or i32 %507, %508
  %510 = and i32 %504, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %523

512:                                              ; preds = %501
  %513 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %514 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %515 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 4
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %8, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = or i32 %521, %513
  store i32 %522, i32* %520, align 4
  br label %523

523:                                              ; preds = %512, %501
  %524 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %525 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* @ADVERTISED_20000baseKR2_Full, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %541

530:                                              ; preds = %523
  %531 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_20G, align 4
  %532 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %533 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %532, i32 0, i32 2
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 4
  %535 = load i32*, i32** %534, align 8
  %536 = load i32, i32* %8, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = or i32 %539, %531
  store i32 %540, i32* %538, align 4
  br label %541

541:                                              ; preds = %530, %523
  br label %542

542:                                              ; preds = %541, %349
  br label %786

543:                                              ; preds = %275
  %544 = load i32, i32* %11, align 4
  switch i32 %544, label %753 [
    i32 132, label %545
    i32 131, label %594
    i32 130, label %643
    i32 128, label %675
    i32 129, label %707
  ]

545:                                              ; preds = %543
  %546 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %547 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %546, i32 0, i32 1
  %548 = load i64, i64* %547, align 8
  %549 = load i64, i64* @DUPLEX_FULL, align 8
  %550 = icmp eq i64 %548, %549
  br i1 %550, label %551, label %572

551:                                              ; preds = %545
  %552 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %553 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %552, i32 0, i32 3
  %554 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i32 0, i32 0
  %555 = load i32*, i32** %554, align 8
  %556 = load i32, i32* %8, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %555, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %561 = and i32 %559, %560
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %568, label %563

563:                                              ; preds = %551
  %564 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %565 = call i32 (i32, i8*, ...) @DP(i32 %564, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %566 = load i32, i32* @EINVAL, align 4
  %567 = sub nsw i32 0, %566
  store i32 %567, i32* %3, align 4
  br label %827

568:                                              ; preds = %551
  %569 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %570 = load i32, i32* @ADVERTISED_TP, align 4
  %571 = or i32 %569, %570
  store i32 %571, i32* %7, align 4
  br label %593

572:                                              ; preds = %545
  %573 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %574 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %573, i32 0, i32 3
  %575 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %574, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = load i32, i32* %8, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %576, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %582 = and i32 %580, %581
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %589, label %584

584:                                              ; preds = %572
  %585 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %586 = call i32 (i32, i8*, ...) @DP(i32 %585, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %587 = load i32, i32* @EINVAL, align 4
  %588 = sub nsw i32 0, %587
  store i32 %588, i32* %3, align 4
  br label %827

589:                                              ; preds = %572
  %590 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %591 = load i32, i32* @ADVERTISED_TP, align 4
  %592 = or i32 %590, %591
  store i32 %592, i32* %7, align 4
  br label %593

593:                                              ; preds = %589, %568
  br label %759

594:                                              ; preds = %543
  %595 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %596 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %595, i32 0, i32 1
  %597 = load i64, i64* %596, align 8
  %598 = load i64, i64* @DUPLEX_FULL, align 8
  %599 = icmp eq i64 %597, %598
  br i1 %599, label %600, label %621

600:                                              ; preds = %594
  %601 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %602 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %601, i32 0, i32 3
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 0
  %604 = load i32*, i32** %603, align 8
  %605 = load i32, i32* %8, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %604, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %617, label %612

612:                                              ; preds = %600
  %613 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %614 = call i32 (i32, i8*, ...) @DP(i32 %613, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %615 = load i32, i32* @EINVAL, align 4
  %616 = sub nsw i32 0, %615
  store i32 %616, i32* %3, align 4
  br label %827

617:                                              ; preds = %600
  %618 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %619 = load i32, i32* @ADVERTISED_TP, align 4
  %620 = or i32 %618, %619
  store i32 %620, i32* %7, align 4
  br label %642

621:                                              ; preds = %594
  %622 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %623 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %622, i32 0, i32 3
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %623, i32 0, i32 0
  %625 = load i32*, i32** %624, align 8
  %626 = load i32, i32* %8, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i32, i32* %625, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %638, label %633

633:                                              ; preds = %621
  %634 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %635 = call i32 (i32, i8*, ...) @DP(i32 %634, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %636 = load i32, i32* @EINVAL, align 4
  %637 = sub nsw i32 0, %636
  store i32 %637, i32* %3, align 4
  br label %827

638:                                              ; preds = %621
  %639 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %640 = load i32, i32* @ADVERTISED_TP, align 4
  %641 = or i32 %639, %640
  store i32 %641, i32* %7, align 4
  br label %642

642:                                              ; preds = %638, %617
  br label %759

643:                                              ; preds = %543
  %644 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %645 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %644, i32 0, i32 1
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* @DUPLEX_FULL, align 8
  %648 = icmp ne i64 %646, %647
  br i1 %648, label %649, label %654

649:                                              ; preds = %643
  %650 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %651 = call i32 (i32, i8*, ...) @DP(i32 %650, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %652 = load i32, i32* @EINVAL, align 4
  %653 = sub nsw i32 0, %652
  store i32 %653, i32* %3, align 4
  br label %827

654:                                              ; preds = %643
  %655 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %656 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %655, i32 0, i32 3
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %656, i32 0, i32 0
  %658 = load i32*, i32** %657, align 8
  %659 = load i32, i32* %8, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i32, i32* %658, i64 %660
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %671, label %666

666:                                              ; preds = %654
  %667 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %668 = call i32 (i32, i8*, ...) @DP(i32 %667, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %669 = load i32, i32* @EINVAL, align 4
  %670 = sub nsw i32 0, %669
  store i32 %670, i32* %3, align 4
  br label %827

671:                                              ; preds = %654
  %672 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %673 = load i32, i32* @ADVERTISED_TP, align 4
  %674 = or i32 %672, %673
  store i32 %674, i32* %7, align 4
  br label %759

675:                                              ; preds = %543
  %676 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %677 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %676, i32 0, i32 1
  %678 = load i64, i64* %677, align 8
  %679 = load i64, i64* @DUPLEX_FULL, align 8
  %680 = icmp ne i64 %678, %679
  br i1 %680, label %681, label %686

681:                                              ; preds = %675
  %682 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %683 = call i32 (i32, i8*, ...) @DP(i32 %682, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %684 = load i32, i32* @EINVAL, align 4
  %685 = sub nsw i32 0, %684
  store i32 %685, i32* %3, align 4
  br label %827

686:                                              ; preds = %675
  %687 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %688 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %687, i32 0, i32 3
  %689 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %688, i32 0, i32 0
  %690 = load i32*, i32** %689, align 8
  %691 = load i32, i32* %8, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, i32* %690, i64 %692
  %694 = load i32, i32* %693, align 4
  %695 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %696 = and i32 %694, %695
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %703, label %698

698:                                              ; preds = %686
  %699 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %700 = call i32 (i32, i8*, ...) @DP(i32 %699, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %701 = load i32, i32* @EINVAL, align 4
  %702 = sub nsw i32 0, %701
  store i32 %702, i32* %3, align 4
  br label %827

703:                                              ; preds = %686
  %704 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %705 = load i32, i32* @ADVERTISED_TP, align 4
  %706 = or i32 %704, %705
  store i32 %706, i32* %7, align 4
  br label %759

707:                                              ; preds = %543
  %708 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %709 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %708, i32 0, i32 1
  %710 = load i64, i64* %709, align 8
  %711 = load i64, i64* @DUPLEX_FULL, align 8
  %712 = icmp ne i64 %710, %711
  br i1 %712, label %713, label %718

713:                                              ; preds = %707
  %714 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %715 = call i32 (i32, i8*, ...) @DP(i32 %714, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %716 = load i32, i32* @EINVAL, align 4
  %717 = sub nsw i32 0, %716
  store i32 %717, i32* %3, align 4
  br label %827

718:                                              ; preds = %707
  %719 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %720 = call i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x* %719)
  store i32 %720, i32* %12, align 4
  %721 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %722 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %721, i32 0, i32 3
  %723 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %722, i32 0, i32 0
  %724 = load i32*, i32** %723, align 8
  %725 = load i32, i32* %8, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i32, i32* %724, i64 %726
  %728 = load i32, i32* %727, align 4
  %729 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %730 = and i32 %728, %729
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %744

732:                                              ; preds = %718
  %733 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %734 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %733, i32 0, i32 2
  %735 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %734, i32 0, i32 3
  %736 = load %struct.TYPE_6__*, %struct.TYPE_6__** %735, align 8
  %737 = load i32, i32* %12, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %736, i64 %738
  %740 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %739, i32 0, i32 1
  %741 = load i32, i32* %740, align 8
  %742 = load i32, i32* @ETH_PHY_SFP_1G_FIBER, align 4
  %743 = icmp eq i32 %741, %742
  br i1 %743, label %744, label %749

744:                                              ; preds = %732, %718
  %745 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %746 = call i32 (i32, i8*, ...) @DP(i32 %745, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %747 = load i32, i32* @EINVAL, align 4
  %748 = sub nsw i32 0, %747
  store i32 %748, i32* %3, align 4
  br label %827

749:                                              ; preds = %732
  %750 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %751 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %752 = or i32 %750, %751
  store i32 %752, i32* %7, align 4
  br label %759

753:                                              ; preds = %543
  %754 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %755 = load i32, i32* %11, align 4
  %756 = call i32 (i32, i8*, ...) @DP(i32 %754, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %755)
  %757 = load i32, i32* @EINVAL, align 4
  %758 = sub nsw i32 0, %757
  store i32 %758, i32* %3, align 4
  br label %827

759:                                              ; preds = %749, %703, %671, %642, %593
  %760 = load i32, i32* %11, align 4
  %761 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %762 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %761, i32 0, i32 2
  %763 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %762, i32 0, i32 1
  %764 = load i32*, i32** %763, align 8
  %765 = load i32, i32* %8, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, i32* %764, i64 %766
  store i32 %760, i32* %767, align 4
  %768 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %769 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %768, i32 0, i32 1
  %770 = load i64, i64* %769, align 8
  %771 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %772 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %771, i32 0, i32 2
  %773 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %772, i32 0, i32 2
  %774 = load i64*, i64** %773, align 8
  %775 = load i32, i32* %8, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i64, i64* %774, i64 %776
  store i64 %770, i64* %777, align 8
  %778 = load i32, i32* %7, align 4
  %779 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %780 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %779, i32 0, i32 3
  %781 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %780, i32 0, i32 1
  %782 = load i32*, i32** %781, align 8
  %783 = load i32, i32* %8, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i32, i32* %782, i64 %784
  store i32 %778, i32* %785, align 4
  br label %786

786:                                              ; preds = %759, %542
  %787 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %788 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %789 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %788, i32 0, i32 2
  %790 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %789, i32 0, i32 1
  %791 = load i32*, i32** %790, align 8
  %792 = load i32, i32* %8, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds i32, i32* %791, i64 %793
  %795 = load i32, i32* %794, align 4
  %796 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %797 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %796, i32 0, i32 2
  %798 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %797, i32 0, i32 2
  %799 = load i64*, i64** %798, align 8
  %800 = load i32, i32* %8, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds i64, i64* %799, i64 %801
  %803 = load i64, i64* %802, align 8
  %804 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %805 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %804, i32 0, i32 3
  %806 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %805, i32 0, i32 1
  %807 = load i32*, i32** %806, align 8
  %808 = load i32, i32* %8, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i32, i32* %807, i64 %809
  %811 = load i32, i32* %810, align 4
  %812 = call i32 (i32, i8*, ...) @DP(i32 %787, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i32 %795, i64 %803, i32 %811)
  %813 = load i32, i32* %10, align 4
  %814 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %815 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %814, i32 0, i32 2
  %816 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %815, i32 0, i32 0
  store i32 %813, i32* %816, align 8
  %817 = load %struct.net_device*, %struct.net_device** %4, align 8
  %818 = call i64 @netif_running(%struct.net_device* %817)
  %819 = icmp ne i64 %818, 0
  br i1 %819, label %820, label %826

820:                                              ; preds = %786
  %821 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %822 = load i32, i32* @STATS_EVENT_STOP, align 4
  %823 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %821, i32 %822)
  %824 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %825 = call i32 @bnx2x_link_set(%struct.bnx2x* %824)
  br label %826

826:                                              ; preds = %820, %786
  store i32 0, i32* %3, align 4
  br label %827

827:                                              ; preds = %826, %753, %744, %713, %698, %681, %666, %649, %633, %612, %584, %563, %344, %331, %270, %235, %167, %123, %104, %87, %21
  %828 = load i32, i32* %3, align 4
  ret i32 %828
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i64 @IS_MF_SI(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_update_max_mf_config(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_link_set(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
