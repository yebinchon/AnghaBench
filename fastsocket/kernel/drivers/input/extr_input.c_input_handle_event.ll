; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_handle_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32*, i32 (%struct.input_dev*, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INPUT_IGNORE_EVENT = common dso_local global i32 0, align 4
@INPUT_PASS_TO_ALL = common dso_local global i32 0, align 4
@INPUT_PASS_TO_HANDLERS = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@SW_MAX = common dso_local global i32 0, align 4
@ABS_MAX = common dso_local global i32 0, align 4
@REL_MAX = common dso_local global i32 0, align 4
@MSC_MAX = common dso_local global i32 0, align 4
@LED_MAX = common dso_local global i32 0, align 4
@SND_MAX = common dso_local global i32 0, align 4
@REP_MAX = common dso_local global i32 0, align 4
@INPUT_PASS_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32, i32, i32)* @input_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_handle_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @INPUT_IGNORE_EVENT, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %235 [
    i32 131, label %12
    i32 139, label %31
    i32 132, label %73
    i32 141, label %101
    i32 135, label %114
    i32 137, label %128
    i32 138, label %139
    i32 133, label %167
    i32 134, label %200
    i32 140, label %227
    i32 136, label %233
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %30 [
    i32 130, label %14
    i32 128, label %16
    i32 129, label %26
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @INPUT_PASS_TO_ALL, align 4
  store i32 %15, i32* %9, align 4
  br label %30

16:                                               ; preds = %12
  %17 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %16
  br label %30

26:                                               ; preds = %12
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %12, %26, %25, %14
  br label %235

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @KEY_MAX, align 4
  %37 = call i32 @is_event_supported(i32 %32, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @test_bit(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__change_bit(i32 %55, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @input_start_autorepeat(%struct.input_dev* %63, i32 %64)
  br label %69

66:                                               ; preds = %54
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = call i32 @input_stop_autorepeat(%struct.input_dev* %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %39, %31
  br label %235

73:                                               ; preds = %4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SW_MAX, align 4
  %79 = call i32 @is_event_supported(i32 %74, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @test_bit(i32 %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %81
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @__change_bit(i32 %94, i32 %97)
  %99 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %93, %81, %73
  br label %235

101:                                              ; preds = %4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ABS_MAX, align 4
  %107 = call i32 @is_event_supported(i32 %102, i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @input_handle_abs_event(%struct.input_dev* %110, i32 %111, i32* %8)
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109, %101
  br label %235

114:                                              ; preds = %4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @REL_MAX, align 4
  %120 = call i32 @is_event_supported(i32 %115, i32 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %125, %122, %114
  br label %235

128:                                              ; preds = %4
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MSC_MAX, align 4
  %134 = call i32 @is_event_supported(i32 %129, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* @INPUT_PASS_TO_ALL, align 4
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %136, %128
  br label %235

139:                                              ; preds = %4
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @LED_MAX, align 4
  %145 = call i32 @is_event_supported(i32 %140, i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %139
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %150 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @test_bit(i32 %148, i32 %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %147
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %162 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @__change_bit(i32 %160, i32 %163)
  %165 = load i32, i32* @INPUT_PASS_TO_ALL, align 4
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %159, %147, %139
  br label %235

167:                                              ; preds = %4
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %170 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @SND_MAX, align 4
  %173 = call i32 @is_event_supported(i32 %168, i32 %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %167
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %178 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @test_bit(i32 %176, i32 %179)
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = icmp ne i32 %184, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %175
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %194 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @__change_bit(i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %191, %175
  %198 = load i32, i32* @INPUT_PASS_TO_ALL, align 4
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %197, %167
  br label %235

200:                                              ; preds = %4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @REP_MAX, align 4
  %203 = icmp ule i32 %201, %202
  br i1 %203, label %204, label %226

204:                                              ; preds = %200
  %205 = load i32, i32* %8, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %226

207:                                              ; preds = %204
  %208 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %209 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %207
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %220 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %218, i32* %224, align 4
  %225 = load i32, i32* @INPUT_PASS_TO_ALL, align 4
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %217, %207, %204, %200
  br label %235

227:                                              ; preds = %4
  %228 = load i32, i32* %8, align 4
  %229 = icmp sge i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i32, i32* @INPUT_PASS_TO_ALL, align 4
  store i32 %231, i32* %9, align 4
  br label %232

232:                                              ; preds = %230, %227
  br label %235

233:                                              ; preds = %4
  %234 = load i32, i32* @INPUT_PASS_TO_ALL, align 4
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %4, %233, %232, %226, %199, %166, %138, %127, %113, %100, %72, %30
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @INPUT_IGNORE_EVENT, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 131
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %244 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %243, i32 0, i32 0
  store i32 0, i32* %244, align 8
  br label %245

245:                                              ; preds = %242, %239, %235
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @INPUT_PASS_TO_DEVICE, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %245
  %251 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %252 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %251, i32 0, i32 2
  %253 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %252, align 8
  %254 = icmp ne i32 (%struct.input_dev*, i32, i32, i32)* %253, null
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %257 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %256, i32 0, i32 2
  %258 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %257, align 8
  %259 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* %8, align 4
  %263 = call i32 %258(%struct.input_dev* %259, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %255, %250, %245
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %264
  %270 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @input_pass_event(%struct.input_dev* %270, i32 %271, i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %269, %264
  ret void
}

declare dso_local i32 @is_event_supported(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__change_bit(i32, i32) #1

declare dso_local i32 @input_start_autorepeat(%struct.input_dev*, i32) #1

declare dso_local i32 @input_stop_autorepeat(%struct.input_dev*) #1

declare dso_local i32 @input_handle_abs_event(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_pass_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
