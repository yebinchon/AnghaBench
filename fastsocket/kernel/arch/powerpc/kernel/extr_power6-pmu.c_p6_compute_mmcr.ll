; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power6-pmu.c_p6_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power6-pmu.c_p6_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMCRA_SDAR_DCACHE_MISS = common dso_local global i64 0, align 8
@MMCRA_SDAR_ERAT_MISS = common dso_local global i64 0, align 8
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@PM_BUSEVENT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_SUBUNIT_SH = common dso_local global i32 0, align 4
@PM_SUBUNIT_MSK = common dso_local global i32 0, align 4
@MMCR1_NESTSEL_SH = common dso_local global i64 0, align 8
@MMCR1_PMC1_ADDR_SEL = common dso_local global i32 0, align 4
@PM_LLA = common dso_local global i32 0, align 4
@MMCR1_PMC1_LLA = common dso_local global i32 0, align 4
@PM_LLAV = common dso_local global i32 0, align 4
@MMCR1_PMC1_LLA_VALUE = common dso_local global i32 0, align 4
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @p6_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p6_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %21 = load i64, i64* @MMCRA_SDAR_DCACHE_MISS, align 8
  %22 = load i64, i64* @MMCRA_SDAR_ERAT_MISS, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 6
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %287

27:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PM_PMC_SH, align 4
  %39 = lshr i32 %37, %38
  %40 = load i32, i32* @PM_PMC_MSK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %32
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub i32 %46, 1
  %48 = shl i32 1, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %287

52:                                               ; preds = %44
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 %53, 1
  %55 = shl i32 1, %54
  %56 = load i32, i32* %20, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %52, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %28

62:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %257, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %260

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @PM_PMC_SH, align 4
  %75 = lshr i32 %73, %74
  %76 = load i32, i32* @PM_PMC_MSK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %13, align 4
  br label %107

83:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %13, align 4
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %13, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %98

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %84

98:                                               ; preds = %93, %84
  %99 = load i32, i32* %13, align 4
  %100 = icmp uge i32 %99, 4
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 -1, i32* %5, align 4
  br label %287

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* %20, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %20, align 4
  br label %107

107:                                              ; preds = %102, %80
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %209

120:                                              ; preds = %107
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @PM_BYTE_SH, align 4
  %123 = lshr i32 %121, %122
  %124 = load i32, i32* @PM_BYTE_MSK, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @PM_UNIT_SH, align 4
  %128 = lshr i32 %126, %127
  %129 = load i32, i32* @PM_UNIT_MSK, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %15, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %120
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @MMCR1_TTMSEL(i64 %137, i32 %138)
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 -1, i32* %5, align 4
  br label %287

143:                                              ; preds = %136, %120
  %144 = load i32, i32* %16, align 4
  %145 = zext i32 %144 to i64
  %146 = load i32, i32* %15, align 4
  %147 = call i64 @MMCR1_TTMSEL_SH(i32 %146)
  %148 = shl i64 %145, %147
  %149 = load i64, i64* %10, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %10, align 8
  %151 = load i32, i32* %15, align 4
  %152 = shl i32 1, %151
  %153 = load i32, i32* %19, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %181

157:                                              ; preds = %143
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @PM_SUBUNIT_SH, align 4
  %160 = lshr i32 %158, %159
  %161 = load i32, i32* @PM_SUBUNIT_MSK, align 4
  %162 = and i32 %160, %161
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %19, align 4
  %164 = and i32 %163, 16
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %157
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @MMCR1_NESTSEL(i64 %167)
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 -1, i32* %5, align 4
  br label %287

172:                                              ; preds = %166, %157
  %173 = load i32, i32* %19, align 4
  %174 = or i32 %173, 16
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %17, align 4
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* @MMCR1_NESTSEL_SH, align 8
  %178 = shl i64 %176, %177
  %179 = load i64, i64* %10, align 8
  %180 = or i64 %179, %178
  store i64 %180, i64* %10, align 8
  br label %181

181:                                              ; preds = %172, %143
  %182 = load i32, i32* %18, align 4
  %183 = icmp ule i32 48, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %181
  %185 = load i32, i32* %18, align 4
  %186 = icmp ule i32 %185, 61
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load i32, i32* %15, align 4
  %189 = icmp uge i32 %188, 2
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i32, i32* @MMCR1_PMC1_ADDR_SEL, align 4
  %192 = load i32, i32* %13, align 4
  %193 = lshr i32 %191, %192
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %10, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %10, align 8
  br label %197

197:                                              ; preds = %190, %187
  br label %198

198:                                              ; preds = %197, %184, %181
  %199 = load i32, i32* %13, align 4
  %200 = icmp uge i32 %199, 2
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32, i32* %18, align 4
  %203 = and i32 %202, 144
  %204 = icmp eq i32 %203, 128
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* %18, align 4
  %207 = xor i32 %206, 32
  store i32 %207, i32* %18, align 4
  br label %208

208:                                              ; preds = %205, %201, %198
  br label %209

209:                                              ; preds = %208, %107
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @PM_LLA, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %209
  %215 = load i32, i32* @MMCR1_PMC1_LLA, align 4
  %216 = load i32, i32* %13, align 4
  %217 = lshr i32 %215, %216
  %218 = zext i32 %217 to i64
  %219 = load i64, i64* %10, align 8
  %220 = or i64 %219, %218
  store i64 %220, i64* %10, align 8
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* @PM_LLAV, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %214
  %226 = load i32, i32* @MMCR1_PMC1_LLA_VALUE, align 4
  %227 = load i32, i32* %13, align 4
  %228 = lshr i32 %226, %227
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %10, align 8
  %231 = or i64 %230, %229
  store i64 %231, i64* %10, align 8
  br label %232

232:                                              ; preds = %225, %214
  br label %233

233:                                              ; preds = %232, %209
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @power6_marked_instr_event(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %233
  %242 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %243 = load i64, i64* %11, align 8
  %244 = or i64 %243, %242
  store i64 %244, i64* %11, align 8
  br label %245

245:                                              ; preds = %241, %233
  %246 = load i32, i32* %13, align 4
  %247 = icmp ult i32 %246, 4
  br i1 %247, label %248, label %256

248:                                              ; preds = %245
  %249 = load i32, i32* %18, align 4
  %250 = zext i32 %249 to i64
  %251 = load i32, i32* %13, align 4
  %252 = call i64 @MMCR1_PMCSEL_SH(i32 %251)
  %253 = shl i64 %250, %252
  %254 = load i64, i64* %10, align 8
  %255 = or i64 %254, %253
  store i64 %255, i64* %10, align 8
  br label %256

256:                                              ; preds = %248, %245
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %12, align 4
  br label %63

260:                                              ; preds = %63
  %261 = load i64*, i64** %9, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  store i64 0, i64* %262, align 8
  %263 = load i32, i32* %20, align 4
  %264 = and i32 %263, 1
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load i64, i64* @MMCR0_PMC1CE, align 8
  %268 = load i64*, i64** %9, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 0
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %266, %260
  %271 = load i32, i32* %20, align 4
  %272 = and i32 %271, 14
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %270
  %275 = load i64, i64* @MMCR0_PMCjCE, align 8
  %276 = load i64*, i64** %9, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  %278 = load i64, i64* %277, align 8
  %279 = or i64 %278, %275
  store i64 %279, i64* %277, align 8
  br label %280

280:                                              ; preds = %274, %270
  %281 = load i64, i64* %10, align 8
  %282 = load i64*, i64** %9, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 1
  store i64 %281, i64* %283, align 8
  %284 = load i64, i64* %11, align 8
  %285 = load i64*, i64** %9, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 2
  store i64 %284, i64* %286, align 8
  store i32 0, i32* %5, align 4
  br label %287

287:                                              ; preds = %280, %171, %142, %101, %51, %26
  %288 = load i32, i32* %5, align 4
  ret i32 %288
}

declare dso_local i32 @MMCR1_TTMSEL(i64, i32) #1

declare dso_local i64 @MMCR1_TTMSEL_SH(i32) #1

declare dso_local i32 @MMCR1_NESTSEL(i64) #1

declare dso_local i64 @power6_marked_instr_event(i32) #1

declare dso_local i64 @MMCR1_PMCSEL_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
