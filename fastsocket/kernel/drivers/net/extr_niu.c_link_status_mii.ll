; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_mii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i32, i32, i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@BMSR_ANEGCAPABLE = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@LPA_1000FULL = common dso_local global i32 0, align 4
@LPA_1000HALF = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@LPA_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@LPA_10HALF = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i32 0, align 4
@LPA_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_mii(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.niu_link_config*, align 8
  %7 = alloca i32, align 4
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
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load %struct.niu*, %struct.niu** %4, align 8
  %22 = getelementptr inbounds %struct.niu, %struct.niu* %21, i32 0, i32 1
  store %struct.niu_link_config* %22, %struct.niu_link_config** %6, align 8
  %23 = load %struct.niu*, %struct.niu** %4, align 8
  %24 = load %struct.niu*, %struct.niu** %4, align 8
  %25 = getelementptr inbounds %struct.niu, %struct.niu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MII_BMCR, align 4
  %28 = call i32 @mii_read(%struct.niu* %23, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %375

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.niu*, %struct.niu** %4, align 8
  %39 = load %struct.niu*, %struct.niu** %4, align 8
  %40 = getelementptr inbounds %struct.niu, %struct.niu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MII_BMSR, align 4
  %43 = call i32 @mii_read(%struct.niu* %38, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %375

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.niu*, %struct.niu** %4, align 8
  %54 = load %struct.niu*, %struct.niu** %4, align 8
  %55 = getelementptr inbounds %struct.niu, %struct.niu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MII_ADVERTISE, align 4
  %58 = call i32 @mii_read(%struct.niu* %53, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %375

66:                                               ; preds = %51
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.niu*, %struct.niu** %4, align 8
  %69 = load %struct.niu*, %struct.niu** %4, align 8
  %70 = getelementptr inbounds %struct.niu, %struct.niu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MII_LPA, align 4
  %73 = call i32 @mii_read(%struct.niu* %68, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %375

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @BMSR_ESTATEN, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %134

88:                                               ; preds = %81
  %89 = load %struct.niu*, %struct.niu** %4, align 8
  %90 = load %struct.niu*, %struct.niu** %4, align 8
  %91 = getelementptr inbounds %struct.niu, %struct.niu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MII_ESTATUS, align 4
  %94 = call i32 @mii_read(%struct.niu* %89, i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %375

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %14, align 4
  %104 = load %struct.niu*, %struct.niu** %4, align 8
  %105 = load %struct.niu*, %struct.niu** %4, align 8
  %106 = getelementptr inbounds %struct.niu, %struct.niu* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MII_CTRL1000, align 4
  %109 = call i32 @mii_read(%struct.niu* %104, i32 %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %375

117:                                              ; preds = %102
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %10, align 4
  %119 = load %struct.niu*, %struct.niu** %4, align 8
  %120 = load %struct.niu*, %struct.niu** %4, align 8
  %121 = getelementptr inbounds %struct.niu, %struct.niu* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MII_STAT1000, align 4
  %124 = call i32 @mii_read(%struct.niu* %119, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  br label %375

132:                                              ; preds = %117
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %11, align 4
  br label %135

134:                                              ; preds = %81
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %134, %132
  store i32 0, i32* %15, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @BMSR_ANEGCAPABLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @BMSR_10HALF, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %151 = load i32, i32* %15, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @BMSR_10FULL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %160 = load i32, i32* %15, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @BMSR_100HALF, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %169 = load i32, i32* %15, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @BMSR_100FULL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %187 = load i32, i32* %15, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %196 = load i32, i32* %15, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %201 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 4
  store i32 0, i32* %16, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @ADVERTISE_10HALF, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %198
  %207 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %208 = load i32, i32* %16, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %16, align 4
  br label %210

210:                                              ; preds = %206, %198
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @ADVERTISE_10FULL, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %217 = load i32, i32* %16, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %16, align 4
  br label %219

219:                                              ; preds = %215, %210
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @ADVERTISE_100HALF, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %226 = load i32, i32* %16, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %224, %219
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @ADVERTISE_100FULL, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %235 = load i32, i32* %16, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %16, align 4
  br label %237

237:                                              ; preds = %233, %228
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %244 = load i32, i32* %16, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %242, %237
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %253 = load i32, i32* %16, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %16, align 4
  br label %255

255:                                              ; preds = %251, %246
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* @BMCR_ANENABLE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %323

260:                                              ; preds = %255
  %261 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %262 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %261, i32 0, i32 1
  store i32 1, i32* %262, align 4
  %263 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %264 = load i32, i32* %16, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %16, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %12, align 4
  %268 = and i32 %266, %267
  store i32 %268, i32* %19, align 4
  %269 = load i32, i32* %10, align 4
  %270 = shl i32 %269, 2
  %271 = load i32, i32* %11, align 4
  %272 = and i32 %270, %271
  store i32 %272, i32* %20, align 4
  %273 = load i32, i32* %20, align 4
  %274 = load i32, i32* @LPA_1000FULL, align 4
  %275 = load i32, i32* @LPA_1000HALF, align 4
  %276 = or i32 %274, %275
  %277 = and i32 %273, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %260
  %280 = load i32, i32* @SPEED_1000, align 4
  store i32 %280, i32* %17, align 4
  br label %301

281:                                              ; preds = %260
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* @LPA_100, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @SPEED_100, align 4
  store i32 %287, i32* %17, align 4
  br label %300

288:                                              ; preds = %281
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* @LPA_10HALF, align 4
  %291 = load i32, i32* @LPA_10FULL, align 4
  %292 = or i32 %290, %291
  %293 = and i32 %289, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = load i32, i32* @SPEED_10, align 4
  store i32 %296, i32* %17, align 4
  br label %299

297:                                              ; preds = %288
  %298 = load i32, i32* @SPEED_INVALID, align 4
  store i32 %298, i32* %17, align 4
  br label %299

299:                                              ; preds = %297, %295
  br label %300

300:                                              ; preds = %299, %286
  br label %301

301:                                              ; preds = %300, %279
  %302 = load i32, i32* %20, align 4
  %303 = load i32, i32* @LPA_1000FULL, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %301
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* @LPA_DUPLEX, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306, %301
  %312 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %312, i32* %18, align 4
  br label %322

313:                                              ; preds = %306
  %314 = load i32, i32* %17, align 4
  %315 = load i32, i32* @SPEED_INVALID, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %318, i32* %18, align 4
  br label %321

319:                                              ; preds = %313
  %320 = load i32, i32* @DUPLEX_INVALID, align 4
  store i32 %320, i32* %18, align 4
  br label %321

321:                                              ; preds = %319, %317
  br label %322

322:                                              ; preds = %321, %311
  br label %357

323:                                              ; preds = %255
  %324 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %325 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %324, i32 0, i32 1
  store i32 0, i32* %325, align 4
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* @BMCR_SPEED1000, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* @BMCR_SPEED100, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %330
  %336 = load i32, i32* @SPEED_1000, align 4
  store i32 %336, i32* %17, align 4
  br label %347

337:                                              ; preds = %330, %323
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* @BMCR_SPEED100, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load i32, i32* @SPEED_100, align 4
  store i32 %343, i32* %17, align 4
  br label %346

344:                                              ; preds = %337
  %345 = load i32, i32* @SPEED_10, align 4
  store i32 %345, i32* %17, align 4
  br label %346

346:                                              ; preds = %344, %342
  br label %347

347:                                              ; preds = %346, %335
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* @BMCR_FULLDPLX, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %347
  %353 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %353, i32* %18, align 4
  br label %356

354:                                              ; preds = %347
  %355 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %355, i32* %18, align 4
  br label %356

356:                                              ; preds = %354, %352
  br label %357

357:                                              ; preds = %356, %322
  %358 = load i32, i32* %16, align 4
  %359 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %360 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %359, i32 0, i32 2
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %17, align 4
  %362 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %363 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %362, i32 0, i32 3
  store i32 %361, i32* %363, align 4
  %364 = load i32, i32* %18, align 4
  %365 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %366 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %8, align 4
  %368 = load i32, i32* @BMSR_LSTATUS, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  %371 = xor i1 %370, true
  %372 = xor i1 %371, true
  %373 = zext i1 %372 to i32
  %374 = load i32*, i32** %5, align 8
  store i32 %373, i32* %374, align 4
  store i32 0, i32* %3, align 4
  br label %375

375:                                              ; preds = %357, %130, %115, %100, %79, %64, %49, %34
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

declare dso_local i32 @mii_read(%struct.niu*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
