; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_check_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@JME_SPDRSV_TIMEOUT = common dso_local global i32 0, align 4
@JME_PHY_LINK = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@PHY_LINK_DUPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Forced: \00", align 1
@PHY_LINK_SPEEDDPU_RESOLVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Waiting speed resolve timeout.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ANed: \00", align 1
@GHC_SPEED = common dso_local global i32 0, align 4
@GHC_DPX = common dso_local global i32 0, align 4
@GHC_TO_CLK_PCIE = common dso_local global i32 0, align 4
@GHC_TXMAC_CLK_PCIE = common dso_local global i32 0, align 4
@GHC_TO_CLK_GPHY = common dso_local global i32 0, align 4
@GHC_TXMAC_CLK_GPHY = common dso_local global i32 0, align 4
@PHY_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@GHC_SPEED_10M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"10 Mbps, \00", align 1
@GHC_SPEED_100M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"100 Mbps, \00", align 1
@GHC_SPEED_1000M = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"1000 Mbps, \00", align 1
@JME_TXMCS = common dso_local global i32 0, align 4
@TXMCS_DEFAULT = common dso_local global i32 0, align 4
@TXMCS_BACKOFF = common dso_local global i32 0, align 4
@TXMCS_CARRIERSENSE = common dso_local global i32 0, align 4
@TXMCS_COLLISION = common dso_local global i32 0, align 4
@JME_TXTRHD = common dso_local global i32 0, align 4
@TXTRHD_TXPEN = common dso_local global i32 0, align 4
@TXTRHD_TXP_SHIFT = common dso_local global i32 0, align 4
@TXTRHD_TXP = common dso_local global i32 0, align 4
@TXTRHD_TXREN = common dso_local global i32 0, align 4
@TXTRHD_TXRL_SHIFT = common dso_local global i32 0, align 4
@TXTRHD_TXRL = common dso_local global i32 0, align 4
@GPREG1_DEFAULT = common dso_local global i32 0, align 4
@GPREG1_HALFMODEPATCH = common dso_local global i32 0, align 4
@GPREG1_RSSPATCH = common dso_local global i32 0, align 4
@JME_GPREG1 = common dso_local global i32 0, align 4
@JME_GHC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Full-Duplex, \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Half-Duplex, \00", align 1
@PHY_LINK_MDI_STAT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"MDI-X\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"MDI\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Link is up at %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Link is down.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @jme_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_check_link(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.jme_adapter* %14, %struct.jme_adapter** %5, align 8
  %15 = load i32, i32* @JME_SPDRSV_TIMEOUT, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %23 = call i32 @jme_linkstat_from_phy(%struct.jme_adapter* %22)
  store i32 %23, i32* %6, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %26 = load i32, i32* @JME_PHY_LINK, align 4
  %27 = call i32 @jread32(%struct.jme_adapter* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PHY_LINK_UP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %300

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PHY_LINK_AUTONEG_COMPLETE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %83, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @PHY_LINK_UP, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MII_BMCR, align 4
  %48 = call i32 @jme_mdio_read(i32 %42, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @BMCR_SPEED1000, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @BMCR_SPEED100, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %66

59:                                               ; preds = %53, %38
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BMCR_SPEED100, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 129, i32 128
  br label %66

66:                                               ; preds = %59, %58
  %67 = phi i32 [ 130, %58 ], [ %65, %59 ]
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @BMCR_FULLDPLX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  br label %77

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %82 = call i32 @strcat(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %120

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @PHY_LINK_SPEEDDPU_RESOLVED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i1 [ false, %84 ], [ %92, %89 ]
  br i1 %94, label %95, label %109

95:                                               ; preds = %93
  %96 = call i32 @udelay(i32 1)
  %97 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %98 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %103 = call i32 @jme_linkstat_from_phy(%struct.jme_adapter* %102)
  store i32 %103, i32* %6, align 4
  br label %108

104:                                              ; preds = %95
  %105 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %106 = load i32, i32* @JME_PHY_LINK, align 4
  %107 = call i32 @jread32(%struct.jme_adapter* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %101
  br label %84

109:                                              ; preds = %93
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %113, i32 0, i32 3
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = call i32 @jeprintk(%struct.TYPE_4__* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %109
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %119 = call i32 @strcat(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %77
  %121 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 1, i32* %12, align 4
  br label %312

127:                                              ; preds = %120
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %312

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %134 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %136 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @GHC_SPEED, align 4
  %139 = load i32, i32* @GHC_DPX, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @GHC_TO_CLK_PCIE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @GHC_TXMAC_CLK_PCIE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @GHC_TO_CLK_GPHY, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @GHC_TXMAC_CLK_GPHY, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = and i32 %137, %149
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @PHY_LINK_SPEED_MASK, align 4
  %153 = and i32 %151, %152
  switch i32 %153, label %184 [
    i32 128, label %154
    i32 129, label %164
    i32 130, label %174
  ]

154:                                              ; preds = %131
  %155 = load i32, i32* @GHC_SPEED_10M, align 4
  %156 = load i32, i32* @GHC_TO_CLK_PCIE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @GHC_TXMAC_CLK_PCIE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %163 = call i32 @strcat(i8* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %185

164:                                              ; preds = %131
  %165 = load i32, i32* @GHC_SPEED_100M, align 4
  %166 = load i32, i32* @GHC_TO_CLK_PCIE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @GHC_TXMAC_CLK_PCIE, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %7, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %173 = call i32 @strcat(i8* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %185

174:                                              ; preds = %131
  %175 = load i32, i32* @GHC_SPEED_1000M, align 4
  %176 = load i32, i32* @GHC_TO_CLK_GPHY, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @GHC_TXMAC_CLK_GPHY, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %7, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %183 = call i32 @strcat(i8* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %185

184:                                              ; preds = %131
  br label %185

185:                                              ; preds = %184, %174, %164, %154
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %192 = load i32, i32* @JME_TXMCS, align 4
  %193 = load i32, i32* @TXMCS_DEFAULT, align 4
  %194 = call i32 @jwrite32(%struct.jme_adapter* %191, i32 %192, i32 %193)
  %195 = load i32, i32* @GHC_DPX, align 4
  %196 = load i32, i32* %7, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %7, align 4
  br label %225

198:                                              ; preds = %185
  %199 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %200 = load i32, i32* @JME_TXMCS, align 4
  %201 = load i32, i32* @TXMCS_DEFAULT, align 4
  %202 = load i32, i32* @TXMCS_BACKOFF, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @TXMCS_CARRIERSENSE, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @TXMCS_COLLISION, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @jwrite32(%struct.jme_adapter* %199, i32 %200, i32 %207)
  %209 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %210 = load i32, i32* @JME_TXTRHD, align 4
  %211 = load i32, i32* @TXTRHD_TXPEN, align 4
  %212 = load i32, i32* @TXTRHD_TXP_SHIFT, align 4
  %213 = shl i32 8192, %212
  %214 = load i32, i32* @TXTRHD_TXP, align 4
  %215 = and i32 %213, %214
  %216 = or i32 %211, %215
  %217 = load i32, i32* @TXTRHD_TXREN, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @TXTRHD_TXRL_SHIFT, align 4
  %220 = shl i32 8, %219
  %221 = load i32, i32* @TXTRHD_TXRL, align 4
  %222 = and i32 %220, %221
  %223 = or i32 %218, %222
  %224 = call i32 @jwrite32(%struct.jme_adapter* %209, i32 %210, i32 %223)
  br label %225

225:                                              ; preds = %198, %190
  %226 = load i32, i32* @GPREG1_DEFAULT, align 4
  store i32 %226, i32* %10, align 4
  %227 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %228 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %227, i32 0, i32 3
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %233 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @is_buggy250(i32 %231, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %267

237:                                              ; preds = %225
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* @GPREG1_HALFMODEPATCH, align 4
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %242, %237
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @PHY_LINK_SPEED_MASK, align 4
  %249 = and i32 %247, %248
  switch i32 %249, label %265 [
    i32 128, label %250
    i32 129, label %256
    i32 130, label %262
  ]

250:                                              ; preds = %246
  %251 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %252 = call i32 @jme_set_phyfifoa(%struct.jme_adapter* %251)
  %253 = load i32, i32* @GPREG1_RSSPATCH, align 4
  %254 = load i32, i32* %10, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %10, align 4
  br label %266

256:                                              ; preds = %246
  %257 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %258 = call i32 @jme_set_phyfifob(%struct.jme_adapter* %257)
  %259 = load i32, i32* @GPREG1_RSSPATCH, align 4
  %260 = load i32, i32* %10, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %10, align 4
  br label %266

262:                                              ; preds = %246
  %263 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %264 = call i32 @jme_set_phyfifoa(%struct.jme_adapter* %263)
  br label %266

265:                                              ; preds = %246
  br label %266

266:                                              ; preds = %265, %262, %256, %250
  br label %267

267:                                              ; preds = %266, %225
  %268 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %269 = load i32, i32* @JME_GPREG1, align 4
  %270 = load i32, i32* %10, align 4
  %271 = call i32 @jwrite32(%struct.jme_adapter* %268, i32 %269, i32 %270)
  %272 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %273 = load i32, i32* @JME_GHC, align 4
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @jwrite32(%struct.jme_adapter* %272, i32 %273, i32 %274)
  %276 = load i32, i32* %7, align 4
  %277 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %278 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  %279 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* @PHY_LINK_DUPLEX, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)
  %286 = call i32 @strcat(i8* %279, i8* %285)
  %287 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* @PHY_LINK_MDI_STAT, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %294 = call i32 @strcat(i8* %287, i8* %293)
  %295 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %296 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %297 = call i32 (%struct.jme_adapter*, i8*, ...) @msg_link(%struct.jme_adapter* %295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %296)
  %298 = load %struct.net_device*, %struct.net_device** %3, align 8
  %299 = call i32 @netif_carrier_on(%struct.net_device* %298)
  br label %311

300:                                              ; preds = %28
  %301 = load i32, i32* %4, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  br label %312

304:                                              ; preds = %300
  %305 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %306 = call i32 (%struct.jme_adapter*, i8*, ...) @msg_link(%struct.jme_adapter* %305, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %307 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %308 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %307, i32 0, i32 0
  store i32 0, i32* %308, align 8
  %309 = load %struct.net_device*, %struct.net_device** %3, align 8
  %310 = call i32 @netif_carrier_off(%struct.net_device* %309)
  br label %311

311:                                              ; preds = %304, %267
  br label %312

312:                                              ; preds = %311, %303, %130, %126
  %313 = load i32, i32* %12, align 4
  ret i32 %313
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jme_linkstat_from_phy(%struct.jme_adapter*) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @jeprintk(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i64 @is_buggy250(i32, i32) #1

declare dso_local i32 @jme_set_phyfifoa(%struct.jme_adapter*) #1

declare dso_local i32 @jme_set_phyfifob(%struct.jme_adapter*) #1

declare dso_local i32 @msg_link(%struct.jme_adapter*, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
