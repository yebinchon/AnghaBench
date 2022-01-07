; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_pl_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_pl_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"wacom_pl_irq: received unknown report #%d\00", align 1
@ERASER_DEVICE_ID = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i8* null, align 8
@BTN_TOOL_PEN = common dso_local global i8* null, align 8
@STYLUS_DEVICE_ID = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i8* null, align 8
@BTN_STYLUS = common dso_local global i8* null, align 8
@BTN_STYLUS2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_pl_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_pl_irq(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %10 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %20)
  store i32 0, i32* %3, align 4
  br label %291

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 64
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %260

30:                                               ; preds = %22
  %31 = load i32, i32* @ERASER_DEVICE_ID, align 4
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %33 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 7
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 1
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = ashr i32 %44, 2
  %46 = and i32 %45, 1
  %47 = or i32 %40, %46
  %48 = trunc i32 %47 to i8
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %51 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 255
  br i1 %55, label %56, label %66

56:                                               ; preds = %30
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 1
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = ashr i32 %62, 6
  %64 = and i32 %63, 1
  %65 = or i32 %58, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %56, %30
  %67 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %68 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = sdiv i32 %72, 2
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %77 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %113, label %82

82:                                               ; preds = %66
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 16
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i8*, i8** @BTN_TOOL_RUBBER, align 8
  %91 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %92 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  store i8* %90, i8** %94, align 8
  br label %112

95:                                               ; preds = %82
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, 32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i8*, i8** @BTN_TOOL_RUBBER, align 8
  br label %106

104:                                              ; preds = %95
  %105 = load i8*, i8** @BTN_TOOL_PEN, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i8* [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %109 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* %107, i8** %111, align 8
  br label %112

112:                                              ; preds = %106, %89
  br label %144

113:                                              ; preds = %66
  %114 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %115 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** @BTN_TOOL_RUBBER, align 8
  %120 = icmp eq i8* %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %113
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %121
  %129 = load i8*, i8** %5, align 8
  %130 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %131 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %130, i32 0, i32 2
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @wacom_report_key(i8* %129, i8* %134, i32 0)
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @wacom_input_sync(i8* %136)
  %138 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %139 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %140 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %139, i32 0, i32 2
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  store i8* %138, i8** %142, align 8
  store i32 0, i32* %3, align 4
  br label %291

143:                                              ; preds = %121, %113
  br label %144

144:                                              ; preds = %143, %112
  %145 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %146 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** @BTN_TOOL_RUBBER, align 8
  %151 = icmp ne i8* %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %144
  %153 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %154 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %155 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %154, i32 0, i32 2
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 1
  store i8* %153, i8** %157, align 8
  %158 = load i32, i32* @STYLUS_DEVICE_ID, align 4
  %159 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %160 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %152, %144
  %164 = load i8*, i8** %5, align 8
  %165 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %166 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %165, i32 0, i32 2
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @wacom_report_key(i8* %164, i8* %169, i32 %170)
  %172 = load i8*, i8** %5, align 8
  %173 = load i32, i32* @ABS_MISC, align 4
  %174 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %175 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @wacom_report_abs(i8* %172, i32 %173, i32 %178)
  %180 = load i8*, i8** %5, align 8
  %181 = load i32, i32* @ABS_X, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8*, i8** %6, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 2
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = shl i32 %189, 7
  %191 = or i32 %185, %190
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 3
  %197 = shl i32 %196, 14
  %198 = or i32 %191, %197
  %199 = call i32 @wacom_report_abs(i8* %180, i32 %181, i32 %198)
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* @ABS_Y, align 4
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 6
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i8*, i8** %6, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 5
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = shl i32 %209, 7
  %211 = or i32 %205, %210
  %212 = load i8*, i8** %6, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 4
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = and i32 %215, 3
  %217 = shl i32 %216, 14
  %218 = or i32 %211, %217
  %219 = call i32 @wacom_report_abs(i8* %200, i32 %201, i32 %218)
  %220 = load i8*, i8** %5, align 8
  %221 = load i32, i32* @ABS_PRESSURE, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @wacom_report_abs(i8* %220, i32 %221, i32 %222)
  %224 = load i8*, i8** %5, align 8
  %225 = load i8*, i8** @BTN_TOUCH, align 8
  %226 = load i8*, i8** %6, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 4
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = and i32 %229, 8
  %231 = call i32 @wacom_report_key(i8* %224, i8* %225, i32 %230)
  %232 = load i8*, i8** %5, align 8
  %233 = load i8*, i8** @BTN_STYLUS, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 4
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = and i32 %237, 16
  %239 = call i32 @wacom_report_key(i8* %232, i8* %233, i32 %238)
  %240 = load i8*, i8** %5, align 8
  %241 = load i8*, i8** @BTN_STYLUS2, align 8
  %242 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %243 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %242, i32 0, i32 2
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  %246 = load i8*, i8** %245, align 8
  %247 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %248 = icmp eq i8* %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %163
  %250 = load i8*, i8** %6, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 4
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = and i32 %253, 32
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %249, %163
  %257 = phi i1 [ false, %163 ], [ %255, %249 ]
  %258 = zext i1 %257 to i32
  %259 = call i32 @wacom_report_key(i8* %240, i8* %241, i32 %258)
  br label %283

260:                                              ; preds = %22
  %261 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %262 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %261, i32 0, i32 2
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  %265 = load i8*, i8** %264, align 8
  %266 = load i8*, i8** @BTN_TOOL_RUBBER, align 8
  %267 = icmp ne i8* %265, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %260
  %269 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %270 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %271 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %270, i32 0, i32 2
  %272 = load i8**, i8*** %271, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 1
  store i8* %269, i8** %273, align 8
  br label %274

274:                                              ; preds = %268, %260
  %275 = load i8*, i8** %5, align 8
  %276 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %277 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %276, i32 0, i32 2
  %278 = load i8**, i8*** %277, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 1
  %280 = load i8*, i8** %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @wacom_report_key(i8* %275, i8* %280, i32 %281)
  br label %283

283:                                              ; preds = %274, %256
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = inttoptr i64 %285 to i8*
  %287 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %288 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %287, i32 0, i32 2
  %289 = load i8**, i8*** %288, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 0
  store i8* %286, i8** %290, align 8
  store i32 1, i32* %3, align 4
  br label %291

291:                                              ; preds = %283, %128, %17
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @dbg(i8*, i8 zeroext) #1

declare dso_local i32 @wacom_report_key(i8*, i8*, i32) #1

declare dso_local i32 @wacom_input_sync(i8*) #1

declare dso_local i32 @wacom_report_abs(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
