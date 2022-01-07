; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_phy_initb6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_phy_initb6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_phy = type { i32, i64, i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i32 }

@B43_HF_TSSIRPSMW = common dso_local global i32 0, align 4
@B43_BFL_ALTIQ = common dso_local global i32 0, align 4
@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_PHYTYPE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_initb6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_initb6(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 1
  store %struct.b43_phy* %9, %struct.b43_phy** %3, align 8
  %10 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 4
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  store %struct.b43_phy_g* %12, %struct.b43_phy_g** %4, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = call i32 @b43_phy_write(%struct.b43_wldev* %13, i32 62, i32 33146)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @b43_radio_read16(%struct.b43_wldev* %16, i32 122)
  %18 = or i32 %17, 88
  %19 = call i32 @b43_radio_write16(%struct.b43_wldev* %15, i32 122, i32 %18)
  %20 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %26 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %54

29:                                               ; preds = %24, %1
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i32 @b43_radio_write16(%struct.b43_wldev* %30, i32 81, i32 55)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_radio_write16(%struct.b43_wldev* %32, i32 82, i32 112)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @b43_radio_write16(%struct.b43_wldev* %34, i32 83, i32 179)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @b43_radio_write16(%struct.b43_wldev* %36, i32 84, i32 155)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_radio_write16(%struct.b43_wldev* %38, i32 90, i32 136)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_radio_write16(%struct.b43_wldev* %40, i32 91, i32 136)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = call i32 @b43_radio_write16(%struct.b43_wldev* %42, i32 93, i32 136)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = call i32 @b43_radio_write16(%struct.b43_wldev* %44, i32 94, i32 136)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @b43_radio_write16(%struct.b43_wldev* %46, i32 125, i32 136)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = call i32 @b43_hf_read(%struct.b43_wldev* %49)
  %51 = load i32, i32* @B43_HF_TSSIRPSMW, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @b43_hf_write(%struct.b43_wldev* %48, i32 %52)
  br label %54

54:                                               ; preds = %29, %24
  %55 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %56 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %61 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 7
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ true, %54 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @B43_WARN_ON(i32 %66)
  %68 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %69 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %72, label %116

72:                                               ; preds = %64
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = call i32 @b43_radio_write16(%struct.b43_wldev* %73, i32 81, i32 0)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = call i32 @b43_radio_write16(%struct.b43_wldev* %75, i32 82, i32 64)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @b43_radio_write16(%struct.b43_wldev* %77, i32 83, i32 183)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = call i32 @b43_radio_write16(%struct.b43_wldev* %79, i32 84, i32 152)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = call i32 @b43_radio_write16(%struct.b43_wldev* %81, i32 90, i32 136)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @b43_radio_write16(%struct.b43_wldev* %83, i32 91, i32 107)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = call i32 @b43_radio_write16(%struct.b43_wldev* %85, i32 92, i32 15)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @B43_BFL_ALTIQ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %72
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = call i32 @b43_radio_write16(%struct.b43_wldev* %98, i32 93, i32 250)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = call i32 @b43_radio_write16(%struct.b43_wldev* %100, i32 94, i32 216)
  br label %107

102:                                              ; preds = %72
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = call i32 @b43_radio_write16(%struct.b43_wldev* %103, i32 93, i32 245)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = call i32 @b43_radio_write16(%struct.b43_wldev* %105, i32 94, i32 184)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = call i32 @b43_radio_write16(%struct.b43_wldev* %108, i32 115, i32 3)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = call i32 @b43_radio_write16(%struct.b43_wldev* %110, i32 125, i32 168)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = call i32 @b43_radio_write16(%struct.b43_wldev* %112, i32 124, i32 1)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = call i32 @b43_radio_write16(%struct.b43_wldev* %114, i32 126, i32 8)
  br label %116

116:                                              ; preds = %107, %64
  store i32 7711, i32* %6, align 4
  store i32 136, i32* %5, align 4
  br label %117

117:                                              ; preds = %127, %116
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 152
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @b43_phy_write(%struct.b43_wldev* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 514
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %117

130:                                              ; preds = %117
  store i32 15935, i32* %6, align 4
  store i32 152, i32* %5, align 4
  br label %131

131:                                              ; preds = %141, %130
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %132, 168
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @b43_phy_write(%struct.b43_wldev* %135, i32 %136, i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 514
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %131

144:                                              ; preds = %131
  store i32 8480, i32* %6, align 4
  store i32 168, i32* %5, align 4
  br label %145

145:                                              ; preds = %156, %144
  %146 = load i32, i32* %5, align 4
  %147 = icmp slt i32 %146, 200
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = and i32 %151, 16191
  %153 = call i32 @b43_phy_write(%struct.b43_wldev* %149, i32 %150, i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 514
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %145

159:                                              ; preds = %145
  %160 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %161 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @B43_PHYTYPE_G, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %167 = call i32 @b43_radio_set(%struct.b43_wldev* %166, i32 122, i32 32)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = call i32 @b43_radio_set(%struct.b43_wldev* %168, i32 81, i32 4)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = call i32 @b43_phy_set(%struct.b43_wldev* %170, i32 2050, i32 256)
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %173 = call i32 @b43_phy_set(%struct.b43_wldev* %172, i32 1067, i32 8192)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = call i32 @b43_phy_write(%struct.b43_wldev* %174, i32 91, i32 0)
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %177 = call i32 @b43_phy_write(%struct.b43_wldev* %176, i32 92, i32 0)
  br label %178

178:                                              ; preds = %165, %159
  %179 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %180 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp sge i32 %182, 8
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %185, i32 1, i32 0)
  br label %190

187:                                              ; preds = %178
  %188 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %189 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %188, i32 13, i32 0)
  br label %190

190:                                              ; preds = %187, %184
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %192 = call i32 @b43_radio_write16(%struct.b43_wldev* %191, i32 80, i32 32)
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %194 = call i32 @b43_radio_write16(%struct.b43_wldev* %193, i32 80, i32 35)
  %195 = call i32 @udelay(i32 40)
  %196 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %197 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %198, 6
  br i1 %199, label %205, label %200

200:                                              ; preds = %190
  %201 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %202 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %205, label %213

205:                                              ; preds = %200, %190
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %208 = call i32 @b43_radio_read16(%struct.b43_wldev* %207, i32 124)
  %209 = or i32 %208, 2
  %210 = call i32 @b43_radio_write16(%struct.b43_wldev* %206, i32 124, i32 %209)
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = call i32 @b43_radio_write16(%struct.b43_wldev* %211, i32 80, i32 32)
  br label %213

213:                                              ; preds = %205, %200
  %214 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %215 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp sle i32 %216, 2
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %220 = call i32 @b43_radio_write16(%struct.b43_wldev* %219, i32 124, i32 32)
  %221 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %222 = call i32 @b43_radio_write16(%struct.b43_wldev* %221, i32 90, i32 112)
  %223 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %224 = call i32 @b43_radio_write16(%struct.b43_wldev* %223, i32 91, i32 123)
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %226 = call i32 @b43_radio_write16(%struct.b43_wldev* %225, i32 92, i32 176)
  br label %227

227:                                              ; preds = %218, %213
  %228 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %229 = call i32 @b43_radio_maskset(%struct.b43_wldev* %228, i32 122, i32 248, i32 7)
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %230, i32 %231, i32 0)
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %234 = call i32 @b43_phy_write(%struct.b43_wldev* %233, i32 20, i32 512)
  %235 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %236 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp sge i32 %237, 6
  br i1 %238, label %239, label %242

239:                                              ; preds = %227
  %240 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %241 = call i32 @b43_phy_write(%struct.b43_wldev* %240, i32 42, i32 35010)
  br label %245

242:                                              ; preds = %227
  %243 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %244 = call i32 @b43_phy_write(%struct.b43_wldev* %243, i32 42, i32 35520)
  br label %245

245:                                              ; preds = %242, %239
  %246 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %247 = call i32 @b43_phy_write(%struct.b43_wldev* %246, i32 56, i32 1640)
  %248 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %249 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %250 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %249, i32 0, i32 2
  %251 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %252 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %251, i32 0, i32 1
  %253 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %254 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @b43_set_txpower_g(%struct.b43_wldev* %248, i32* %250, i32* %252, i32 %255)
  %257 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %258 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp sle i32 %259, 5
  br i1 %260, label %261, label %264

261:                                              ; preds = %245
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %263 = call i32 @b43_phy_maskset(%struct.b43_wldev* %262, i32 93, i32 65408, i32 3)
  br label %264

264:                                              ; preds = %261, %245
  %265 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %266 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp sle i32 %267, 2
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %271 = call i32 @b43_radio_write16(%struct.b43_wldev* %270, i32 93, i32 13)
  br label %272

272:                                              ; preds = %269, %264
  %273 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %274 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 4
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %279 = call i32 @b43_write16(%struct.b43_wldev* %278, i32 996, i32 9)
  %280 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %281 = call i32 @b43_phy_mask(%struct.b43_wldev* %280, i32 97, i32 4095)
  br label %285

282:                                              ; preds = %272
  %283 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %284 = call i32 @b43_phy_maskset(%struct.b43_wldev* %283, i32 2, i32 65472, i32 4)
  br label %285

285:                                              ; preds = %282, %277
  %286 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %287 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @B43_PHYTYPE_B, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = call i32 @B43_WARN_ON(i32 1)
  br label %303

293:                                              ; preds = %285
  %294 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %295 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @B43_PHYTYPE_G, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %301 = call i32 @b43_write16(%struct.b43_wldev* %300, i32 998, i32 0)
  br label %302

302:                                              ; preds = %299, %293
  br label %303

303:                                              ; preds = %302, %291
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_gphy_channel_switch(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_set_txpower_g(%struct.b43_wldev*, i32*, i32*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
