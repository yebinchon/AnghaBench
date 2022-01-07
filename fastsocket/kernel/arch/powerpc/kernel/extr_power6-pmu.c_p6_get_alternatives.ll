; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power6-pmu.c_p6_get_alternatives.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power6-pmu.c_p6_get_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ALT = common dso_local global i32 0, align 4
@event_alternatives = common dso_local global i32** null, align 8
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_PMC_MSKS = common dso_local global i32 0, align 4
@PPMU_ONLY_COUNT_RUN = common dso_local global i32 0, align 4
@PPMU_LIMITED_PMC_OK = common dso_local global i32 0, align 4
@PPMU_LIMITED_PMC_REQD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @p6_get_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p6_get_alternatives(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @p6_limited_pmc_event(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @find_alternatives_list(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %57, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MAX_ALT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load i32**, i32*** @event_alternatives, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %60

41:                                               ; preds = %28
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %12, align 4
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @p6_limited_pmc_event(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %24

60:                                               ; preds = %40, %24
  br label %129

61:                                               ; preds = %3
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %64 = and i32 %63, -2
  %65 = and i32 %62, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PM_PMC_SH, align 4
  %68 = ashr i32 %66, %67
  %69 = load i32, i32* @PM_PMC_MSK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 50
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 52
  br i1 %78, label %79, label %95

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %4, align 4
  %81 = xor i32 %80, 6
  %82 = load i32, i32* @PM_PMC_MSKS, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* %11, align 4
  %86 = sub i32 5, %85
  %87 = load i32, i32* @PM_PMC_SH, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %84, %88
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %79, %76, %61
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 56
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 58
  br i1 %103, label %104, label %128

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %4, align 4
  %106 = xor i32 %105, 2
  %107 = load i32, i32* @PM_PMC_MSKS, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp ugt i32 %110, 2
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* %11, align 4
  %114 = sub i32 %113, 2
  br label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, 2
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i32 [ %114, %112 ], [ %117, %115 ]
  %120 = load i32, i32* @PM_PMC_SH, align 4
  %121 = shl i32 %119, %120
  %122 = or i32 %109, %121
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  br label %128

128:                                              ; preds = %118, %101, %95
  br label %129

129:                                              ; preds = %128, %60
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @PPMU_ONLY_COUNT_RUN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %192

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %187, %134
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %190

140:                                              ; preds = %136
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %186 [
    i32 30, label %146
    i32 1048586, label %154
    i32 2, label %160
    i32 5242889, label %168
    i32 1048590, label %174
    i32 4194548, label %180
  ]

146:                                              ; preds = %140
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 6291461, i32* %151, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %186

154:                                              ; preds = %140
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 30, i32* %159, align 4
  br label %186

160:                                              ; preds = %140
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 5242889, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %186

168:                                              ; preds = %140
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 2, i32* %173, align 4
  br label %186

174:                                              ; preds = %140
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32 4194548, i32* %179, align 4
  br label %186

180:                                              ; preds = %140
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  store i32 1048590, i32* %185, align 4
  br label %186

186:                                              ; preds = %140, %180, %174, %168, %160, %154, %146
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %136

190:                                              ; preds = %136
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %190, %129
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @PPMU_LIMITED_PMC_OK, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %231, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %231

200:                                              ; preds = %197
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %226, %200
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %205, label %229

205:                                              ; preds = %201
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @p6_limited_pmc_event(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %205
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %218, i32* %222, align 4
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %213, %205
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %201

229:                                              ; preds = %201
  %230 = load i32, i32* %8, align 4
  store i32 %230, i32* %12, align 4
  br label %272

231:                                              ; preds = %197, %192
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @PPMU_LIMITED_PMC_REQD, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %271

236:                                              ; preds = %231
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %271

240:                                              ; preds = %236
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %266, %240
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %245, label %269

245:                                              ; preds = %241
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @p6_limited_pmc_event(i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %245
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %6, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %258, i32* %262, align 4
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %265

265:                                              ; preds = %253, %245
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %241

269:                                              ; preds = %241
  %270 = load i32, i32* %8, align 4
  store i32 %270, i32* %12, align 4
  br label %271

271:                                              ; preds = %269, %236, %231
  br label %272

272:                                              ; preds = %271, %229
  %273 = load i32, i32* %12, align 4
  ret i32 %273
}

declare dso_local i32 @p6_limited_pmc_event(i32) #1

declare dso_local i32 @find_alternatives_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
