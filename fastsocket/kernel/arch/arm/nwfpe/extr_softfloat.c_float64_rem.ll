; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_rem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float64_default_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_rem(%struct.roundingData* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roundingData*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.roundingData* %0, %struct.roundingData** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @extractFloat64Frac(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @extractFloat64Exp(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @extractFloat64Sign(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @extractFloat64Frac(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @extractFloat64Exp(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @extractFloat64Sign(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 2047
  br i1 %32, label %33, label %53

33:                                               ; preds = %3
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 2047
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @propagateFloat64NaN(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %233

46:                                               ; preds = %39, %36
  %47 = load i32, i32* @float_flag_invalid, align 4
  %48 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %49 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @float64_default_nan, align 4
  store i32 %52, i32* %4, align 4
  br label %233

53:                                               ; preds = %3
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 2047
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @propagateFloat64NaN(i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %233

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %4, align 4
  br label %233

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* @float_flag_invalid, align 4
  %73 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %74 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @float64_default_nan, align 4
  store i32 %77, i32* %4, align 4
  br label %233

78:                                               ; preds = %68
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @normalizeFloat64Subnormal(i32 %79, i32* %12, i32* %15)
  br label %81

81:                                               ; preds = %78, %65
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %4, align 4
  br label %233

89:                                               ; preds = %84
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @normalizeFloat64Subnormal(i32 %90, i32* %11, i32* %14)
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @LIT64(i32 0)
  %98 = or i32 %96, %97
  %99 = shl i32 %98, 11
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @LIT64(i32 0)
  %102 = or i32 %100, %101
  %103 = shl i32 %102, 11
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %92
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, -1
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %4, align 4
  br label %233

111:                                              ; preds = %106
  %112 = load i32, i32* %14, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %92
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp sle i32 %115, %116
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %121, %114
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %126, 64
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %141, %125
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 0, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @estimateDiv128To64(i32 %132, i32 0, i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp slt i32 2, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %138, 2
  br label %141

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i32 [ %139, %137 ], [ 0, %140 ]
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = ashr i32 %143, 2
  %145 = load i32, i32* %16, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %148, 62
  store i32 %149, i32* %13, align 4
  br label %128

150:                                              ; preds = %128
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 64
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 0, %153
  br i1 %154, label %155, label %182

155:                                              ; preds = %150
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @estimateDiv128To64(i32 %156, i32 0, i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp slt i32 2, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* %16, align 4
  %163 = sub nsw i32 %162, 2
  br label %165

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 0, %164 ]
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %13, align 4
  %168 = sub nsw i32 64, %167
  %169 = load i32, i32* %16, align 4
  %170 = ashr i32 %169, %168
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %15, align 4
  %172 = ashr i32 %171, 2
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %14, align 4
  %174 = ashr i32 %173, 1
  %175 = load i32, i32* %13, align 4
  %176 = sub nsw i32 %175, 1
  %177 = shl i32 %174, %176
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %16, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sub nsw i32 %177, %180
  store i32 %181, i32* %14, align 4
  br label %187

182:                                              ; preds = %150
  %183 = load i32, i32* %14, align 4
  %184 = ashr i32 %183, 2
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = ashr i32 %185, 2
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %182, %165
  br label %188

188:                                              ; preds = %195, %187
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %14, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %14, align 4
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp sle i64 0, %197
  br i1 %198, label %188, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %18, align 8
  %204 = load i64, i64* %18, align 8
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %199
  %207 = load i64, i64* %18, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i32, i32* %16, align 4
  %211 = and i32 %210, 1
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %209, %199
  %214 = load i32, i32* %17, align 4
  store i32 %214, i32* %14, align 4
  br label %215

215:                                              ; preds = %213, %209, %206
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = icmp slt i64 %217, 0
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load i32, i32* %14, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %14, align 4
  br label %225

225:                                              ; preds = %222, %215
  %226 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %10, align 4
  %229 = xor i32 %227, %228
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @normalizeRoundAndPackFloat64(%struct.roundingData* %226, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %225, %109, %87, %71, %63, %59, %46, %42
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @extractFloat64Sign(i32) #1

declare dso_local i32 @propagateFloat64NaN(i32, i32) #1

declare dso_local i32 @normalizeFloat64Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @estimateDiv128To64(i32, i32, i32) #1

declare dso_local i32 @normalizeRoundAndPackFloat64(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
