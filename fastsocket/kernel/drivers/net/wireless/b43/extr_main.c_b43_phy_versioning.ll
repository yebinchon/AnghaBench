; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_phy_versioning.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_phy_versioning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__*, %struct.b43_phy }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.b43_phy = type { i32, i32, i32, i32, i32, i32 }

@B43_MMIO_PHY_VER = common dso_local global i32 0, align 4
@B43_PHYVER_ANALOG = common dso_local global i32 0, align 4
@B43_PHYVER_ANALOG_SHIFT = common dso_local global i32 0, align 4
@B43_PHYVER_TYPE = common dso_local global i32 0, align 4
@B43_PHYVER_TYPE_SHIFT = common dso_local global i32 0, align 4
@B43_PHYVER_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"FOUND UNSUPPORTED PHY (Analog %u, Type %d (%s), Revision %u)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Found PHY: Analog %u, Type %d (%s), Revision %u\0A\00", align 1
@B43_MMIO_RADIO24_CONTROL = common dso_local global i32 0, align 4
@B43_MMIO_RADIO24_DATA = common dso_local global i32 0, align 4
@B43_MMIO_RADIO_CONTROL = common dso_local global i32 0, align 4
@B43_RADIOCTL_ID = common dso_local global i32 0, align 4
@B43_MMIO_RADIO_DATA_LOW = common dso_local global i32 0, align 4
@B43_MMIO_RADIO_DATA_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"FOUND UNSUPPORTED RADIO (Manuf 0x%X, Version 0x%X, Revision %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Found Radio: Manuf 0x%X, Version 0x%X, Revision %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_phy_versioning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_versioning(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 2
  store %struct.b43_phy* %15, %struct.b43_phy** %4, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = load i32, i32* @B43_MMIO_PHY_VER, align 4
  %18 = call i32 @b43_read16(%struct.b43_wldev* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @B43_PHYVER_ANALOG, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @B43_PHYVER_ANALOG_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @B43_PHYVER_TYPE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @B43_PHYVER_TYPE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @B43_PHYVER_VERSION, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %57 [
    i32 134, label %33
    i32 133, label %38
    i32 132, label %52
  ]

33:                                               ; preds = %1
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %58

38:                                               ; preds = %1
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 4
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 6
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 7
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %47, %44, %41, %38
  br label %58

52:                                               ; preds = %1
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 9
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %58

57:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %56, %51, %37
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %63 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @b43_phy_name(%struct.b43_wldev* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, i32, i32, i32, ...) @b43err(i32 %64, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %69, i32 %70)
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %269

74:                                               ; preds = %58
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %76 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @b43_phy_name(%struct.b43_wldev* %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @b43info(i32 %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79, i32 %82, i32 %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 24
  br i1 %90, label %91, label %119

91:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %106, %91
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %97 = load i32, i32* @B43_MMIO_RADIO24_CONTROL, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @b43_write16(%struct.b43_wldev* %96, i32 %97, i32 %98)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = load i32, i32* @B43_MMIO_RADIO24_DATA, align 4
  %102 = call i32 @b43_read16(%struct.b43_wldev* %100, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %92

109:                                              ; preds = %92
  store i32 383, i32* %9, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %112, %114
  store i32 %115, i32* %10, align 4
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 15
  store i32 %118, i32* %11, align 4
  br label %172

119:                                              ; preds = %74
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %121 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 17175
  br i1 %125, label %126, label %145

126:                                              ; preds = %119
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %128 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i32 839188863, i32* %5, align 4
  br label %144

134:                                              ; preds = %126
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 1107624319, i32* %5, align 4
  br label %143

142:                                              ; preds = %134
  store i32 1376059775, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %141
  br label %144

144:                                              ; preds = %143, %133
  br label %163

145:                                              ; preds = %119
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %147 = load i32, i32* @B43_MMIO_RADIO_CONTROL, align 4
  %148 = load i32, i32* @B43_RADIOCTL_ID, align 4
  %149 = call i32 @b43_write16(%struct.b43_wldev* %146, i32 %147, i32 %148)
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %151 = load i32, i32* @B43_MMIO_RADIO_DATA_LOW, align 4
  %152 = call i32 @b43_read16(%struct.b43_wldev* %150, i32 %151)
  store i32 %152, i32* %5, align 4
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %154 = load i32, i32* @B43_MMIO_RADIO_CONTROL, align 4
  %155 = load i32, i32* @B43_RADIOCTL_ID, align 4
  %156 = call i32 @b43_write16(%struct.b43_wldev* %153, i32 %154, i32 %155)
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %158 = load i32, i32* @B43_MMIO_RADIO_DATA_HIGH, align 4
  %159 = call i32 @b43_read16(%struct.b43_wldev* %157, i32 %158)
  %160 = shl i32 %159, 16
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %145, %144
  %164 = load i32, i32* %5, align 4
  %165 = and i32 %164, 4095
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %5, align 4
  %167 = and i32 %166, 268431360
  %168 = ashr i32 %167, 12
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %5, align 4
  %170 = and i32 %169, -268435456
  %171 = lshr i32 %170, 28
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %163, %109
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 383
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 1, i32* %12, align 4
  br label %176

176:                                              ; preds = %175, %172
  %177 = load i32, i32* %7, align 4
  switch i32 %177, label %228 [
    i32 134, label %178
    i32 133, label %191
    i32 132, label %197
    i32 128, label %202
    i32 129, label %210
    i32 131, label %218
    i32 130, label %223
  ]

178:                                              ; preds = %176
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 8288
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 1, i32* %12, align 4
  br label %182

182:                                              ; preds = %181, %178
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 1, i32* %12, align 4
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 383
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 1, i32* %12, align 4
  br label %190

190:                                              ; preds = %189, %186
  br label %230

191:                                              ; preds = %176
  %192 = load i32, i32* %10, align 4
  %193 = and i32 %192, 65520
  %194 = icmp ne i32 %193, 8272
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 1, i32* %12, align 4
  br label %196

196:                                              ; preds = %195, %191
  br label %230

197:                                              ; preds = %176
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 8272
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 1, i32* %12, align 4
  br label %201

201:                                              ; preds = %200, %197
  br label %230

202:                                              ; preds = %176
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 8277
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 8278
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 1, i32* %12, align 4
  br label %209

209:                                              ; preds = %208, %205, %202
  br label %230

210:                                              ; preds = %176
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 8290
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 8291
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 1, i32* %12, align 4
  br label %217

217:                                              ; preds = %216, %213, %210
  br label %230

218:                                              ; preds = %176
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 8281
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 1, i32* %12, align 4
  br label %222

222:                                              ; preds = %221, %218
  br label %230

223:                                              ; preds = %176
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 8292
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 1, i32* %12, align 4
  br label %227

227:                                              ; preds = %226, %223
  br label %230

228:                                              ; preds = %176
  %229 = call i32 @B43_WARN_ON(i32 1)
  br label %230

230:                                              ; preds = %228, %227, %222, %217, %209, %201, %196, %190
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %235 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %11, align 4
  %240 = call i32 (i32, i8*, i32, i32, i32, ...) @b43err(i32 %236, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* @EOPNOTSUPP, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %2, align 4
  br label %269

243:                                              ; preds = %230
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %245 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @b43dbg(i32 %246, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %253 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %256 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %11, align 4
  %258 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %259 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %6, align 4
  %261 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %262 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %7, align 4
  %264 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %265 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %268 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %267, i32 0, i32 5
  store i32 %266, i32* %268, align 4
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %243, %233, %61
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @b43_phy_name(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
