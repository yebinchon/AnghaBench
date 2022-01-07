; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_agcsetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_agcsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_phy_agcsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_agcsetup(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 0
  store %struct.b43legacy_phy* %6, %struct.b43legacy_phy** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 19456, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %13, i32 %14, i32 254)
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %16, i32 %18, i32 13)
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %20, i32 %22, i32 19)
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 3
  %27 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %24, i32 %26, i32 25)
  %28 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %12
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %34 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %33, i32 6144, i32 10000)
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %36 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %35, i32 6145, i32 39811)
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %38 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %37, i32 6146, i32 39811)
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %40 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %39, i32 6147, i32 3981)
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %42 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %41, i32 1109, i32 4)
  br label %43

43:                                               ; preds = %32, %12
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %46 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %45, i32 1189)
  %47 = and i32 %46, 255
  %48 = or i32 %47, 22272
  %49 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %44, i32 1189, i32 %48)
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %51, i32 1050)
  %53 = and i32 %52, 65408
  %54 = or i32 %53, 15
  %55 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %50, i32 1050, i32 %54)
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %58 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %57, i32 1050)
  %59 = and i32 %58, 49279
  %60 = or i32 %59, 11136
  %61 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %56, i32 1050, i32 %60)
  %62 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %64 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %63, i32 1164)
  %65 = and i32 %64, 61695
  %66 = or i32 %65, 768
  %67 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %62, i32 1164, i32 %66)
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %70 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %69, i32 122)
  %71 = or i32 %70, 8
  %72 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %68, i32 122, i32 %71)
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %74, i32 1184)
  %76 = and i32 %75, 65520
  %77 = or i32 %76, 8
  %78 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %73, i32 1184, i32 %77)
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %81 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %80, i32 1185)
  %82 = and i32 %81, 61695
  %83 = or i32 %82, 1536
  %84 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %79, i32 1185, i32 %83)
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %86, i32 1186)
  %88 = and i32 %87, 61695
  %89 = or i32 %88, 1792
  %90 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %85, i32 1186, i32 %89)
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %92, i32 1184)
  %94 = and i32 %93, 61695
  %95 = or i32 %94, 256
  %96 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %91, i32 1184, i32 %95)
  %97 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %98 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %43
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %104 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %103, i32 1186)
  %105 = and i32 %104, 65520
  %106 = or i32 %105, 7
  %107 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %102, i32 1186, i32 %106)
  br label %108

108:                                              ; preds = %101, %43
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %110 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %111 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %110, i32 1160)
  %112 = and i32 %111, 65280
  %113 = or i32 %112, 28
  %114 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %109, i32 1160, i32 %113)
  %115 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %116 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %117 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %116, i32 1160)
  %118 = and i32 %117, 49407
  %119 = or i32 %118, 512
  %120 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %115, i32 1160, i32 %119)
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %122 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %123 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %122, i32 1174)
  %124 = and i32 %123, 65280
  %125 = or i32 %124, 28
  %126 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %121, i32 1174, i32 %125)
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %128 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %129 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %128, i32 1161)
  %130 = and i32 %129, 65280
  %131 = or i32 %130, 32
  %132 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %127, i32 1161, i32 %131)
  %133 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %134 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %135 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %134, i32 1161)
  %136 = and i32 %135, 49407
  %137 = or i32 %136, 512
  %138 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %133, i32 1161, i32 %137)
  %139 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %140 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %141 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %140, i32 1154)
  %142 = and i32 %141, 65280
  %143 = or i32 %142, 46
  %144 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %139, i32 1154, i32 %143)
  %145 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %146 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %147 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %146, i32 1174)
  %148 = and i32 %147, 255
  %149 = or i32 %148, 6656
  %150 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %145, i32 1174, i32 %149)
  %151 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %152 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %153 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %152, i32 1153)
  %154 = and i32 %153, 65280
  %155 = or i32 %154, 40
  %156 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %151, i32 1153, i32 %155)
  %157 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %158 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %159 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %158, i32 1153)
  %160 = and i32 %159, 255
  %161 = or i32 %160, 11264
  %162 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %157, i32 1153, i32 %161)
  %163 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %164 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %176

167:                                              ; preds = %108
  %168 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %169 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %168, i32 1072, i32 2347)
  %170 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %171 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %172 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %171, i32 1051)
  %173 = and i32 %172, 65505
  %174 = or i32 %173, 2
  %175 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %170, i32 1051, i32 %174)
  br label %190

176:                                              ; preds = %108
  %177 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %178 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %179 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %178, i32 1051)
  %180 = and i32 %179, 65505
  %181 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %177, i32 1051, i32 %180)
  %182 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %183 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %182, i32 1055, i32 10362)
  %184 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %185 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %186 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %185, i32 1056)
  %187 = and i32 %186, 65520
  %188 = or i32 %187, 4
  %189 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %184, i32 1056, i32 %188)
  br label %190

190:                                              ; preds = %176, %167
  %191 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %192 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 2
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %197 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %196, i32 1058, i32 10362)
  %198 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %199 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %200 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %199, i32 1056)
  %201 = and i32 %200, 4095
  %202 = or i32 %201, 12288
  %203 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %198, i32 1056, i32 %202)
  br label %204

204:                                              ; preds = %195, %190
  %205 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %206 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %207 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %206, i32 1192)
  %208 = and i32 %207, 32896
  %209 = or i32 %208, 30836
  %210 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %205, i32 1192, i32 %209)
  %211 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %212 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %211, i32 1166, i32 7168)
  %213 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %214 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %234

217:                                              ; preds = %204
  %218 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %219 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %220 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %219, i32 1195)
  %221 = and i32 %220, 61695
  %222 = or i32 %221, 1536
  %223 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %218, i32 1195, i32 %222)
  %224 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %225 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %224, i32 1163, i32 94)
  %226 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %227 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %228 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %227, i32 1164)
  %229 = and i32 %228, 65280
  %230 = or i32 %229, 30
  %231 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %226, i32 1164, i32 %230)
  %232 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %233 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %232, i32 1165, i32 2)
  br label %234

234:                                              ; preds = %217, %204
  %235 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 2048
  %238 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %235, i32 %237, i32 0)
  %239 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 2049
  %242 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %239, i32 %241, i32 7)
  %243 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %244 = load i32, i32* %4, align 4
  %245 = add nsw i32 %244, 2050
  %246 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %243, i32 %245, i32 16)
  %247 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 2051
  %250 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %247, i32 %249, i32 28)
  %251 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %252 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp sge i32 %253, 6
  br i1 %254, label %255, label %266

255:                                              ; preds = %234
  %256 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %257 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %258 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %257, i32 1062)
  %259 = and i32 %258, 65532
  %260 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %256, i32 1062, i32 %259)
  %261 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %263 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %262, i32 1062)
  %264 = and i32 %263, 61439
  %265 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %261, i32 1062, i32 %264)
  br label %266

266:                                              ; preds = %255, %234
  ret void
}

declare dso_local i32 @b43legacy_ilt_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
