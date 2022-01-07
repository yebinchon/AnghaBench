; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMCRA_SDAR_DCACHE_MISS = common dso_local global i64 0, align 8
@MMCRA_SDAR_ERAT_MISS = common dso_local global i64 0, align 8
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_COMBINE_SH = common dso_local global i32 0, align 4
@PM_COMBINE_MSK = common dso_local global i32 0, align 4
@PM_L2SEL_SH = common dso_local global i32 0, align 4
@PM_L2SEL_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@MMCR1_TTM0SEL_SH = common dso_local global i32 0, align 4
@MMCR1_PMC1_COMBINE_SH = common dso_local global i32 0, align 4
@MMCR1_L2SEL_SH = common dso_local global i64 0, align 8
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @power7_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power7_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load i64, i64* @MMCRA_SDAR_DCACHE_MISS, align 8
  %20 = load i64, i64* @MMCRA_SDAR_ERAT_MISS, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %22

22:                                               ; preds = %57, %4
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %18, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PM_PMC_SH, align 4
  %33 = lshr i32 %31, %32
  %34 = load i32, i32* @PM_PMC_MSK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  %40 = icmp ugt i32 %39, 6
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %226

42:                                               ; preds = %38
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub i32 %44, 1
  %46 = shl i32 1, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %226

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = sub i32 %51, 1
  %53 = shl i32 1, %52
  %54 = load i32, i32* %17, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %50, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  br label %22

60:                                               ; preds = %22
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %196, %60
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %199

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PM_PMC_SH, align 4
  %72 = lshr i32 %70, %71
  %73 = load i32, i32* @PM_PMC_MSK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PM_UNIT_SH, align 4
  %81 = lshr i32 %79, %80
  %82 = load i32, i32* @PM_UNIT_MSK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PM_COMBINE_SH, align 4
  %90 = lshr i32 %88, %89
  %91 = load i32, i32* @PM_COMBINE_MSK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PM_L2SEL_SH, align 4
  %99 = lshr i32 %97, %98
  %100 = load i32, i32* @PM_L2SEL_MSK, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %15, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %65
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %123, %111
  %113 = load i32, i32* %12, align 4
  %114 = icmp ult i32 %113, 4
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %12, align 4
  %118 = shl i32 1, %117
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  br label %126

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %112

126:                                              ; preds = %121, %112
  %127 = load i32, i32* %12, align 4
  %128 = icmp uge i32 %127, 4
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  br label %226

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = shl i32 1, %131
  %133 = load i32, i32* %17, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %17, align 4
  br label %138

135:                                              ; preds = %65
  %136 = load i32, i32* %12, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %12, align 4
  %140 = icmp ule i32 %139, 3
  br i1 %140, label %141, label %178

141:                                              ; preds = %138
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = load i32, i32* @MMCR1_TTM0SEL_SH, align 4
  %145 = load i32, i32* %12, align 4
  %146 = mul i32 4, %145
  %147 = sub i32 %144, %146
  %148 = zext i32 %147 to i64
  %149 = shl i64 %143, %148
  %150 = load i64, i64* %10, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %10, align 8
  %152 = load i32, i32* %14, align 4
  %153 = zext i32 %152 to i64
  %154 = load i32, i32* @MMCR1_PMC1_COMBINE_SH, align 4
  %155 = load i32, i32* %12, align 4
  %156 = sub i32 %154, %155
  %157 = zext i32 %156 to i64
  %158 = shl i64 %153, %157
  %159 = load i64, i64* %10, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %10, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @MMCR1_PMCSEL_SH(i32 %162)
  %164 = shl i32 %161, %163
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %10, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %10, align 8
  %168 = load i32, i32* %13, align 4
  %169 = icmp eq i32 %168, 6
  br i1 %169, label %170, label %177

170:                                              ; preds = %141
  %171 = load i32, i32* %15, align 4
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* @MMCR1_L2SEL_SH, align 8
  %174 = shl i64 %172, %173
  %175 = load i64, i64* %10, align 8
  %176 = or i64 %175, %174
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %170, %141
  br label %178

178:                                              ; preds = %177, %138
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @power7_marked_instr_event(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %188 = load i64, i64* %11, align 8
  %189 = or i64 %188, %187
  store i64 %189, i64* %11, align 8
  br label %190

190:                                              ; preds = %186, %178
  %191 = load i32, i32* %12, align 4
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %191, i32* %195, align 4
  br label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  br label %61

199:                                              ; preds = %61
  %200 = load i64*, i64** %9, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* %17, align 4
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i64, i64* @MMCR0_PMC1CE, align 8
  %207 = load i64*, i64** %9, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %205, %199
  %210 = load i32, i32* %17, align 4
  %211 = and i32 %210, 62
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i64, i64* @MMCR0_PMCjCE, align 8
  %215 = load i64*, i64** %9, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 0
  %217 = load i64, i64* %216, align 8
  %218 = or i64 %217, %214
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %213, %209
  %220 = load i64, i64* %10, align 8
  %221 = load i64*, i64** %9, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 1
  store i64 %220, i64* %222, align 8
  %223 = load i64, i64* %11, align 8
  %224 = load i64*, i64** %9, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 2
  store i64 %223, i64* %225, align 8
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %219, %129, %49, %41
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @MMCR1_PMCSEL_SH(i32) #1

declare dso_local i64 @power7_marked_instr_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
