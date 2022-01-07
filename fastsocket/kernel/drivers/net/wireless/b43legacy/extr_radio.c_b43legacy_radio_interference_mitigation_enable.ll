; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_interference_mitigation_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_interference_mitigation_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32*, i32, i32 }

@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4
@B43legacy_PHY_RADIO_BITFIELD = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_UCODEFLAGS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32)* @b43legacy_radio_interference_mitigation_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_radio_interference_mitigation_enable(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  store %struct.b43legacy_phy* %12, %struct.b43legacy_phy** %5, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %14 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %440 [
    i32 128, label %17
    i32 129, label %134
  ]

17:                                               ; preds = %2
  %18 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %19 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %25 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %24, i32 1067)
  %26 = or i32 %25, 2048
  %27 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %23, i32 1067, i32 %26)
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %31 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %32 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %30, i32 %31)
  %33 = and i32 %32, -16385
  %34 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %28, i32 %29, i32 %33)
  br label %442

35:                                               ; preds = %17
  %36 = call i32 @radio_stacksave(i32 120)
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %38 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %37, i32 120)
  %39 = and i32 %38, 30
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @flip_4bit(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 7, i32* %7, align 4
  br label %55

48:                                               ; preds = %44, %35
  %49 = load i32, i32* %7, align 4
  %50 = icmp sge i32 %49, 10
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 3
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @flip_4bit(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 1
  %60 = or i32 %59, 32
  store i32 %60, i32* %7, align 4
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %61, i32 120, i32 %62)
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %65 = call i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev* %64)
  %66 = call i32 @phy_stacksave(i32 1030)
  %67 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %68 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %67, i32 1030, i32 32296)
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %71 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %70, i32 1067)
  %72 = or i32 %71, 2048
  %73 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %69, i32 1067, i32 %72)
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %75 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %76 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %77 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %78 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %76, i32 %77)
  %79 = or i32 %78, 4096
  %80 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %74, i32 %75, i32 %79)
  %81 = call i32 @phy_stacksave(i32 1184)
  %82 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %83 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %84 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %83, i32 1184)
  %85 = and i32 %84, 49344
  %86 = or i32 %85, 8
  %87 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %82, i32 1184, i32 %86)
  %88 = call i32 @phy_stacksave(i32 1185)
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %91 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %90, i32 1185)
  %92 = and i32 %91, 49344
  %93 = or i32 %92, 1541
  %94 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %89, i32 1185, i32 %93)
  %95 = call i32 @phy_stacksave(i32 1186)
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %98 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %97, i32 1186)
  %99 = and i32 %98, 49344
  %100 = or i32 %99, 516
  %101 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %96, i32 1186, i32 %100)
  %102 = call i32 @phy_stacksave(i32 1192)
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %104 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %105 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %104, i32 1192)
  %106 = and i32 %105, 49344
  %107 = or i32 %106, 2051
  %108 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %103, i32 1192, i32 %107)
  %109 = call i32 @phy_stacksave(i32 1195)
  %110 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %112 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %111, i32 1195)
  %113 = and i32 %112, 49344
  %114 = or i32 %113, 1541
  %115 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %110, i32 1195, i32 %114)
  %116 = call i32 @phy_stacksave(i32 1191)
  %117 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %118 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %117, i32 1191, i32 2)
  %119 = call i32 @phy_stacksave(i32 1187)
  %120 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %121 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %120, i32 1187, i32 10362)
  %122 = call i32 @phy_stacksave(i32 1193)
  %123 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %124 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %123, i32 1193, i32 8231)
  %125 = call i32 @phy_stacksave(i32 1171)
  %126 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %127 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %126, i32 1171, i32 13045)
  %128 = call i32 @phy_stacksave(i32 1194)
  %129 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %130 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %129, i32 1194, i32 8231)
  %131 = call i32 @phy_stacksave(i32 1196)
  %132 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %133 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %132, i32 1196, i32 13045)
  br label %442

134:                                              ; preds = %2
  %135 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %136 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %135, i32 51)
  %137 = and i32 %136, 2048
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %442

140:                                              ; preds = %134
  %141 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %142 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %141, i32 0, i32 2
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %144 = call i32 @phy_stacksave(i32 %143)
  %145 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %146 = call i32 @phy_stacksave(i32 %145)
  %147 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %148 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = call i32 @phy_stacksave(i32 1030)
  br label %156

153:                                              ; preds = %140
  %154 = call i32 @phy_stacksave(i32 1216)
  %155 = call i32 @phy_stacksave(i32 1217)
  br label %156

156:                                              ; preds = %153, %151
  %157 = call i32 @phy_stacksave(i32 51)
  %158 = call i32 @phy_stacksave(i32 1191)
  %159 = call i32 @phy_stacksave(i32 1187)
  %160 = call i32 @phy_stacksave(i32 1193)
  %161 = call i32 @phy_stacksave(i32 1194)
  %162 = call i32 @phy_stacksave(i32 1196)
  %163 = call i32 @phy_stacksave(i32 1171)
  %164 = call i32 @phy_stacksave(i32 1185)
  %165 = call i32 @phy_stacksave(i32 1184)
  %166 = call i32 @phy_stacksave(i32 1186)
  %167 = call i32 @phy_stacksave(i32 1162)
  %168 = call i32 @phy_stacksave(i32 1192)
  %169 = call i32 @phy_stacksave(i32 1195)
  %170 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %171 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %177

174:                                              ; preds = %156
  %175 = call i32 @phy_stacksave(i32 1197)
  %176 = call i32 @phy_stacksave(i32 1198)
  br label %190

177:                                              ; preds = %156
  %178 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %179 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp sge i32 %180, 3
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = call i32 @phy_stacksave(i32 1197)
  %184 = call i32 @phy_stacksave(i32 1045)
  %185 = call i32 @phy_stacksave(i32 1046)
  %186 = call i32 @phy_stacksave(i32 1047)
  %187 = call i32 @ilt_stacksave(i32 6658)
  %188 = call i32 @ilt_stacksave(i32 6659)
  br label %189

189:                                              ; preds = %182, %177
  br label %190

190:                                              ; preds = %189, %174
  %191 = call i32 @phy_stacksave(i32 1067)
  %192 = call i32 @phy_stacksave(i32 1164)
  %193 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %194 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %195 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %196 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %197 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %195, i32 %196)
  %198 = and i32 %197, -4097
  %199 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %193, i32 %194, i32 %198)
  %200 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %201 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %202 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %203 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %204 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %202, i32 %203)
  %205 = and i32 %204, 65532
  %206 = or i32 %205, 2
  %207 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %200, i32 %201, i32 %206)
  %208 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %209 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %208, i32 51, i32 2048)
  %210 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %211 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %210, i32 1187, i32 8231)
  %212 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %213 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %212, i32 1193, i32 7336)
  %214 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %215 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %214, i32 1171, i32 10362)
  %216 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %217 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %216, i32 1194, i32 7336)
  %218 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %219 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %218, i32 1196, i32 10362)
  %220 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %221 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %222 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %221, i32 1184)
  %223 = and i32 %222, 65472
  %224 = or i32 %223, 26
  %225 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %220, i32 1184, i32 %224)
  %226 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %227 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %226, i32 1191, i32 13)
  %228 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %229 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = icmp slt i32 %230, 2
  br i1 %231, label %232, label %235

232:                                              ; preds = %190
  %233 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %234 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %233, i32 1030, i32 65293)
  br label %251

235:                                              ; preds = %190
  %236 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %237 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %242 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %241, i32 1216, i32 65535)
  %243 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %244 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %243, i32 1217, i32 169)
  br label %250

245:                                              ; preds = %235
  %246 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %247 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %246, i32 1216, i32 193)
  %248 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %249 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %248, i32 1217, i32 89)
  br label %250

250:                                              ; preds = %245, %240
  br label %251

251:                                              ; preds = %250, %232
  %252 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %253 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %254 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %253, i32 1185)
  %255 = and i32 %254, 49407
  %256 = or i32 %255, 6144
  %257 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %252, i32 1185, i32 %256)
  %258 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %259 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %260 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %259, i32 1185)
  %261 = and i32 %260, 65472
  %262 = or i32 %261, 21
  %263 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %258, i32 1185, i32 %262)
  %264 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %265 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %266 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %265, i32 1192)
  %267 = and i32 %266, 53247
  %268 = or i32 %267, 4096
  %269 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %264, i32 1192, i32 %268)
  %270 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %271 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %272 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %271, i32 1192)
  %273 = and i32 %272, 61695
  %274 = or i32 %273, 2560
  %275 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %270, i32 1192, i32 %274)
  %276 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %277 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %278 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %277, i32 1195)
  %279 = and i32 %278, 53247
  %280 = or i32 %279, 4096
  %281 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %276, i32 1195, i32 %280)
  %282 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %283 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %284 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %283, i32 1195)
  %285 = and i32 %284, 61695
  %286 = or i32 %285, 2048
  %287 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %282, i32 1195, i32 %286)
  %288 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %289 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %290 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %289, i32 1195)
  %291 = and i32 %290, 65487
  %292 = or i32 %291, 16
  %293 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %288, i32 1195, i32 %292)
  %294 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %295 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %296 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %295, i32 1195)
  %297 = and i32 %296, 65520
  %298 = or i32 %297, 5
  %299 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %294, i32 1195, i32 %298)
  %300 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %301 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %302 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %301, i32 1192)
  %303 = and i32 %302, 65487
  %304 = or i32 %303, 16
  %305 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %300, i32 1192, i32 %304)
  %306 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %307 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %308 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %307, i32 1192)
  %309 = and i32 %308, 65520
  %310 = or i32 %309, 6
  %311 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %306, i32 1192, i32 %310)
  %312 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %313 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %314 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %313, i32 1186)
  %315 = and i32 %314, 61695
  %316 = or i32 %315, 2048
  %317 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %312, i32 1186, i32 %316)
  %318 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %319 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %320 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %319, i32 1184)
  %321 = and i32 %320, 61695
  %322 = or i32 %321, 1280
  %323 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %318, i32 1184, i32 %322)
  %324 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %325 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %326 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %325, i32 1186)
  %327 = and i32 %326, 65520
  %328 = or i32 %327, 11
  %329 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %324, i32 1186, i32 %328)
  %330 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %331 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = icmp sge i32 %332, 3
  br i1 %333, label %334, label %358

334:                                              ; preds = %251
  %335 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %336 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %337 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %336, i32 1162)
  %338 = and i32 %337, -32769
  %339 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %335, i32 1162, i32 %338)
  %340 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %341 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %342 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %341, i32 1045)
  %343 = and i32 %342, 32768
  %344 = or i32 %343, 14040
  %345 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %340, i32 1045, i32 %344)
  %346 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %347 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %348 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %347, i32 1046)
  %349 = and i32 %348, 32768
  %350 = or i32 %349, 14040
  %351 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %346, i32 1046, i32 %350)
  %352 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %353 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %354 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %353, i32 1047)
  %355 = and i32 %354, 65024
  %356 = or i32 %355, 365
  %357 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %352, i32 1047, i32 %356)
  br label %386

358:                                              ; preds = %251
  %359 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %360 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %361 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %360, i32 1162)
  %362 = or i32 %361, 4096
  %363 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %359, i32 1162, i32 %362)
  %364 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %365 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %366 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %365, i32 1162)
  %367 = and i32 %366, 40959
  %368 = or i32 %367, 8192
  %369 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %364, i32 1162, i32 %368)
  %370 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %371 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %372 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %373 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %370, i32 %371, i32 %372)
  store i32 %373, i32* %8, align 4
  %374 = load i32, i32* %8, align 4
  %375 = and i32 %374, 2048
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %385, label %377

377:                                              ; preds = %358
  %378 = load i32, i32* %8, align 4
  %379 = or i32 %378, 2048
  store i32 %379, i32* %8, align 4
  %380 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %381 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %382 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %383 = load i32, i32* %8, align 4
  %384 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %380, i32 %381, i32 %382, i32 %383)
  br label %385

385:                                              ; preds = %377, %358
  br label %386

386:                                              ; preds = %385, %334
  %387 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %388 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = icmp sge i32 %389, 2
  br i1 %390, label %391, label %397

391:                                              ; preds = %386
  %392 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %393 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %394 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %393, i32 1067)
  %395 = or i32 %394, 2048
  %396 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %392, i32 1067, i32 %395)
  br label %397

397:                                              ; preds = %391, %386
  %398 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %399 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %400 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %399, i32 1164)
  %401 = and i32 %400, 61695
  %402 = or i32 %401, 512
  %403 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %398, i32 1164, i32 %402)
  %404 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %405 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 2
  br i1 %407, label %408, label %421

408:                                              ; preds = %397
  %409 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %410 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %411 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %410, i32 1198)
  %412 = and i32 %411, 65280
  %413 = or i32 %412, 127
  %414 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %409, i32 1198, i32 %413)
  %415 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %416 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %417 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %416, i32 1197)
  %418 = and i32 %417, 255
  %419 = or i32 %418, 4864
  %420 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %415, i32 1197, i32 %419)
  br label %437

421:                                              ; preds = %397
  %422 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %423 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = icmp sge i32 %424, 6
  br i1 %425, label %426, label %436

426:                                              ; preds = %421
  %427 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %428 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %427, i32 6659, i32 127)
  %429 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %430 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %429, i32 6658, i32 127)
  %431 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %432 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %433 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %432, i32 1197)
  %434 = and i32 %433, 255
  %435 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %431, i32 1197, i32 %434)
  br label %436

436:                                              ; preds = %426, %421
  br label %437

437:                                              ; preds = %436, %408
  %438 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %439 = call i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev* %438)
  br label %442

440:                                              ; preds = %2
  %441 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %442

442:                                              ; preds = %440, %437, %139, %55, %22
  ret void
}

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @radio_stacksave(i32) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @flip_4bit(i32) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev*) #1

declare dso_local i32 @phy_stacksave(i32) #1

declare dso_local i32 @ilt_stacksave(i32) #1

declare dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write32(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_ilt_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev*) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
