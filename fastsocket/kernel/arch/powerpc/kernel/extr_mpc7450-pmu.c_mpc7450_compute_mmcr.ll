; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_mpc7450-pmu.c_mpc7450_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_mpc7450-pmu.c_mpc7450_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_CLASSES = common dso_local global i32 0, align 4
@N_COUNTER = common dso_local global i32 0, align 4
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@classmap = common dso_local global i32* null, align 8
@PM_THRESH_SH = common dso_local global i32 0, align 4
@PM_THRESH_MSK = common dso_local global i32 0, align 4
@PM_THRMULT_MSKS = common dso_local global i32 0, align 4
@pmcsel_mask = common dso_local global i32* null, align 8
@pmcsel_shift = common dso_local global i32* null, align 8
@MMCR0_PMC1CE = common dso_local global i32 0, align 4
@MMCR0_PMCnCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @mpc7450_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc7450_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %27 = load i32, i32* @N_CLASSES, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* @N_COUNTER, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = mul nuw i64 %28, %30
  %33 = alloca i64, i64 %32, align 16
  store i64 %28, i64* %11, align 8
  store i64 %30, i64* %12, align 8
  %34 = load i32, i32* @N_CLASSES, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @N_COUNTER, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %248

41:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %50, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @N_CLASSES, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %36, i64 %48
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %42

53:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %83, %53
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mpc7450_classify_event(i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %248

68:                                               ; preds = %58
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %36, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, %30
  %79 = getelementptr inbounds i64, i64* %33, i64 %78
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %75, i64* %82, align 8
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load i32, i32* @N_CLASSES, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %216, %86
  %90 = load i32, i32* %16, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %219

92:                                               ; preds = %89
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %212, %92
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %36, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %215

100:                                              ; preds = %93
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, %30
  %105 = getelementptr inbounds i64, i64* %33, i64 %104
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %101, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %128

114:                                              ; preds = %100
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* @PM_PMC_SH, align 4
  %117 = ashr i32 %115, %116
  %118 = load i32, i32* @PM_PMC_MSK, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %24, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %24, align 4
  %122 = sub nsw i32 %121, 1
  %123 = shl i32 1, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %248

127:                                              ; preds = %114
  br label %143

128:                                              ; preds = %100
  %129 = load i32*, i32** @classmap, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %18, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %248

140:                                              ; preds = %128
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @ffs(i32 %141)
  store i32 %142, i32* %24, align 4
  br label %143

143:                                              ; preds = %140, %127
  %144 = load i32, i32* %24, align 4
  %145 = sub nsw i32 %144, 1
  %146 = shl i32 1, %145
  %147 = load i32, i32* %18, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %23, align 4
  %150 = call i32 @mpc7450_threshold_use(i32 %149)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %143
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* @PM_THRESH_SH, align 4
  %156 = ashr i32 %154, %155
  %157 = load i32, i32* @PM_THRESH_MSK, align 4
  %158 = and i32 %156, %157
  store i32 %158, i32* %25, align 4
  %159 = load i32, i32* %25, align 4
  %160 = shl i32 %159, 16
  %161 = load i32, i32* %20, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %20, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %171

165:                                              ; preds = %153
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* @PM_THRMULT_MSKS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i32 -2147483648, i32* %22, align 4
  br label %171

171:                                              ; preds = %170, %165, %153
  br label %172

172:                                              ; preds = %171, %143
  %173 = load i32*, i32** @pmcsel_mask, align 8
  %174 = load i32, i32* %24, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %23, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %23, align 4
  %181 = load i32*, i32** @pmcsel_shift, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %23, align 4
  %188 = shl i32 %187, %186
  store i32 %188, i32* %23, align 4
  %189 = load i32, i32* %24, align 4
  %190 = icmp sle i32 %189, 2
  br i1 %190, label %191, label %195

191:                                              ; preds = %172
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %20, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %20, align 4
  br label %199

195:                                              ; preds = %172
  %196 = load i32, i32* %23, align 4
  %197 = load i32, i32* %21, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %195, %191
  %200 = load i32, i32* %24, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %204, %30
  %206 = getelementptr inbounds i64, i64* %33, i64 %205
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i32, i32* %202, i64 %210
  store i32 %201, i32* %211, align 4
  br label %212

212:                                              ; preds = %199
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %93

215:                                              ; preds = %93
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %16, align 4
  br label %89

219:                                              ; preds = %89
  %220 = load i32, i32* %18, align 4
  %221 = and i32 %220, 1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32, i32* @MMCR0_PMC1CE, align 4
  %225 = load i32, i32* %20, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %20, align 4
  br label %227

227:                                              ; preds = %223, %219
  %228 = load i32, i32* %18, align 4
  %229 = and i32 %228, 62
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i32, i32* @MMCR0_PMCnCE, align 4
  %233 = load i32, i32* %20, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %20, align 4
  br label %235

235:                                              ; preds = %231, %227
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64*, i64** %9, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 0
  store i64 %237, i64* %239, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = load i64*, i64** %9, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 1
  store i64 %241, i64* %243, align 8
  %244 = load i32, i32* %22, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64*, i64** %9, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 2
  store i64 %245, i64* %247, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %248

248:                                              ; preds = %235, %139, %126, %67, %40
  %249 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mpc7450_classify_event(i32) #2

declare dso_local i32 @ffs(i32) #2

declare dso_local i32 @mpc7450_threshold_use(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
