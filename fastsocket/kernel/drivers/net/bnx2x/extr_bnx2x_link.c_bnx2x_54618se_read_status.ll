; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_54618se_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_54618se_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64, i32 }

@MDIO_REG_GPHY_AUX_STATUS = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"54618SE read_status: 0x%x\0A\00", align 1
@MDIO_REG_INTR_STATUS = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_10 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Link is up in %dMbps, is_duplex_full= %d\0A\00", align 1
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@LINK_STATUS_PARALLEL_DETECTION_USED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"BCM54618SE: link speed is %d\0A\00", align 1
@LINK_STATUS_LINK_PARTNER_10THD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100T4_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@FLAGS_EEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_54618se_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_54618se_read_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %12 = load %struct.link_params*, %struct.link_params** %5, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 0
  %14 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  store %struct.bnx2x* %14, %struct.bnx2x** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %16 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %17 = load i32, i32* @MDIO_REG_GPHY_AUX_STATUS, align 4
  %18 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %15, %struct.bnx2x_phy* %16, i32 %17, i32* %10)
  %19 = load i32, i32* @NETIF_MSG_LINK, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (i32, i8*, i32, ...) @DP(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %23 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %24 = load i32, i32* @MDIO_REG_INTR_STATUS, align 4
  %25 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %22, %struct.bnx2x_phy* %23, i32 %24, i32* %8)
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 4
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %258

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 1792
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 1792
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8*, i8** @SPEED_1000, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %41 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* @DUPLEX_FULL, align 8
  %43 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %44 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %111

45:                                               ; preds = %32
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 1536
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** @SPEED_1000, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %52 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @DUPLEX_HALF, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %56 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %110

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 1280
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i8*, i8** @SPEED_100, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %64 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* @DUPLEX_FULL, align 8
  %66 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %67 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %109

68:                                               ; preds = %57
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 768
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i8*, i8** @SPEED_100, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %75 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @DUPLEX_HALF, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %79 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %108

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 512
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8*, i8** @SPEED_10, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %87 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i64, i64* @DUPLEX_FULL, align 8
  %89 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %90 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %107

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 256
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i8*, i8** @SPEED_10, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %98 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** @DUPLEX_HALF, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %102 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %106

103:                                              ; preds = %91
  %104 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %105 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %94
  br label %107

107:                                              ; preds = %106, %83
  br label %108

108:                                              ; preds = %107, %71
  br label %109

109:                                              ; preds = %108, %60
  br label %110

110:                                              ; preds = %109, %48
  br label %111

111:                                              ; preds = %110, %37
  %112 = load i32, i32* @NETIF_MSG_LINK, align 4
  %113 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %114 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %117 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DUPLEX_FULL, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, i32, ...) @DP(i32 %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %121)
  %123 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %124 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %125 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %123, %struct.bnx2x_phy* %124, i32 1, i32* %8)
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %111
  %130 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %131 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %132 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %129, %111
  %136 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %137 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %138 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %136, %struct.bnx2x_phy* %137, i32 6, i32* %8)
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i32, i32* @LINK_STATUS_PARALLEL_DETECTION_USED, align 4
  %144 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %145 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %135
  %149 = load i32, i32* @NETIF_MSG_LINK, align 4
  %150 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %151 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i8*, i32, ...) @DP(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %155 = load %struct.link_params*, %struct.link_params** %5, align 8
  %156 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %157 = call i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %154, %struct.link_params* %155, %struct.link_vars* %156)
  %158 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %159 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %257

164:                                              ; preds = %148
  %165 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %166 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %167 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %165, %struct.bnx2x_phy* %166, i32 5, i32* %8)
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, 32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10THD_CAPABLE, align 4
  %173 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %174 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %164
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, 64
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE, align 4
  %183 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %184 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %181, %177
  %188 = load i32, i32* %8, align 4
  %189 = and i32 %188, 128
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE, align 4
  %193 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %194 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %187
  %198 = load i32, i32* %8, align 4
  %199 = and i32 %198, 256
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE, align 4
  %203 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %204 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %197
  %208 = load i32, i32* %8, align 4
  %209 = and i32 %208, 512
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100T4_CAPABLE, align 4
  %213 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %214 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %211, %207
  %218 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %219 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %220 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %218, %struct.bnx2x_phy* %219, i32 10, i32* %8)
  %221 = load i32, i32* %8, align 4
  %222 = and i32 %221, 1024
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %217
  %225 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE, align 4
  %226 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %227 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %224, %217
  %231 = load i32, i32* %8, align 4
  %232 = and i32 %231, 2048
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %236 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %237 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %234, %230
  %241 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %242 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @FLAGS_EEE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %240
  %248 = load %struct.link_params*, %struct.link_params** %5, align 8
  %249 = call i64 @bnx2x_eee_has_cap(%struct.link_params* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %253 = load %struct.link_params*, %struct.link_params** %5, align 8
  %254 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %255 = call i32 @bnx2x_eee_an_resolve(%struct.bnx2x_phy* %252, %struct.link_params* %253, %struct.link_vars* %254)
  br label %256

256:                                              ; preds = %251, %247, %240
  br label %257

257:                                              ; preds = %256, %148
  br label %258

258:                                              ; preds = %257, %3
  %259 = load i32, i32* %9, align 4
  ret i32 %259
}

declare dso_local i32 @bnx2x_cl22_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

declare dso_local i64 @bnx2x_eee_has_cap(%struct.link_params*) #1

declare dso_local i32 @bnx2x_eee_an_resolve(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
