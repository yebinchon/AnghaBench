; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32* }

@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ETH_PHY_SFP_1G_FIBER = common dso_local global i64 0, align 8
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@MF_FUNC_DIS = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10THD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_20GXFD_CAPABLE = common dso_local global i32 0, align 4
@ADVERTISED_20000baseKR2_Full = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [158 x i8] c"ethtool_cmd: cmd %d\0A  supported 0x%x  advertising 0x%x  speed %u\0A  duplex %d  port %d  phy_address %d  transceiver %d\0A  autoneg %d  maxtxpkt %d  maxrxpkt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @bnx2x_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SUPPORTED_TP, align 4
  %30 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = or i32 %19, %32
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %51 = call i64 @bnx2x_get_cur_phy_idx(%struct.bnx2x* %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ETH_PHY_SFP_1G_FIBER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %2
  %58 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %57, %2
  %71 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %72 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %70
  %77 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MF_FUNC_DIS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %82
  %90 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %91 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %97 = call i64 @IS_MF(%struct.bnx2x* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %101 = call i32 @BP_NOMCP(%struct.bnx2x* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %105 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %106 = call i32 @bnx2x_get_mf_speed(%struct.bnx2x* %105)
  %107 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %104, i32 %106)
  br label %115

108:                                              ; preds = %99, %89
  %109 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %110 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %111 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %109, i32 %113)
  br label %115

115:                                              ; preds = %108, %103
  br label %123

116:                                              ; preds = %82, %76, %70
  %117 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %118 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %119 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %121 = load i32, i32* @SPEED_UNKNOWN, align 4
  %122 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %115
  %124 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %125 = call i32 @bnx2x_get_port_type(%struct.bnx2x* %124)
  %126 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %127 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  %128 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %129 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %133 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @XCVR_INTERNAL, align 4
  %135 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %136 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %123
  %148 = load i32, i32* @AUTONEG_ENABLE, align 4
  %149 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %150 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  br label %155

151:                                              ; preds = %123
  %152 = load i32, i32* @AUTONEG_DISABLE, align 4
  %153 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %154 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %147
  %156 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %157 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %294

163:                                              ; preds = %155
  %164 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %165 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %169 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %163
  %178 = load i32, i32* @ADVERTISED_Pause, align 4
  %179 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %180 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %163
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %190 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %191 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %183
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10THD_CAPABLE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %201 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %202 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %201, i32 0, i32 10
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %212 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %213 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %212, i32 0, i32 10
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %210, %205
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %223 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %224 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %221, %216
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %234 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %235 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %232, %227
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %245 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %246 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %243, %238
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %256 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %257 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %256, i32 0, i32 10
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %254, %249
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %267 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %268 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %267, i32 0, i32 10
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %265, %260
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %278 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %279 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %278, i32 0, i32 10
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %276, %271
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* @LINK_STATUS_LINK_PARTNER_20GXFD_CAPABLE, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = load i32, i32* @ADVERTISED_20000baseKR2_Full, align 4
  %289 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %290 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %289, i32 0, i32 10
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %282
  br label %294

294:                                              ; preds = %293, %155
  %295 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %296 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %295, i32 0, i32 2
  store i64 0, i64* %296, align 8
  %297 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %298 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %297, i32 0, i32 1
  store i64 0, i64* %298, align 8
  %299 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %300 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %301 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %300, i32 0, i32 9
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %304 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %307 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %310 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %309)
  %311 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %312 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %315 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %318 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %321 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %324 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %327 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %330 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @DP(i32 %299, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str, i64 0, i64 0), i32 %302, i32 %305, i32 %308, i32 %310, i32 %313, i32 %316, i32 %319, i32 %322, i32 %325, i64 %328, i64 %331)
  ret i32 0
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_get_cur_phy_idx(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

declare dso_local i32 @bnx2x_get_mf_speed(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_port_type(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
