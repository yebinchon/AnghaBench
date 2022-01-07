; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_cmn_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_cmn_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64, i32, i64, i32, i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@PHY_INIT = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_1000T_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_LEGACY_AN_ADV = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_LEGACY_MII_CTRL = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Advertising 1G\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Advertising 100M\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Advertising 10M\0A\00", align 1
@SPEED_100 = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_AUX_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Setting 100M force\0A\00", align 1
@SPEED_10 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Setting 10M force\0A\00", align 1
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 = common dso_local global i64 0, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"Advertising 10G\0A\00", align 1
@MDIO_AN_REG_8481_10GBASE_T_AN_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_848xx_cmn_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_848xx_cmn_config_init(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %15 = load %struct.link_params*, %struct.link_params** %5, align 8
  %16 = load i32, i32* @PHY_INIT, align 4
  %17 = call i32 @bnx2x_848xx_specific_func(%struct.bnx2x_phy* %14, %struct.link_params* %15, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %20 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %21 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %22 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %18, %struct.bnx2x_phy* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %25 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %26 = load i32, i32* @MDIO_AN_REG_8481_1000T_CTRL, align 4
  %27 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %25, i32 %26, i32* %9)
  %28 = load %struct.link_params*, %struct.link_params** %5, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %30 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %31 = call i32 @bnx2x_ext_phy_set_pause(%struct.link_params* %28, %struct.bnx2x_phy* %29, %struct.link_vars* %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %34 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %35 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_AN_ADV, align 4
  %36 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i32 %35, i32* %10)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %39 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %40 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_MII_CTRL, align 4
  %41 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i32 %40, i32* %8)
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, -13121
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, -481
  store i32 %45, i32* %10, align 4
  %46 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %47 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %3
  %52 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51, %3
  %59 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %60 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SPEED_1000, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58, %51
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, 256
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, 4608
  store i32 %68, i32* %8, align 4
  %69 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DUPLEX_FULL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, 512
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32, i32* @NETIF_MSG_LINK, align 4
  %79 = call i32 @DP(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %83

80:                                               ; preds = %58
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, -769
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %85 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %86 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %87 = load i32, i32* @MDIO_AN_REG_8481_1000T_CTRL, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %84, %struct.bnx2x_phy* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %91 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %83
  %96 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %97 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL, align 4
  %100 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %95
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, 128
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, 4608
  store i32 %108, i32* %8, align 4
  %109 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %110 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DUPLEX_FULL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, 256
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %114, %104
  %118 = load i32, i32* @NETIF_MSG_LINK, align 4
  %119 = call i32 @DP(i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %95, %83
  %121 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %122 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %120
  %127 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %128 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL, align 4
  %131 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %126
  %136 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %137 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %140 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %135
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, 32
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, 4608
  store i32 %148, i32* %8, align 4
  %149 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %150 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DUPLEX_FULL, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load i32, i32* %10, align 4
  %156 = or i32 %155, 64
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %154, %144
  %158 = load i32, i32* @NETIF_MSG_LINK, align 4
  %159 = call i32 @DP(i32 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %135, %126, %120
  %161 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %162 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SPEED_100, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %187

166:                                              ; preds = %160
  %167 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %168 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %171 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %166
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, 8192
  store i32 %177, i32* %8, align 4
  %178 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %179 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %180 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %181 = load i32, i32* @MDIO_AN_REG_8481_AUX_CTRL, align 4
  %182 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %178, %struct.bnx2x_phy* %179, i32 %180, i32 %181, i32 33287)
  %183 = load i32, i32* %10, align 4
  %184 = or i32 %183, 384
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* @NETIF_MSG_LINK, align 4
  %186 = call i32 @DP(i32 %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %187

187:                                              ; preds = %175, %166, %160
  %188 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %189 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SPEED_10, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %187
  %194 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %195 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %198 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %193
  %203 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %204 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %205 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %206 = load i32, i32* @MDIO_AN_REG_8481_AUX_CTRL, align 4
  %207 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %203, %struct.bnx2x_phy* %204, i32 %205, i32 %206, i32 33287)
  %208 = load i32, i32* @NETIF_MSG_LINK, align 4
  %209 = call i32 @DP(i32 %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %210

210:                                              ; preds = %202, %193, %187
  %211 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %212 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %213 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %214 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_AN_ADV, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %211, %struct.bnx2x_phy* %212, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %218 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @DUPLEX_FULL, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %210
  %223 = load i32, i32* %8, align 4
  %224 = or i32 %223, 256
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %222, %210
  %226 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %227 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %225
  %232 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %233 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %241, label %237

237:                                              ; preds = %231, %225
  %238 = load i32, i32* %8, align 4
  %239 = and i32 %238, 4096
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237, %231
  %242 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %243 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %244 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %245 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_MII_CTRL, align 4
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %242, %struct.bnx2x_phy* %243, i32 %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %241, %237
  %249 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %250 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %248
  %255 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %256 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %254, %248
  %262 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %263 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @SPEED_10000, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %280

267:                                              ; preds = %261, %254
  %268 = load i32, i32* @NETIF_MSG_LINK, align 4
  %269 = call i32 @DP(i32 %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %270 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %271 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %272 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %273 = load i32, i32* @MDIO_AN_REG_8481_10GBASE_T_AN_CTRL, align 4
  %274 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %270, %struct.bnx2x_phy* %271, i32 %272, i32 %273, i32 4096)
  %275 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %276 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %277 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %278 = load i32, i32* @MDIO_AN_REG_CTRL, align 4
  %279 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %275, %struct.bnx2x_phy* %276, i32 %277, i32 %278, i32 12800)
  br label %286

280:                                              ; preds = %261
  %281 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %282 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %283 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %284 = load i32, i32* @MDIO_AN_REG_8481_10GBASE_T_AN_CTRL, align 4
  %285 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %281, %struct.bnx2x_phy* %282, i32 %283, i32 %284, i32 1)
  br label %286

286:                                              ; preds = %280, %267
  ret i32 0
}

declare dso_local i32 @bnx2x_848xx_specific_func(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_ext_phy_set_pause(%struct.link_params*, %struct.bnx2x_phy*, %struct.link_vars*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
