; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_radio_interference_mitigation_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_radio_interference_mitigation_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32* }

@B43_PHY_G_CRS = common dso_local global i32 0, align 4
@B43_PHY_RADIO_BITFIELD = common dso_local global i32 0, align 4
@B43_HF_ACIW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_radio_interference_mitigation_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_interference_mitigation_enable(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_g*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  store %struct.b43_phy* %12, %struct.b43_phy** %5, align 8
  %13 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 1
  %15 = load %struct.b43_phy_g*, %struct.b43_phy_g** %14, align 8
  store %struct.b43_phy_g* %15, %struct.b43_phy_g** %6, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %17 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %297 [
    i32 128, label %20
    i32 129, label %106
  ]

20:                                               ; preds = %2
  %21 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %22 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = call i32 @b43_phy_set(%struct.b43_wldev* %26, i32 1067, i32 2048)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* @B43_PHY_G_CRS, align 4
  %30 = call i32 @b43_phy_mask(%struct.b43_wldev* %28, i32 %29, i32 -16385)
  br label %299

31:                                               ; preds = %20
  %32 = call i32 @radio_stacksave(i32 120)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i32 @b43_radio_read16(%struct.b43_wldev* %33, i32 120)
  %35 = and i32 %34, 30
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 15
  %38 = zext i1 %37 to i32
  %39 = call i32 @B43_WARN_ON(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @bitrev4(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 7, i32* %8, align 4
  br label %55

48:                                               ; preds = %44, %31
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 10
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 3
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @bitrev4(i32 %56)
  %58 = shl i32 %57, 1
  %59 = or i32 %58, 32
  store i32 %59, i32* %8, align 4
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @b43_radio_write16(%struct.b43_wldev* %60, i32 120, i32 %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = call i32 @b43_calc_nrssi_threshold(%struct.b43_wldev* %63)
  %65 = call i32 @phy_stacksave(i32 1030)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = call i32 @b43_phy_write(%struct.b43_wldev* %66, i32 1030, i32 32296)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %69 = call i32 @b43_phy_set(%struct.b43_wldev* %68, i32 1067, i32 2048)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @B43_PHY_RADIO_BITFIELD, align 4
  %72 = call i32 @b43_phy_set(%struct.b43_wldev* %70, i32 %71, i32 4096)
  %73 = call i32 @phy_stacksave(i32 1184)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = call i32 @b43_phy_maskset(%struct.b43_wldev* %74, i32 1184, i32 49344, i32 8)
  %76 = call i32 @phy_stacksave(i32 1185)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = call i32 @b43_phy_maskset(%struct.b43_wldev* %77, i32 1185, i32 49344, i32 1541)
  %79 = call i32 @phy_stacksave(i32 1186)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = call i32 @b43_phy_maskset(%struct.b43_wldev* %80, i32 1186, i32 49344, i32 516)
  %82 = call i32 @phy_stacksave(i32 1192)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %84 = call i32 @b43_phy_maskset(%struct.b43_wldev* %83, i32 1192, i32 49344, i32 2051)
  %85 = call i32 @phy_stacksave(i32 1195)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %87 = call i32 @b43_phy_maskset(%struct.b43_wldev* %86, i32 1195, i32 49344, i32 1541)
  %88 = call i32 @phy_stacksave(i32 1191)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %90 = call i32 @b43_phy_write(%struct.b43_wldev* %89, i32 1191, i32 2)
  %91 = call i32 @phy_stacksave(i32 1187)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = call i32 @b43_phy_write(%struct.b43_wldev* %92, i32 1187, i32 10362)
  %94 = call i32 @phy_stacksave(i32 1193)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %96 = call i32 @b43_phy_write(%struct.b43_wldev* %95, i32 1193, i32 8231)
  %97 = call i32 @phy_stacksave(i32 1171)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = call i32 @b43_phy_write(%struct.b43_wldev* %98, i32 1171, i32 13045)
  %100 = call i32 @phy_stacksave(i32 1194)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = call i32 @b43_phy_write(%struct.b43_wldev* %101, i32 1194, i32 8231)
  %103 = call i32 @phy_stacksave(i32 1196)
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %105 = call i32 @b43_phy_write(%struct.b43_wldev* %104, i32 1196, i32 13045)
  br label %299

106:                                              ; preds = %2
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = call i32 @b43_phy_read(%struct.b43_wldev* %107, i32 51)
  %109 = and i32 %108, 2048
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %299

112:                                              ; preds = %106
  %113 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %114 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i32, i32* @B43_PHY_RADIO_BITFIELD, align 4
  %116 = call i32 @phy_stacksave(i32 %115)
  %117 = load i32, i32* @B43_PHY_G_CRS, align 4
  %118 = call i32 @phy_stacksave(i32 %117)
  %119 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %120 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = call i32 @phy_stacksave(i32 1030)
  br label %128

125:                                              ; preds = %112
  %126 = call i32 @phy_stacksave(i32 1216)
  %127 = call i32 @phy_stacksave(i32 1217)
  br label %128

128:                                              ; preds = %125, %123
  %129 = call i32 @phy_stacksave(i32 51)
  %130 = call i32 @phy_stacksave(i32 1191)
  %131 = call i32 @phy_stacksave(i32 1187)
  %132 = call i32 @phy_stacksave(i32 1193)
  %133 = call i32 @phy_stacksave(i32 1194)
  %134 = call i32 @phy_stacksave(i32 1196)
  %135 = call i32 @phy_stacksave(i32 1171)
  %136 = call i32 @phy_stacksave(i32 1185)
  %137 = call i32 @phy_stacksave(i32 1184)
  %138 = call i32 @phy_stacksave(i32 1186)
  %139 = call i32 @phy_stacksave(i32 1162)
  %140 = call i32 @phy_stacksave(i32 1192)
  %141 = call i32 @phy_stacksave(i32 1195)
  %142 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %143 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %149

146:                                              ; preds = %128
  %147 = call i32 @phy_stacksave(i32 1197)
  %148 = call i32 @phy_stacksave(i32 1198)
  br label %162

149:                                              ; preds = %128
  %150 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %151 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sge i32 %152, 3
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = call i32 @phy_stacksave(i32 1197)
  %156 = call i32 @phy_stacksave(i32 1045)
  %157 = call i32 @phy_stacksave(i32 1046)
  %158 = call i32 @phy_stacksave(i32 1047)
  %159 = call i32 @ofdmtab_stacksave(i32 6656, i32 2)
  %160 = call i32 @ofdmtab_stacksave(i32 6656, i32 3)
  br label %161

161:                                              ; preds = %154, %149
  br label %162

162:                                              ; preds = %161, %146
  %163 = call i32 @phy_stacksave(i32 1067)
  %164 = call i32 @phy_stacksave(i32 1164)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %166 = load i32, i32* @B43_PHY_RADIO_BITFIELD, align 4
  %167 = call i32 @b43_phy_mask(%struct.b43_wldev* %165, i32 %166, i32 -4097)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %169 = load i32, i32* @B43_PHY_G_CRS, align 4
  %170 = call i32 @b43_phy_maskset(%struct.b43_wldev* %168, i32 %169, i32 65532, i32 2)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %172 = call i32 @b43_phy_write(%struct.b43_wldev* %171, i32 51, i32 2048)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %174 = call i32 @b43_phy_write(%struct.b43_wldev* %173, i32 1187, i32 8231)
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %176 = call i32 @b43_phy_write(%struct.b43_wldev* %175, i32 1193, i32 7336)
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %178 = call i32 @b43_phy_write(%struct.b43_wldev* %177, i32 1171, i32 10362)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %180 = call i32 @b43_phy_write(%struct.b43_wldev* %179, i32 1194, i32 7336)
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %182 = call i32 @b43_phy_write(%struct.b43_wldev* %181, i32 1196, i32 10362)
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %184 = call i32 @b43_phy_maskset(%struct.b43_wldev* %183, i32 1184, i32 65472, i32 26)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %186 = call i32 @b43_phy_write(%struct.b43_wldev* %185, i32 1191, i32 13)
  %187 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %188 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %189, 2
  br i1 %190, label %191, label %194

191:                                              ; preds = %162
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %193 = call i32 @b43_phy_write(%struct.b43_wldev* %192, i32 1030, i32 65293)
  br label %210

194:                                              ; preds = %162
  %195 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %196 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %201 = call i32 @b43_phy_write(%struct.b43_wldev* %200, i32 1216, i32 65535)
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %203 = call i32 @b43_phy_write(%struct.b43_wldev* %202, i32 1217, i32 169)
  br label %209

204:                                              ; preds = %194
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %206 = call i32 @b43_phy_write(%struct.b43_wldev* %205, i32 1216, i32 193)
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %208 = call i32 @b43_phy_write(%struct.b43_wldev* %207, i32 1217, i32 89)
  br label %209

209:                                              ; preds = %204, %199
  br label %210

210:                                              ; preds = %209, %191
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %212 = call i32 @b43_phy_maskset(%struct.b43_wldev* %211, i32 1185, i32 49407, i32 6144)
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %214 = call i32 @b43_phy_maskset(%struct.b43_wldev* %213, i32 1185, i32 65472, i32 21)
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %216 = call i32 @b43_phy_maskset(%struct.b43_wldev* %215, i32 1192, i32 53247, i32 4096)
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %218 = call i32 @b43_phy_maskset(%struct.b43_wldev* %217, i32 1192, i32 61695, i32 2560)
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %220 = call i32 @b43_phy_maskset(%struct.b43_wldev* %219, i32 1195, i32 53247, i32 4096)
  %221 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %222 = call i32 @b43_phy_maskset(%struct.b43_wldev* %221, i32 1195, i32 61695, i32 2048)
  %223 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %224 = call i32 @b43_phy_maskset(%struct.b43_wldev* %223, i32 1195, i32 65487, i32 16)
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %226 = call i32 @b43_phy_maskset(%struct.b43_wldev* %225, i32 1195, i32 65520, i32 5)
  %227 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %228 = call i32 @b43_phy_maskset(%struct.b43_wldev* %227, i32 1192, i32 65487, i32 16)
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %230 = call i32 @b43_phy_maskset(%struct.b43_wldev* %229, i32 1192, i32 65520, i32 6)
  %231 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %232 = call i32 @b43_phy_maskset(%struct.b43_wldev* %231, i32 1186, i32 61695, i32 2048)
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %234 = call i32 @b43_phy_maskset(%struct.b43_wldev* %233, i32 1184, i32 61695, i32 1280)
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %236 = call i32 @b43_phy_maskset(%struct.b43_wldev* %235, i32 1186, i32 65520, i32 11)
  %237 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %238 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp sge i32 %239, 3
  br i1 %240, label %241, label %250

241:                                              ; preds = %210
  %242 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %243 = call i32 @b43_phy_mask(%struct.b43_wldev* %242, i32 1162, i32 32767)
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %245 = call i32 @b43_phy_maskset(%struct.b43_wldev* %244, i32 1045, i32 32768, i32 14040)
  %246 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %247 = call i32 @b43_phy_maskset(%struct.b43_wldev* %246, i32 1046, i32 32768, i32 14040)
  %248 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %249 = call i32 @b43_phy_maskset(%struct.b43_wldev* %248, i32 1047, i32 65024, i32 365)
  br label %261

250:                                              ; preds = %210
  %251 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %252 = call i32 @b43_phy_set(%struct.b43_wldev* %251, i32 1162, i32 4096)
  %253 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %254 = call i32 @b43_phy_maskset(%struct.b43_wldev* %253, i32 1162, i32 40959, i32 8192)
  %255 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %256 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %257 = call i32 @b43_hf_read(%struct.b43_wldev* %256)
  %258 = load i32, i32* @B43_HF_ACIW, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @b43_hf_write(%struct.b43_wldev* %255, i32 %259)
  br label %261

261:                                              ; preds = %250, %241
  %262 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %263 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp sge i32 %264, 2
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %268 = call i32 @b43_phy_set(%struct.b43_wldev* %267, i32 1067, i32 2048)
  br label %269

269:                                              ; preds = %266, %261
  %270 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %271 = call i32 @b43_phy_maskset(%struct.b43_wldev* %270, i32 1164, i32 61695, i32 512)
  %272 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %273 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 2
  br i1 %275, label %276, label %281

276:                                              ; preds = %269
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %278 = call i32 @b43_phy_maskset(%struct.b43_wldev* %277, i32 1198, i32 65280, i32 127)
  %279 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %280 = call i32 @b43_phy_maskset(%struct.b43_wldev* %279, i32 1197, i32 255, i32 4864)
  br label %294

281:                                              ; preds = %269
  %282 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %283 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp sge i32 %284, 6
  br i1 %285, label %286, label %293

286:                                              ; preds = %281
  %287 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %288 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %287, i32 6656, i32 3, i32 127)
  %289 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %290 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %289, i32 6656, i32 2, i32 127)
  %291 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %292 = call i32 @b43_phy_mask(%struct.b43_wldev* %291, i32 1197, i32 255)
  br label %293

293:                                              ; preds = %286, %281
  br label %294

294:                                              ; preds = %293, %276
  %295 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %296 = call i32 @b43_calc_nrssi_slope(%struct.b43_wldev* %295)
  br label %299

297:                                              ; preds = %2
  %298 = call i32 @B43_WARN_ON(i32 1)
  br label %299

299:                                              ; preds = %297, %294, %111, %55, %25
  ret void
}

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @radio_stacksave(i32) #1

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @bitrev4(i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_calc_nrssi_threshold(%struct.b43_wldev*) #1

declare dso_local i32 @phy_stacksave(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @ofdmtab_stacksave(i32, i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_calc_nrssi_slope(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
