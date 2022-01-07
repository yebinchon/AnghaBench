; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_phy_initg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_phy_initg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__*, %struct.b43_phy }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.b43_phy = type { i32, i32, i64, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@B43_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@B43_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_RFOVER = common dso_local global i32 0, align 4
@B43_PHY_PGACTL = common dso_local global i32 0, align 4
@B43_PHY_VERSION_OFDM = common dso_local global i32 0, align 4
@B43_PHYVER_VERSION = common dso_local global i32 0, align 4
@B43_BFL_PACTRL = common dso_local global i32 0, align 4
@B43_PHY_LO_MASK = common dso_local global i32 0, align 4
@B43_BFL_RSSI = common dso_local global i32 0, align 4
@B43_PHY_CRS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_initg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_initg(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  store %struct.b43_phy* %7, %struct.b43_phy** %3, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 3
  %10 = load %struct.b43_phy_g*, %struct.b43_phy_g** %9, align 8
  store %struct.b43_phy_g* %10, %struct.b43_phy_g** %4, align 8
  %11 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @b43_phy_initb5(%struct.b43_wldev* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = call i32 @b43_phy_initb6(%struct.b43_wldev* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %28 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_phy_inita(%struct.b43_wldev* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %36 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %42 = call i32 @b43_phy_write(%struct.b43_wldev* %40, i32 %41, i32 0)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %45 = call i32 @b43_phy_write(%struct.b43_wldev* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %48 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = load i32, i32* @B43_PHY_RFOVER, align 4
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %52, i32 %53, i32 0)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B43_PHY_PGACTL, align 4
  %57 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 %56, i32 192)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %60 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 5
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B43_PHY_RFOVER, align 4
  %66 = call i32 @b43_phy_write(%struct.b43_wldev* %64, i32 %65, i32 1024)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = load i32, i32* @B43_PHY_PGACTL, align 4
  %69 = call i32 @b43_phy_write(%struct.b43_wldev* %67, i32 %68, i32 192)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %72 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %77 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %107

80:                                               ; preds = %75, %70
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B43_PHY_VERSION_OFDM, align 4
  %83 = call i32 @b43_phy_read(%struct.b43_wldev* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @B43_PHYVER_VERSION, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 5
  br i1 %91, label %92, label %99

92:                                               ; preds = %89, %80
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @B43_PHY_OFDM(i32 194)
  %95 = call i32 @b43_phy_write(%struct.b43_wldev* %93, i32 %94, i32 6166)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = call i32 @B43_PHY_OFDM(i32 195)
  %98 = call i32 @b43_phy_write(%struct.b43_wldev* %96, i32 %97, i32 32774)
  br label %99

99:                                               ; preds = %92, %89
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = call i32 @B43_PHY_OFDM(i32 204)
  %105 = call i32 @b43_phy_maskset(%struct.b43_wldev* %103, i32 %104, i32 255, i32 7936)
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %75
  %108 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %109 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %110, 2
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %114 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %119 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %117, %112
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %124 = call i32 @B43_PHY_OFDM(i32 126)
  %125 = call i32 @b43_phy_write(%struct.b43_wldev* %123, i32 %124, i32 120)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %128 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @B43_PHY_EXTG(i32 1)
  %134 = call i32 @b43_phy_set(%struct.b43_wldev* %132, i32 %133, i32 128)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = call i32 @B43_PHY_OFDM(i32 62)
  %137 = call i32 @b43_phy_set(%struct.b43_wldev* %135, i32 %136, i32 4)
  br label %138

138:                                              ; preds = %131, %126
  %139 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %140 = call i64 @has_loopback_gain(%struct.b43_phy* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %144 = call i32 @b43_calc_loopback_gain(%struct.b43_wldev* %143)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %147 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 8
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %152 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 65535
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = call i32 @b43_radio_init2050(%struct.b43_wldev* %156)
  %158 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %159 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %166

160:                                              ; preds = %150
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %163 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @b43_radio_write16(%struct.b43_wldev* %161, i32 120, i32 %164)
  br label %166

166:                                              ; preds = %160, %155
  br label %167

167:                                              ; preds = %166, %145
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = call i32 @b43_lo_g_init(%struct.b43_wldev* %168)
  %170 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %171 = call i64 @has_tx_magnification(%struct.b43_phy* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %167
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = call i32 @b43_radio_read16(%struct.b43_wldev* %175, i32 82)
  %177 = and i32 %176, 65280
  %178 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %179 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %177, %182
  %184 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %185 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %183, %188
  %190 = call i32 @b43_radio_write16(%struct.b43_wldev* %174, i32 82, i32 %189)
  br label %199

191:                                              ; preds = %167
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %193 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %194 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %193, i32 0, i32 2
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @b43_radio_maskset(%struct.b43_wldev* %192, i32 82, i32 65520, i32 %197)
  br label %199

199:                                              ; preds = %191, %173
  %200 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %201 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp sge i32 %202, 6
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %206 = call i32 @B43_PHY_CCK(i32 54)
  %207 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %208 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %207, i32 0, i32 2
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 12
  %213 = call i32 @b43_phy_maskset(%struct.b43_wldev* %205, i32 %206, i32 4095, i32 %212)
  br label %214

214:                                              ; preds = %204, %199
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %216 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %215, i32 0, i32 0
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @B43_BFL_PACTRL, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %214
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %227 = call i32 @B43_PHY_CCK(i32 46)
  %228 = call i32 @b43_phy_write(%struct.b43_wldev* %226, i32 %227, i32 32885)
  br label %233

229:                                              ; preds = %214
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %231 = call i32 @B43_PHY_CCK(i32 46)
  %232 = call i32 @b43_phy_write(%struct.b43_wldev* %230, i32 %231, i32 32895)
  br label %233

233:                                              ; preds = %229, %225
  %234 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %235 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %236, 2
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %240 = call i32 @B43_PHY_CCK(i32 47)
  %241 = call i32 @b43_phy_write(%struct.b43_wldev* %239, i32 %240, i32 257)
  br label %246

242:                                              ; preds = %233
  %243 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %244 = call i32 @B43_PHY_CCK(i32 47)
  %245 = call i32 @b43_phy_write(%struct.b43_wldev* %243, i32 %244, i32 514)
  br label %246

246:                                              ; preds = %242, %238
  %247 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %248 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %253 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp sge i32 %254, 2
  br i1 %255, label %256, label %262

256:                                              ; preds = %251, %246
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %258 = call i32 @b43_lo_g_adjust(%struct.b43_wldev* %257)
  %259 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %260 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %261 = call i32 @b43_phy_write(%struct.b43_wldev* %259, i32 %260, i32 32888)
  br label %262

262:                                              ; preds = %256, %251
  %263 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %264 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %263, i32 0, i32 0
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @B43_BFL_RSSI, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %262
  %274 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %275 = call i32 @b43_nrssi_hw_update(%struct.b43_wldev* %274, i32 65535)
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %277 = call i32 @b43_calc_nrssi_threshold(%struct.b43_wldev* %276)
  br label %311

278:                                              ; preds = %262
  %279 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %280 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %278
  %284 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %285 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp sge i32 %286, 2
  br i1 %287, label %288, label %310

288:                                              ; preds = %283, %278
  %289 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %290 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, -1000
  br i1 %294, label %295, label %306

295:                                              ; preds = %288
  %296 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %297 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, -1000
  %302 = zext i1 %301 to i32
  %303 = call i32 @B43_WARN_ON(i32 %302)
  %304 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %305 = call i32 @b43_calc_nrssi_slope(%struct.b43_wldev* %304)
  br label %309

306:                                              ; preds = %288
  %307 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %308 = call i32 @b43_calc_nrssi_threshold(%struct.b43_wldev* %307)
  br label %309

309:                                              ; preds = %306, %295
  br label %310

310:                                              ; preds = %309, %283
  br label %311

311:                                              ; preds = %310, %273
  %312 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %313 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 8
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %318 = call i32 @B43_PHY_EXTG(i32 5)
  %319 = call i32 @b43_phy_write(%struct.b43_wldev* %317, i32 %318, i32 12848)
  br label %320

320:                                              ; preds = %316, %311
  %321 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %322 = call i32 @b43_phy_init_pctl(%struct.b43_wldev* %321)
  %323 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %324 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %323, i32 0, i32 0
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 17158
  br i1 %328, label %329, label %343

329:                                              ; preds = %320
  %330 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %331 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %330, i32 0, i32 0
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 2
  br i1 %335, label %336, label %343

336:                                              ; preds = %329
  %337 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %338 = load i32, i32* @B43_PHY_CRS0, align 4
  %339 = call i32 @b43_phy_mask(%struct.b43_wldev* %337, i32 %338, i32 49151)
  %340 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %341 = call i32 @B43_PHY_OFDM(i32 195)
  %342 = call i32 @b43_phy_mask(%struct.b43_wldev* %340, i32 %341, i32 32767)
  br label %343

343:                                              ; preds = %336, %329, %320
  ret void
}

declare dso_local i32 @b43_phy_initb5(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_initb6(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_inita(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_EXTG(i32) #1

declare dso_local i64 @has_loopback_gain(%struct.b43_phy*) #1

declare dso_local i32 @b43_calc_loopback_gain(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_init2050(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_lo_g_init(%struct.b43_wldev*) #1

declare dso_local i64 @has_tx_magnification(%struct.b43_phy*) #1

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_PHY_CCK(i32) #1

declare dso_local i32 @b43_lo_g_adjust(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nrssi_hw_update(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_calc_nrssi_threshold(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_calc_nrssi_slope(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_init_pctl(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
