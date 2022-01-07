; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_calc_nrssi_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_calc_nrssi_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32, i32, i32*, i32, i32, i32, i32 }

@B43legacy_BFL_RSSI = common dso_local global i32 0, align 4
@B43legacy_RADIO_INTERFMODE_NONWLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 1
  store %struct.b43legacy_phy* %10, %struct.b43legacy_phy** %3, align 8
  %11 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %249 [
    i32 129, label %14
    i32 128, label %101
  ]

14:                                               ; preds = %1
  %15 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %16 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 8272
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %251

20:                                               ; preds = %14
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @B43legacy_BFL_RSSI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %251

33:                                               ; preds = %20
  %34 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %35 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 6
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %40 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %45 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %43, %48
  %50 = mul nsw i32 %49, 32
  store i32 %50, i32* %4, align 4
  %51 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %52 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = mul nsw i32 20, %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sdiv i32 %60, 40
  store i32 %61, i32* %4, align 4
  br label %69

62:                                               ; preds = %33
  %63 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %64 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 5
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %38
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @clamp_val(i32 %70, i32 0, i32 62)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %73 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %72, i32 32)
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %76, 28
  %78 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %74, i32 32, i32 %77)
  %79 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %80 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 6
  br i1 %82, label %83, label %100

83:                                               ; preds = %69
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %85 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %84, i32 135, i32 3597)
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %86, i32 134, i32 3083)
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %89 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %88, i32 133, i32 2569)
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %91 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %90, i32 132, i32 2056)
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %92, i32 131, i32 2056)
  %94 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %95 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %94, i32 130, i32 1540)
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %97 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %96, i32 129, i32 770)
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %99 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %98, i32 128, i32 256)
  br label %100

100:                                              ; preds = %83, %69
  br label %251

101:                                              ; preds = %1
  %102 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %103 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @B43legacy_BFL_RSSI, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %144, label %118

118:                                              ; preds = %106, %101
  %119 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %120 = call i32 @b43legacy_nrssi_hw_read(%struct.b43legacy_wldev* %119, i32 32)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp sge i32 %121, 32
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %124, 64
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %131 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %132 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %131, i32 1162)
  %133 = and i32 %132, 61440
  %134 = or i32 %133, 2539
  %135 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %130, i32 1162, i32 %134)
  br label %143

136:                                              ; preds = %126
  %137 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %138 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %139 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %138, i32 1162)
  %140 = and i32 %139, 61440
  %141 = or i32 %140, 2797
  %142 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %137, i32 1162, i32 %141)
  br label %143

143:                                              ; preds = %136, %129
  br label %248

144:                                              ; preds = %106
  %145 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %146 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @B43legacy_RADIO_INTERFMODE_NONWLAN, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 14, i32* %5, align 4
  store i32 10, i32* %6, align 4
  br label %164

151:                                              ; preds = %144
  %152 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %153 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %158 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 19, i32* %5, align 4
  store i32 18, i32* %6, align 4
  br label %163

162:                                              ; preds = %156, %151
  store i32 14, i32* %5, align 4
  store i32 17, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %161
  br label %164

164:                                              ; preds = %163, %150
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %167 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %172 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %170, %175
  %177 = mul nsw i32 %165, %176
  store i32 %177, i32* %5, align 4
  %178 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %179 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 6
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp slt i32 %186, 32
  br i1 %187, label %188, label %191

188:                                              ; preds = %164
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 31
  store i32 %190, i32* %5, align 4
  br label %194

191:                                              ; preds = %164
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 32
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* %5, align 4
  %196 = ashr i32 %195, 6
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @clamp_val(i32 %197, i32 -31, i32 31)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %201 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %206 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %204, %209
  %211 = mul nsw i32 %199, %210
  store i32 %211, i32* %6, align 4
  %212 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %213 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 6
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp slt i32 %220, 32
  br i1 %221, label %222, label %225

222:                                              ; preds = %194
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 31
  store i32 %224, i32* %6, align 4
  br label %228

225:                                              ; preds = %194
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 32
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32, i32* %6, align 4
  %230 = ashr i32 %229, 6
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @clamp_val(i32 %231, i32 -31, i32 31)
  store i32 %232, i32* %6, align 4
  %233 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %234 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %233, i32 1162)
  %235 = and i32 %234, 61440
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %6, align 4
  %237 = and i32 %236, 63
  %238 = load i32, i32* %8, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %5, align 4
  %241 = and i32 %240, 63
  %242 = shl i32 %241, 6
  %243 = load i32, i32* %8, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %8, align 4
  %245 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %245, i32 1162, i32 %246)
  br label %248

248:                                              ; preds = %228, %143
  br label %251

249:                                              ; preds = %1
  %250 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %251

251:                                              ; preds = %19, %32, %249, %248, %100
  ret void
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_nrssi_hw_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
