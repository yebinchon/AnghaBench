; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_setupg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_setupg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_8__*, %struct.b43legacy_phy }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.b43legacy_phy = type { i64, i32 }

@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4
@B43legacy_ILT_FINEFREQG_SIZE = common dso_local global i32 0, align 4
@b43legacy_ilt_finefreqg = common dso_local global i32* null, align 8
@B43legacy_ILT_NOISEG1_SIZE = common dso_local global i32 0, align 4
@b43legacy_ilt_noiseg1 = common dso_local global i32* null, align 8
@B43legacy_ILT_ROTOR_SIZE = common dso_local global i32 0, align 4
@b43legacy_ilt_rotor = common dso_local global i32* null, align 8
@B43legacy_ILT_NOISEG2_SIZE = common dso_local global i32 0, align 4
@b43legacy_ilt_noiseg2 = common dso_local global i32* null, align 8
@B43legacy_ILT_NOISESCALEG_SIZE = common dso_local global i32 0, align 4
@b43legacy_ilt_noisescaleg1 = common dso_local global i32* null, align 8
@b43legacy_ilt_noisescaleg3 = common dso_local global i32* null, align 8
@b43legacy_ilt_noisescaleg2 = common dso_local global i32* null, align 8
@B43legacy_ILT_SIGMASQR_SIZE = common dso_local global i32 0, align 4
@b43legacy_ilt_sigmasqr1 = common dso_local global i32* null, align 8
@b43legacy_ilt_sigmasqr2 = common dso_local global i32* null, align 8
@B43legacy_ILT_RETARD_SIZE = common dso_local global i32 0, align 4
@b43legacy_ilt_retard = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_phy_setupg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_setupg(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 1
  store %struct.b43legacy_phy* %6, %struct.b43legacy_phy** %3, align 8
  %7 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @B43legacy_BUG_ON(i32 %12)
  %14 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %15 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %87

18:                                               ; preds = %1
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %19, i32 1030, i32 20249)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %25 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %23, i32 %24)
  %26 = and i32 %25, 64575
  %27 = or i32 %26, 832
  %28 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %21, i32 %22, i32 %27)
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %30 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %29, i32 1068, i32 90)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %32 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %31, i32 1063, i32 26)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %47, %18
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @B43legacy_ILT_FINEFREQG_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 22528, %39
  %41 = load i32*, i32** @b43legacy_ilt_finefreqg, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %38, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %33

50:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @B43legacy_ILT_NOISEG1_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 6144, %57
  %59 = load i32*, i32** @b43legacy_ilt_noiseg1, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %56, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %51

68:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @B43legacy_ILT_ROTOR_SIZE, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 8192, %75
  %77 = load i32*, i32** @b43legacy_ilt_rotor, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @b43legacy_ilt_write32(%struct.b43legacy_wldev* %74, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %69

86:                                               ; preds = %69
  br label %149

87:                                               ; preds = %1
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %89 = call i32 @b43legacy_nrssi_hw_write(%struct.b43legacy_wldev* %88, i32 47768, i32 30292)
  %90 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %91 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %96 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %95, i32 1216, i32 6241)
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %98 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %97, i32 1217, i32 625)
  br label %112

99:                                               ; preds = %87
  %100 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %101 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %106 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %105, i32 1216, i32 152)
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %107, i32 1217, i32 112)
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %110 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %109, i32 1225, i32 128)
  br label %111

111:                                              ; preds = %104, %99
  br label %112

112:                                              ; preds = %111, %94
  %113 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %115 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %114, i32 1067)
  %116 = or i32 %115, 2048
  %117 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %113, i32 1067, i32 %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %127, %112
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %119, 64
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 16384, %123
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %122, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %118

130:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %145, %130
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @B43legacy_ILT_NOISEG2_SIZE, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 6144, %137
  %139 = load i32*, i32** @b43legacy_ilt_noiseg2, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %136, i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %131

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %86
  %150 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %151 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp sle i32 %152, 2
  br i1 %153, label %154, label %173

154:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %169, %154
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @B43legacy_ILT_NOISESCALEG_SIZE, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 5120, %161
  %163 = load i32*, i32** @b43legacy_ilt_noisescaleg1, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %160, i32 %162, i32 %167)
  br label %169

169:                                              ; preds = %159
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %155

172:                                              ; preds = %155
  br label %222

173:                                              ; preds = %149
  %174 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %175 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %176, 7
  br i1 %177, label %178, label %202

178:                                              ; preds = %173
  %179 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %180 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %179, i32 1097)
  %181 = and i32 %180, 512
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %198, %183
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @B43legacy_ILT_NOISESCALEG_SIZE, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %184
  %189 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 5120, %190
  %192 = load i32*, i32** @b43legacy_ilt_noisescaleg3, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %189, i32 %191, i32 %196)
  br label %198

198:                                              ; preds = %188
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %184

201:                                              ; preds = %184
  br label %221

202:                                              ; preds = %178, %173
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %217, %202
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @B43legacy_ILT_NOISESCALEG_SIZE, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %203
  %208 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 5120, %209
  %211 = load i32*, i32** @b43legacy_ilt_noisescaleg2, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %208, i32 %210, i32 %215)
  br label %217

217:                                              ; preds = %207
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %4, align 4
  br label %203

220:                                              ; preds = %203
  br label %221

221:                                              ; preds = %220, %201
  br label %222

222:                                              ; preds = %221, %172
  %223 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %224 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %246

227:                                              ; preds = %222
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %242, %227
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @B43legacy_ILT_SIGMASQR_SIZE, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %228
  %233 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 20480, %234
  %236 = load i32*, i32** @b43legacy_ilt_sigmasqr1, align 8
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %233, i32 %235, i32 %240)
  br label %242

242:                                              ; preds = %232
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %4, align 4
  br label %228

245:                                              ; preds = %228
  br label %276

246:                                              ; preds = %222
  %247 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %248 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp sgt i32 %249, 2
  br i1 %250, label %251, label %275

251:                                              ; preds = %246
  %252 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %253 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp sle i32 %254, 8
  br i1 %255, label %256, label %275

256:                                              ; preds = %251
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %271, %256
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @B43legacy_ILT_SIGMASQR_SIZE, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 20480, %263
  %265 = load i32*, i32** @b43legacy_ilt_sigmasqr2, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %262, i32 %264, i32 %269)
  br label %271

271:                                              ; preds = %261
  %272 = load i32, i32* %4, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %4, align 4
  br label %257

274:                                              ; preds = %257
  br label %275

275:                                              ; preds = %274, %251, %246
  br label %276

276:                                              ; preds = %275, %245
  %277 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %278 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %343

281:                                              ; preds = %276
  store i32 0, i32* %4, align 4
  br label %282

282:                                              ; preds = %296, %281
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @B43legacy_ILT_RETARD_SIZE, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %299

286:                                              ; preds = %282
  %287 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %288 = load i32, i32* %4, align 4
  %289 = add nsw i32 9216, %288
  %290 = load i32*, i32** @b43legacy_ilt_retard, align 8
  %291 = load i32, i32* %4, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @b43legacy_ilt_write32(%struct.b43legacy_wldev* %287, i32 %289, i32 %294)
  br label %296

296:                                              ; preds = %286
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %4, align 4
  br label %282

299:                                              ; preds = %282
  store i32 4, i32* %4, align 4
  br label %300

300:                                              ; preds = %308, %299
  %301 = load i32, i32* %4, align 4
  %302 = icmp slt i32 %301, 20
  br i1 %302, label %303, label %311

303:                                              ; preds = %300
  %304 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %305 = load i32, i32* %4, align 4
  %306 = add nsw i32 21504, %305
  %307 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %304, i32 %306, i32 32)
  br label %308

308:                                              ; preds = %303
  %309 = load i32, i32* %4, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %4, align 4
  br label %300

311:                                              ; preds = %300
  %312 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %313 = call i32 @b43legacy_phy_agcsetup(%struct.b43legacy_wldev* %312)
  %314 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %315 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %338

317:                                              ; preds = %311
  %318 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %319 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %318, i32 0, i32 0
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 1046
  br i1 %326, label %327, label %338

327:                                              ; preds = %317
  %328 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %329 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %328, i32 0, i32 0
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 23
  br i1 %336, label %337, label %338

337:                                              ; preds = %327
  br label %395

338:                                              ; preds = %327, %317, %311
  %339 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %340 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %339, i32 20481, i32 2)
  %341 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %342 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %341, i32 20482, i32 1)
  br label %395

343:                                              ; preds = %276
  store i32 0, i32* %4, align 4
  br label %344

344:                                              ; preds = %352, %343
  %345 = load i32, i32* %4, align 4
  %346 = icmp sle i32 %345, 32
  br i1 %346, label %347, label %355

347:                                              ; preds = %344
  %348 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %349 = load i32, i32* %4, align 4
  %350 = add nsw i32 4096, %349
  %351 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %348, i32 %350, i32 2080)
  br label %352

352:                                              ; preds = %347
  %353 = load i32, i32* %4, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %4, align 4
  br label %344

355:                                              ; preds = %344
  %356 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %357 = call i32 @b43legacy_phy_agcsetup(%struct.b43legacy_wldev* %356)
  %358 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %359 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %358, i32 1024)
  %360 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %361 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %360, i32 1027, i32 4096)
  %362 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %363 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %362, i32 15362, i32 15)
  %364 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %365 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %364, i32 15363, i32 20)
  %366 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %367 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %390

369:                                              ; preds = %355
  %370 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %371 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %370, i32 0, i32 0
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = icmp eq i32 %377, 1046
  br i1 %378, label %379, label %390

379:                                              ; preds = %369
  %380 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %381 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %380, i32 0, i32 0
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, 23
  br i1 %388, label %389, label %390

389:                                              ; preds = %379
  br label %395

390:                                              ; preds = %379, %369, %355
  %391 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %392 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %391, i32 1025, i32 2)
  %393 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %394 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %393, i32 1026, i32 1)
  br label %395

395:                                              ; preds = %337, %389, %390, %338
  ret void
}

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_ilt_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_ilt_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_nrssi_hw_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_agcsetup(%struct.b43legacy_wldev*) #1

declare dso_local i64 @is_bcm_board_vendor(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
