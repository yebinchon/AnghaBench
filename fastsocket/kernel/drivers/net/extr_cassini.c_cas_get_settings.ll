; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i8*, i32, i32, i8*, i32 }
%struct.cas = type { i32, i32, i32, i32, i64, i64, i32, i32 }

@link_up = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@CAS_FLAG_1000MB_CAP = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@CAS_FLAG_SATURN = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i8* null, align 8
@XCVR_EXTERNAL = common dso_local global i8* null, align 8
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@REG_PCS_MII_CTRL = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@SPEED_1000 = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@CAS_BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @cas_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.cas* @netdev_priv(%struct.net_device* %12)
  store %struct.cas* %13, %struct.cas** %5, align 8
  %14 = load i32, i32* @link_up, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cas*, %struct.cas** %5, align 8
  %21 = getelementptr inbounds %struct.cas, %struct.cas* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %26, %2
  %38 = load %struct.cas*, %struct.cas** %5, align 8
  %39 = getelementptr inbounds %struct.cas, %struct.cas* %38, i32 0, i32 3
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  store i32 0, i32* %6, align 4
  %42 = load %struct.cas*, %struct.cas** %5, align 8
  %43 = getelementptr inbounds %struct.cas, %struct.cas* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.cas*, %struct.cas** %5, align 8
  %46 = getelementptr inbounds %struct.cas, %struct.cas* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @CAS_PHY_MII(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %118

50:                                               ; preds = %37
  %51 = load i32, i32* @PORT_MII, align 4
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.cas*, %struct.cas** %5, align 8
  %55 = getelementptr inbounds %struct.cas, %struct.cas* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAS_FLAG_SATURN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i8*, i8** @XCVR_INTERNAL, align 8
  br label %64

62:                                               ; preds = %50
  %63 = load i8*, i8** @XCVR_EXTERNAL, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.cas*, %struct.cas** %5, align 8
  %69 = getelementptr inbounds %struct.cas, %struct.cas* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ADVERTISED_TP, align 4
  %74 = load i32, i32* @ADVERTISED_MII, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %89 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SUPPORTED_TP, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SUPPORTED_MII, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.cas*, %struct.cas** %5, align 8
  %104 = getelementptr inbounds %struct.cas, %struct.cas* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %64
  %108 = load %struct.cas*, %struct.cas** %5, align 8
  %109 = call i32 @cas_mif_poll(%struct.cas* %108, i32 0)
  %110 = load %struct.cas*, %struct.cas** %5, align 8
  %111 = load i32, i32* @MII_BMCR, align 4
  %112 = call i32 @cas_phy_read(%struct.cas* %110, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load %struct.cas*, %struct.cas** %5, align 8
  %114 = call i32 @cas_read_mii_link_mode(%struct.cas* %113, i32* %7, i32* %8, i32* %9)
  %115 = load %struct.cas*, %struct.cas** %5, align 8
  %116 = call i32 @cas_mif_poll(%struct.cas* %115, i32 1)
  br label %117

117:                                              ; preds = %107, %64
  br label %151

118:                                              ; preds = %37
  %119 = load i32, i32* @PORT_FIBRE, align 4
  %120 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %121 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 8
  %122 = load i8*, i8** @XCVR_INTERNAL, align 8
  %123 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %124 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %126 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %125, i32 0, i32 5
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %128 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %129 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %133 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.cas*, %struct.cas** %5, align 8
  %138 = getelementptr inbounds %struct.cas, %struct.cas* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %118
  %142 = load %struct.cas*, %struct.cas** %5, align 8
  %143 = getelementptr inbounds %struct.cas, %struct.cas* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @readl(i64 %146)
  store i32 %147, i32* %6, align 4
  %148 = load %struct.cas*, %struct.cas** %5, align 8
  %149 = call i32 @cas_read_pcs_link_mode(%struct.cas* %148, i32* %7, i32* %8, i32* %9)
  br label %150

150:                                              ; preds = %141, %118
  br label %151

151:                                              ; preds = %150, %117
  %152 = load %struct.cas*, %struct.cas** %5, align 8
  %153 = getelementptr inbounds %struct.cas, %struct.cas* %152, i32 0, i32 3
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @BMCR_ANENABLE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %197

160:                                              ; preds = %151
  %161 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %162 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %163 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @AUTONEG_ENABLE, align 4
  %167 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %168 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 10
  br i1 %170, label %171, label %173

171:                                              ; preds = %160
  %172 = load i8*, i8** @SPEED_10, align 8
  br label %182

173:                                              ; preds = %160
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 1000
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i8*, i8** @SPEED_1000, align 8
  br label %180

178:                                              ; preds = %173
  %179 = load i8*, i8** @SPEED_100, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i8* [ %177, %176 ], [ %179, %178 ]
  br label %182

182:                                              ; preds = %180, %171
  %183 = phi i8* [ %172, %171 ], [ %181, %180 ]
  %184 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %185 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %192

190:                                              ; preds = %182
  %191 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i8* [ %189, %188 ], [ %191, %190 ]
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %196 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  br label %235

197:                                              ; preds = %151
  %198 = load i32, i32* @AUTONEG_DISABLE, align 4
  %199 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %200 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i8*, i8** @SPEED_1000, align 8
  br label %218

207:                                              ; preds = %197
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @BMCR_SPEED100, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i8*, i8** @SPEED_100, align 8
  br label %216

214:                                              ; preds = %207
  %215 = load i8*, i8** @SPEED_10, align 8
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i8* [ %213, %212 ], [ %215, %214 ]
  br label %218

218:                                              ; preds = %216, %205
  %219 = phi i8* [ %206, %205 ], [ %217, %216 ]
  %220 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %221 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %220, i32 0, i32 3
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @BMCR_FULLDPLX, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %218
  %227 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %230

228:                                              ; preds = %218
  %229 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i8* [ %227, %226 ], [ %229, %228 ]
  %232 = ptrtoint i8* %231 to i32
  %233 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %234 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %230, %192
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* @link_up, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %294

239:                                              ; preds = %235
  %240 = load %struct.cas*, %struct.cas** %5, align 8
  %241 = getelementptr inbounds %struct.cas, %struct.cas* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @BMCR_ANENABLE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %248 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %247, i32 0, i32 3
  store i8* null, i8** %248, align 8
  %249 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %250 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %249, i32 0, i32 2
  store i32 255, i32* %250, align 8
  br label %293

251:                                              ; preds = %239
  %252 = load i8*, i8** @SPEED_10, align 8
  %253 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %254 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %253, i32 0, i32 3
  store i8* %252, i8** %254, align 8
  %255 = load %struct.cas*, %struct.cas** %5, align 8
  %256 = getelementptr inbounds %struct.cas, %struct.cas* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @BMCR_SPEED100, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %251
  %262 = load i8*, i8** @SPEED_100, align 8
  %263 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %264 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %263, i32 0, i32 3
  store i8* %262, i8** %264, align 8
  br label %277

265:                                              ; preds = %251
  %266 = load %struct.cas*, %struct.cas** %5, align 8
  %267 = getelementptr inbounds %struct.cas, %struct.cas* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load i8*, i8** @SPEED_1000, align 8
  %274 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %275 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %274, i32 0, i32 3
  store i8* %273, i8** %275, align 8
  br label %276

276:                                              ; preds = %272, %265
  br label %277

277:                                              ; preds = %276, %261
  %278 = load %struct.cas*, %struct.cas** %5, align 8
  %279 = getelementptr inbounds %struct.cas, %struct.cas* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @BMCR_FULLDPLX, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %277
  %285 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %288

286:                                              ; preds = %277
  %287 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i8* [ %285, %284 ], [ %287, %286 ]
  %290 = ptrtoint i8* %289 to i32
  %291 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %292 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %288, %246
  br label %294

294:                                              ; preds = %293, %235
  ret i32 0
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @CAS_PHY_MII(i32) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @cas_read_mii_link_mode(%struct.cas*, i32*, i32*, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cas_read_pcs_link_mode(%struct.cas*, i32*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
