; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"unknown clock source %d 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_clk(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %10)
  store %struct.nouveau_device* %11, %struct.nouveau_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %7, align 8
  %14 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %15 = call i32 @nv_rd32(%struct.nouveau_device* %14, i32 49216)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %247 [
    i32 138, label %17
    i32 132, label %21
    i32 136, label %22
    i32 135, label %27
    i32 134, label %31
    i32 133, label %36
    i32 130, label %47
    i32 129, label %78
    i32 131, label %111
    i32 128, label %140
    i32 137, label %214
  ]

17:                                               ; preds = %2
  %18 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %19 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %253

21:                                               ; preds = %2
  store i32 100000, i32* %3, align 4
  br label %253

22:                                               ; preds = %2
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = call i32 @read_clk(%struct.drm_device* %23, i32 132)
  %25 = mul nsw i32 %24, 27778
  %26 = sdiv i32 %25, 10000
  store i32 %26, i32* %3, align 4
  br label %253

27:                                               ; preds = %2
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i32 @read_clk(%struct.drm_device* %28, i32 136)
  %30 = mul nsw i32 %29, 3
  store i32 %30, i32* %3, align 4
  br label %253

31:                                               ; preds = %2
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i32 @read_clk(%struct.drm_device* %32, i32 136)
  %34 = mul nsw i32 %33, 3
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %3, align 4
  br label %253

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 805306368
  switch i32 %38, label %46 [
    i32 0, label %39
    i32 268435456, label %42
    i32 536870912, label %43
    i32 805306368, label %43
  ]

39:                                               ; preds = %36
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = call i32 @read_clk(%struct.drm_device* %40, i32 132)
  store i32 %41, i32* %3, align 4
  br label %253

42:                                               ; preds = %36
  br label %46

43:                                               ; preds = %36, %36
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = call i32 @read_clk(%struct.drm_device* %44, i32 136)
  store i32 %45, i32* %3, align 4
  br label %253

46:                                               ; preds = %36, %42
  br label %248

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 1048576
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %53 = call i32 @nv_rd32(%struct.nouveau_device* %52, i32 16424)
  %54 = and i32 %53, 458752
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 3
  switch i32 %58, label %77 [
    i32 0, label %59
    i32 1, label %64
    i32 2, label %67
    i32 3, label %72
  ]

59:                                               ; preds = %56
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = call i32 @read_clk(%struct.drm_device* %60, i32 138)
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %253

64:                                               ; preds = %56
  %65 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %66 = call i32 @read_clk(%struct.drm_device* %65, i32 137)
  store i32 %66, i32* %3, align 4
  br label %253

67:                                               ; preds = %56
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = call i32 @read_pll(%struct.drm_device* %68, i32 16416)
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %3, align 4
  br label %253

72:                                               ; preds = %56
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = call i32 @read_pll(%struct.drm_device* %73, i32 16424)
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %3, align 4
  br label %253

77:                                               ; preds = %56
  br label %248

78:                                               ; preds = %2
  %79 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %80 = call i32 @nv_rd32(%struct.nouveau_device* %79, i32 16416)
  %81 = and i32 %80, 458752
  %82 = ashr i32 %81, 16
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 48
  switch i32 %84, label %110 [
    i32 0, label %85
    i32 16, label %99
    i32 32, label %100
    i32 48, label %105
  ]

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %91 = call i32 @read_clk(%struct.drm_device* %90, i32 133)
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %91, %92
  store i32 %93, i32* %3, align 4
  br label %253

94:                                               ; preds = %85
  %95 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %96 = call i32 @read_clk(%struct.drm_device* %95, i32 138)
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %96, %97
  store i32 %98, i32* %3, align 4
  br label %253

99:                                               ; preds = %78
  br label %110

100:                                              ; preds = %78
  %101 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %102 = call i32 @read_pll(%struct.drm_device* %101, i32 16424)
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %102, %103
  store i32 %104, i32* %3, align 4
  br label %253

105:                                              ; preds = %78
  %106 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %107 = call i32 @read_pll(%struct.drm_device* %106, i32 16416)
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %107, %108
  store i32 %109, i32* %3, align 4
  br label %253

110:                                              ; preds = %78, %99
  br label %248

111:                                              ; preds = %2
  %112 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %113 = call i32 @nv_rd32(%struct.nouveau_device* %112, i32 16392)
  %114 = and i32 %113, 458752
  %115 = ashr i32 %114, 16
  store i32 %115, i32* %9, align 4
  %116 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %117 = call i32 @nv_rd32(%struct.nouveau_device* %116, i32 16392)
  %118 = and i32 %117, 512
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %111
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 49152
  switch i32 %122, label %133 [
    i32 0, label %123
    i32 32768, label %128
    i32 49152, label %128
  ]

123:                                              ; preds = %120
  %124 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %125 = call i32 @read_clk(%struct.drm_device* %124, i32 138)
  %126 = load i32, i32* %9, align 4
  %127 = ashr i32 %125, %126
  store i32 %127, i32* %3, align 4
  br label %253

128:                                              ; preds = %120, %120
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = call i32 @read_clk(%struct.drm_device* %129, i32 132)
  %131 = load i32, i32* %9, align 4
  %132 = ashr i32 %130, %131
  store i32 %132, i32* %3, align 4
  br label %253

133:                                              ; preds = %120
  br label %139

134:                                              ; preds = %111
  %135 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %136 = call i32 @read_pll(%struct.drm_device* %135, i32 16392)
  %137 = load i32, i32* %9, align 4
  %138 = ashr i32 %136, %137
  store i32 %138, i32* %3, align 4
  br label %253

139:                                              ; preds = %133
  br label %248

140:                                              ; preds = %2
  %141 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %142 = call i32 @read_div(%struct.drm_device* %141)
  %143 = and i32 %142, 1792
  %144 = ashr i32 %143, 8
  store i32 %144, i32* %9, align 4
  %145 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %146 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.TYPE_2__* @nv_device(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %213 [
    i32 132, label %151
    i32 134, label %151
    i32 146, label %151
    i32 148, label %151
    i32 150, label %151
    i32 160, label %151
    i32 152, label %193
  ]

151:                                              ; preds = %140, %140, %140, %140, %140, %140
  %152 = load i32, i32* %8, align 4
  %153 = and i32 %152, 3072
  switch i32 %153, label %192 [
    i32 0, label %154
    i32 1024, label %172
    i32 2048, label %173
    i32 3072, label %187
  ]

154:                                              ; preds = %151
  %155 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %156 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call %struct.TYPE_2__* @nv_device(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 160
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %164 = call i32 @read_clk(%struct.drm_device* %163, i32 130)
  %165 = load i32, i32* %9, align 4
  %166 = ashr i32 %164, %165
  store i32 %166, i32* %3, align 4
  br label %253

167:                                              ; preds = %154
  %168 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %169 = call i32 @read_clk(%struct.drm_device* %168, i32 138)
  %170 = load i32, i32* %9, align 4
  %171 = ashr i32 %169, %170
  store i32 %171, i32* %3, align 4
  br label %253

172:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %253

173:                                              ; preds = %151
  %174 = load i32, i32* %8, align 4
  %175 = and i32 %174, 16777216
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %179 = call i32 @read_pll(%struct.drm_device* %178, i32 16424)
  %180 = load i32, i32* %9, align 4
  %181 = ashr i32 %179, %180
  store i32 %181, i32* %3, align 4
  br label %253

182:                                              ; preds = %173
  %183 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %184 = call i32 @read_pll(%struct.drm_device* %183, i32 16432)
  %185 = load i32, i32* %9, align 4
  %186 = ashr i32 %184, %185
  store i32 %186, i32* %3, align 4
  br label %253

187:                                              ; preds = %151
  %188 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %189 = call i32 @read_clk(%struct.drm_device* %188, i32 130)
  %190 = load i32, i32* %9, align 4
  %191 = ashr i32 %189, %190
  store i32 %191, i32* %3, align 4
  br label %253

192:                                              ; preds = %151
  br label %213

193:                                              ; preds = %140
  %194 = load i32, i32* %8, align 4
  %195 = and i32 %194, 3072
  switch i32 %195, label %212 [
    i32 0, label %196
    i32 1024, label %201
    i32 2048, label %202
    i32 3072, label %207
  ]

196:                                              ; preds = %193
  %197 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %198 = call i32 @read_clk(%struct.drm_device* %197, i32 130)
  %199 = load i32, i32* %9, align 4
  %200 = ashr i32 %198, %199
  store i32 %200, i32* %3, align 4
  br label %253

201:                                              ; preds = %193
  store i32 0, i32* %3, align 4
  br label %253

202:                                              ; preds = %193
  %203 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %204 = call i32 @read_clk(%struct.drm_device* %203, i32 134)
  %205 = load i32, i32* %9, align 4
  %206 = ashr i32 %204, %205
  store i32 %206, i32* %3, align 4
  br label %253

207:                                              ; preds = %193
  %208 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %209 = call i32 @read_clk(%struct.drm_device* %208, i32 131)
  %210 = load i32, i32* %9, align 4
  %211 = ashr i32 %209, %210
  store i32 %211, i32* %3, align 4
  br label %253

212:                                              ; preds = %193
  br label %213

213:                                              ; preds = %140, %212, %192
  br label %248

214:                                              ; preds = %2
  %215 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %216 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.TYPE_2__* @nv_device(i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  switch i32 %220, label %245 [
    i32 80, label %221
    i32 160, label %221
    i32 132, label %225
    i32 134, label %225
    i32 146, label %225
    i32 148, label %225
    i32 150, label %225
    i32 152, label %225
  ]

221:                                              ; preds = %214, %214
  %222 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %223 = call i32 @read_pll(%struct.drm_device* %222, i32 59408)
  %224 = ashr i32 %223, 2
  store i32 %224, i32* %3, align 4
  br label %253

225:                                              ; preds = %214, %214, %214, %214, %214, %214
  %226 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %227 = call i32 @read_div(%struct.drm_device* %226)
  %228 = and i32 %227, 7
  %229 = ashr i32 %228, 0
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %8, align 4
  %231 = and i32 %230, 201326592
  switch i32 %231, label %244 [
    i32 0, label %232
    i32 67108864, label %235
    i32 134217728, label %236
    i32 201326592, label %239
  ]

232:                                              ; preds = %225
  %233 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %234 = call i32 @read_clk(%struct.drm_device* %233, i32 132)
  store i32 %234, i32* %3, align 4
  br label %253

235:                                              ; preds = %225
  br label %244

236:                                              ; preds = %225
  %237 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %238 = call i32 @read_clk(%struct.drm_device* %237, i32 136)
  store i32 %238, i32* %3, align 4
  br label %253

239:                                              ; preds = %225
  %240 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %241 = call i32 @read_clk(%struct.drm_device* %240, i32 135)
  %242 = load i32, i32* %9, align 4
  %243 = ashr i32 %241, %242
  store i32 %243, i32* %3, align 4
  br label %253

244:                                              ; preds = %225, %235
  br label %246

245:                                              ; preds = %214
  br label %246

246:                                              ; preds = %245, %244
  br label %247

247:                                              ; preds = %2, %246
  br label %248

248:                                              ; preds = %247, %213, %139, %110, %77, %46
  %249 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @NV_DEBUG(%struct.nouveau_drm* %249, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %250, i32 %251)
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %248, %239, %236, %232, %221, %207, %202, %201, %196, %187, %182, %177, %172, %167, %162, %134, %128, %123, %105, %100, %94, %89, %72, %67, %64, %59, %43, %39, %31, %27, %22, %21, %17
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @read_pll(%struct.drm_device*, i32) #1

declare dso_local i32 @read_div(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
