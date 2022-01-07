; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_pack_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_pack_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx4008_dma_ch_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_dma_pack_control(%struct.pnx4008_dma_ch_ctrl* %0, i64* %1) #0 {
  %3 = alloca %struct.pnx4008_dma_ch_ctrl*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pnx4008_dma_ch_ctrl* %0, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64*, i64** %4, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %13 = icmp ne %struct.pnx4008_dma_ch_ctrl* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %272

17:                                               ; preds = %11
  %18 = load i64*, i64** %4, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %27 [
    i32 0, label %22
    i32 1, label %23
  ]

22:                                               ; preds = %17
  br label %30

23:                                               ; preds = %17
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, -2147483648
  store i64 %26, i64* %24, align 8
  br label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %272

30:                                               ; preds = %23, %22
  %31 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %39 [
    i32 0, label %34
    i32 1, label %35
  ]

34:                                               ; preds = %30
  br label %42

35:                                               ; preds = %30
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, 1073741824
  store i64 %38, i64* %36, align 8
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %272

42:                                               ; preds = %35, %34
  %43 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %51 [
    i32 0, label %46
    i32 1, label %47
  ]

46:                                               ; preds = %42
  br label %54

47:                                               ; preds = %42
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, 536870912
  store i64 %50, i64* %48, align 8
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %272

54:                                               ; preds = %47, %46
  %55 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %63 [
    i32 0, label %58
    i32 1, label %59
  ]

58:                                               ; preds = %54
  br label %66

59:                                               ; preds = %54
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %60, align 8
  %62 = or i64 %61, 268435456
  store i64 %62, i64* %60, align 8
  br label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %272

66:                                               ; preds = %59, %58
  %67 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %75 [
    i32 0, label %70
    i32 1, label %71
  ]

70:                                               ; preds = %66
  br label %78

71:                                               ; preds = %66
  %72 = load i64*, i64** %4, align 8
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, 134217728
  store i64 %74, i64* %72, align 8
  br label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %272

78:                                               ; preds = %71, %70
  %79 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %80 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %87 [
    i32 0, label %82
    i32 1, label %83
  ]

82:                                               ; preds = %78
  br label %90

83:                                               ; preds = %78
  %84 = load i64*, i64** %4, align 8
  %85 = load i64, i64* %84, align 8
  %86 = or i64 %85, 67108864
  store i64 %86, i64* %84, align 8
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %272

90:                                               ; preds = %83, %82
  %91 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %92 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %99 [
    i32 0, label %94
    i32 1, label %95
  ]

94:                                               ; preds = %90
  br label %102

95:                                               ; preds = %90
  %96 = load i64*, i64** %4, align 8
  %97 = load i64, i64* %96, align 8
  %98 = or i64 %97, 33554432
  store i64 %98, i64* %96, align 8
  br label %102

99:                                               ; preds = %90
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %272

102:                                              ; preds = %95, %94
  %103 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %104 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %111 [
    i32 0, label %106
    i32 1, label %107
  ]

106:                                              ; preds = %102
  br label %114

107:                                              ; preds = %102
  %108 = load i64*, i64** %4, align 8
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, 16777216
  store i64 %110, i64* %108, align 8
  br label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %272

114:                                              ; preds = %107, %106
  %115 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %116 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %136 [
    i32 130, label %118
    i32 129, label %122
    i32 128, label %129
  ]

118:                                              ; preds = %114
  %119 = load i64*, i64** %4, align 8
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, -14680065
  store i64 %121, i64* %119, align 8
  br label %139

122:                                              ; preds = %114
  %123 = load i64*, i64** %4, align 8
  %124 = load i64, i64* %123, align 8
  %125 = and i64 %124, -14680065
  store i64 %125, i64* %123, align 8
  %126 = load i64*, i64** %4, align 8
  %127 = load i64, i64* %126, align 8
  %128 = or i64 %127, 2097152
  store i64 %128, i64* %126, align 8
  br label %139

129:                                              ; preds = %114
  %130 = load i64*, i64** %4, align 8
  %131 = load i64, i64* %130, align 8
  %132 = and i64 %131, -14680065
  store i64 %132, i64* %130, align 8
  %133 = load i64*, i64** %4, align 8
  %134 = load i64, i64* %133, align 8
  %135 = or i64 %134, 4194304
  store i64 %135, i64* %133, align 8
  br label %139

136:                                              ; preds = %114
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  br label %272

139:                                              ; preds = %129, %122, %118
  %140 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %141 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %161 [
    i32 130, label %143
    i32 129, label %147
    i32 128, label %154
  ]

143:                                              ; preds = %139
  %144 = load i64*, i64** %4, align 8
  %145 = load i64, i64* %144, align 8
  %146 = and i64 %145, -1835009
  store i64 %146, i64* %144, align 8
  br label %164

147:                                              ; preds = %139
  %148 = load i64*, i64** %4, align 8
  %149 = load i64, i64* %148, align 8
  %150 = and i64 %149, -1835009
  store i64 %150, i64* %148, align 8
  %151 = load i64*, i64** %4, align 8
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, 262144
  store i64 %153, i64* %151, align 8
  br label %164

154:                                              ; preds = %139
  %155 = load i64*, i64** %4, align 8
  %156 = load i64, i64* %155, align 8
  %157 = and i64 %156, -1835009
  store i64 %157, i64* %155, align 8
  %158 = load i64*, i64** %4, align 8
  %159 = load i64, i64* %158, align 8
  %160 = or i64 %159, 524288
  store i64 %160, i64* %158, align 8
  br label %164

161:                                              ; preds = %139
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %8, align 4
  br label %272

164:                                              ; preds = %154, %147, %143
  %165 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %166 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %173, %164
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %6, align 4
  %177 = ashr i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %168

178:                                              ; preds = %168
  %179 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %180 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %189, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %5, align 4
  %185 = icmp sgt i32 %184, 8
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %192

189:                                              ; preds = %186, %183, %178
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %8, align 4
  br label %272

192:                                              ; preds = %186
  %193 = load i32, i32* %5, align 4
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %195, %192
  br label %199

199:                                              ; preds = %198
  %200 = load i64*, i64** %4, align 8
  %201 = load i64, i64* %200, align 8
  %202 = and i64 %201, -229377
  store i64 %202, i64* %200, align 8
  %203 = load i32, i32* %5, align 4
  %204 = shl i32 %203, 15
  %205 = sext i32 %204 to i64
  %206 = load i64*, i64** %4, align 8
  %207 = load i64, i64* %206, align 8
  %208 = or i64 %207, %205
  store i64 %208, i64* %206, align 8
  %209 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %210 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %217, %199
  %213 = load i32, i32* %7, align 4
  %214 = and i32 %213, 1
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %7, align 4
  %221 = ashr i32 %220, 1
  store i32 %221, i32* %7, align 4
  br label %212

222:                                              ; preds = %212
  %223 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %224 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %223, i32 0, i32 11
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 1
  br i1 %226, label %233, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* %5, align 4
  %229 = icmp sgt i32 %228, 8
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %5, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %236

233:                                              ; preds = %230, %227, %222
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %8, align 4
  br label %272

236:                                              ; preds = %230
  %237 = load i32, i32* %5, align 4
  %238 = icmp sgt i32 %237, 1
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %239, %236
  br label %243

243:                                              ; preds = %242
  %244 = load i64*, i64** %4, align 8
  %245 = load i64, i64* %244, align 8
  %246 = and i64 %245, -28673
  store i64 %246, i64* %244, align 8
  %247 = load i32, i32* %5, align 4
  %248 = shl i32 %247, 12
  %249 = sext i32 %248 to i64
  %250 = load i64*, i64** %4, align 8
  %251 = load i64, i64* %250, align 8
  %252 = or i64 %251, %249
  store i64 %252, i64* %250, align 8
  %253 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %254 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %253, i32 0, i32 12
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 2047
  br i1 %256, label %257, label %260

257:                                              ; preds = %243
  %258 = load i32, i32* @E2BIG, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %8, align 4
  br label %272

260:                                              ; preds = %243
  %261 = load i64*, i64** %4, align 8
  %262 = load i64, i64* %261, align 8
  %263 = and i64 %262, -2048
  store i64 %263, i64* %261, align 8
  %264 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %3, align 8
  %265 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %264, i32 0, i32 12
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 2047
  %268 = sext i32 %267 to i64
  %269 = load i64*, i64** %4, align 8
  %270 = load i64, i64* %269, align 8
  %271 = or i64 %270, %268
  store i64 %271, i64* %269, align 8
  br label %272

272:                                              ; preds = %260, %257, %233, %189, %161, %136, %111, %99, %87, %75, %63, %51, %39, %27, %14
  %273 = load i32, i32* %8, align 4
  ret i32 %273
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
