; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_initg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_initg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32, i32, i32, i32, i32, i32*, i64 }

@B43legacy_BFL_PACTRL = common dso_local global i32 0, align 4
@B43legacy_BFL_RSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_phy_initg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_initg(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 1
  store %struct.b43legacy_phy* %6, %struct.b43legacy_phy** %3, align 8
  %7 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = call i32 @b43legacy_phy_initb5(%struct.b43legacy_wldev* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_phy_initb6(%struct.b43legacy_wldev* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %19 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %24 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = call i32 @b43legacy_phy_inita(%struct.b43legacy_wldev* %28)
  br label %30

30:                                               ; preds = %27, %22, %17
  %31 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %32 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %36, i32 2068, i32 0)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %38, i32 2069, i32 0)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %42 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %47 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %46, i32 2065, i32 0)
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %48, i32 21, i32 192)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %52 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 5
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %57 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %56, i32 2065, i32 1024)
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %59 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %58, i32 21, i32 192)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %62 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %60
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %67 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %66, i32 1024)
  %68 = and i32 %67, 255
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %73 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %72, i32 1218, i32 6166)
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %74, i32 1219, i32 34310)
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 5
  br i1 %81, label %82, label %93

82:                                               ; preds = %79, %76
  %83 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %84 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %83, i32 1218, i32 6166)
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %85, i32 1219, i32 32774)
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %89 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %88, i32 1228)
  %90 = and i32 %89, 255
  %91 = or i32 %90, 7936
  %92 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %87, i32 1228, i32 %91)
  br label %93

93:                                               ; preds = %82, %79
  %94 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %95 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 2
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %100 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %99, i32 1150, i32 120)
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %104 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %110 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %109, i32 2049)
  %111 = or i32 %110, 128
  %112 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %108, i32 2049, i32 %111)
  %113 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %115 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %114, i32 1086)
  %116 = or i32 %115, 4
  %117 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %113, i32 1086, i32 %116)
  br label %118

118:                                              ; preds = %107, %102
  %119 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %120 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 2
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %125 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %130 = call i32 @b43legacy_calc_loopback_gain(%struct.b43legacy_wldev* %129)
  br label %131

131:                                              ; preds = %128, %123, %118
  %132 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %133 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 8
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  %137 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %138 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 65535
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %143 = call i32 @b43legacy_radio_init2050(%struct.b43legacy_wldev* %142)
  %144 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %145 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %152

146:                                              ; preds = %136
  %147 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %148 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %149 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %147, i32 120, i32 %150)
  br label %152

152:                                              ; preds = %146, %141
  br label %153

153:                                              ; preds = %152, %131
  %154 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %155 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 65535
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %160 = call i32 @b43legacy_phy_lo_g_measure(%struct.b43legacy_wldev* %159)
  br label %238

161:                                              ; preds = %153
  %162 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %163 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 8272
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %168 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 8
  br i1 %170, label %171, label %182

171:                                              ; preds = %166
  %172 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %173 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %174 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 4
  %177 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %178 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %176, %179
  %181 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %172, i32 82, i32 %180)
  br label %192

182:                                              ; preds = %166, %161
  %183 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %184 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %185 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %184, i32 82)
  %186 = and i32 %185, 65520
  %187 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %188 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %186, %189
  %191 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %183, i32 82, i32 %190)
  br label %192

192:                                              ; preds = %182, %171
  %193 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %194 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sge i32 %195, 6
  br i1 %196, label %197, label %208

197:                                              ; preds = %192
  %198 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %199 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %200 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %199, i32 54)
  %201 = and i32 %200, 4095
  %202 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %203 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 12
  %206 = or i32 %201, %205
  %207 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %198, i32 54, i32 %206)
  br label %208

208:                                              ; preds = %197, %192
  %209 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %210 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %209, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @B43legacy_BFL_PACTRL, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %208
  %221 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %222 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %221, i32 46, i32 32885)
  br label %226

223:                                              ; preds = %208
  %224 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %225 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %224, i32 46, i32 32895)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %228 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %229, 2
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %233 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %232, i32 47, i32 257)
  br label %237

234:                                              ; preds = %226
  %235 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %236 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %235, i32 47, i32 514)
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237, %158
  %239 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %240 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %239, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %245 = call i32 @b43legacy_phy_lo_adjust(%struct.b43legacy_wldev* %244, i32 0)
  %246 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %247 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %246, i32 2063, i32 32888)
  br label %248

248:                                              ; preds = %243, %238
  %249 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %250 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %249, i32 0, i32 0
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @B43legacy_BFL_RSSI, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %248
  %261 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %262 = call i32 @b43legacy_nrssi_hw_update(%struct.b43legacy_wldev* %261, i32 65535)
  %263 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %264 = call i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev* %263)
  br label %306

265:                                              ; preds = %248
  %266 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %267 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %266, i32 0, i32 7
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %265
  %271 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %272 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp sge i32 %273, 2
  br i1 %274, label %275, label %305

275:                                              ; preds = %270, %265
  %276 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %277 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %276, i32 0, i32 6
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, -1000
  br i1 %281, label %282, label %293

282:                                              ; preds = %275
  %283 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %284 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %283, i32 0, i32 6
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, -1000
  %289 = zext i1 %288 to i32
  %290 = call i32 @B43legacy_WARN_ON(i32 %289)
  %291 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %292 = call i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev* %291)
  br label %304

293:                                              ; preds = %275
  %294 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %295 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, -1000
  %300 = zext i1 %299 to i32
  %301 = call i32 @B43legacy_WARN_ON(i32 %300)
  %302 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %303 = call i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev* %302)
  br label %304

304:                                              ; preds = %293, %282
  br label %305

305:                                              ; preds = %304, %270
  br label %306

306:                                              ; preds = %305, %260
  %307 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %308 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 8
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %313 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %312, i32 2053, i32 12848)
  br label %314

314:                                              ; preds = %311, %306
  %315 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %316 = call i32 @b43legacy_phy_init_pctl(%struct.b43legacy_wldev* %315)
  %317 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %318 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %317, i32 0, i32 0
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, 17158
  br i1 %324, label %325, label %345

325:                                              ; preds = %314
  %326 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %327 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %326, i32 0, i32 0
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %345

334:                                              ; preds = %325
  %335 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %336 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %337 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %336, i32 1065)
  %338 = and i32 %337, 49151
  %339 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %335, i32 1065, i32 %338)
  %340 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %341 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %342 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %341, i32 1219)
  %343 = and i32 %342, 32767
  %344 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %340, i32 1219, i32 %343)
  br label %345

345:                                              ; preds = %334, %325, %314
  ret void
}

declare dso_local i32 @b43legacy_phy_initb5(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_initb6(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_inita(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_calc_loopback_gain(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_init2050(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_lo_g_measure(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_lo_adjust(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_nrssi_hw_update(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_init_pctl(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
