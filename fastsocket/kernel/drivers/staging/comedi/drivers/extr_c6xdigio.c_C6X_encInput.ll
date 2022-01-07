; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_C6X_encInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_C6X_encInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.encvaluetype = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@C6XDIGIO_TIME_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @C6X_encInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @C6X_encInput(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.encvaluetype, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = bitcast %union.encvaluetype* %6 to i32*
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 72, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  store i32 80, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @WriteByteToHwPort(i64 %15, i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  %20 = call i32 @ReadByteFromHwPort(i64 %19)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %31, %14
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  %34 = call i32 @ReadByteFromHwPort(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %21

37:                                               ; preds = %29
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  %40 = call i32 @ReadByteFromHwPort(i64 %39)
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 7
  %43 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 4
  %48 = call i32 @WriteByteToHwPort(i64 %45, i32 %47)
  store i32 0, i32* %7, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  %51 = call i32 @ReadByteFromHwPort(i64 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %62, %37
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  %65 = call i32 @ReadByteFromHwPort(i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %52

68:                                               ; preds = %60
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 1
  %71 = call i32 @ReadByteFromHwPort(i64 %70)
  %72 = ashr i32 %71, 3
  %73 = and i32 %72, 7
  %74 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @WriteByteToHwPort(i64 %76, i32 %77)
  store i32 0, i32* %7, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 1
  %81 = call i32 @ReadByteFromHwPort(i64 %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %92, %68
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %89 = icmp slt i32 %87, %88
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i1 [ false, %82 ], [ %89, %86 ]
  br i1 %91, label %92, label %98

92:                                               ; preds = %90
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 1
  %95 = call i32 @ReadByteFromHwPort(i64 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %82

98:                                               ; preds = %90
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 1
  %101 = call i32 @ReadByteFromHwPort(i64 %100)
  %102 = ashr i32 %101, 3
  %103 = and i32 %102, 7
  %104 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i64, i64* %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add i32 %107, 4
  %109 = call i32 @WriteByteToHwPort(i64 %106, i32 %108)
  store i32 0, i32* %7, align 4
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 1
  %112 = call i32 @ReadByteFromHwPort(i64 %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %123, %98
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, 128
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %120 = icmp slt i32 %118, %119
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i1 [ false, %113 ], [ %120, %117 ]
  br i1 %122, label %123, label %129

123:                                              ; preds = %121
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 1
  %126 = call i32 @ReadByteFromHwPort(i64 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %113

129:                                              ; preds = %121
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 1
  %132 = call i32 @ReadByteFromHwPort(i64 %131)
  %133 = ashr i32 %132, 3
  %134 = and i32 %133, 7
  %135 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load i64, i64* %3, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @WriteByteToHwPort(i64 %137, i32 %138)
  store i32 0, i32* %7, align 4
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 1
  %142 = call i32 @ReadByteFromHwPort(i64 %141)
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %153, %129
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, 128
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %150 = icmp slt i32 %148, %149
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i1 [ false, %143 ], [ %150, %147 ]
  br i1 %152, label %153, label %159

153:                                              ; preds = %151
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 1
  %156 = call i32 @ReadByteFromHwPort(i64 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %143

159:                                              ; preds = %151
  %160 = load i64, i64* %3, align 8
  %161 = add i64 %160, 1
  %162 = call i32 @ReadByteFromHwPort(i64 %161)
  %163 = ashr i32 %162, 3
  %164 = and i32 %163, 7
  %165 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load i64, i64* %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = add i32 %168, 4
  %170 = call i32 @WriteByteToHwPort(i64 %167, i32 %169)
  store i32 0, i32* %7, align 4
  %171 = load i64, i64* %3, align 8
  %172 = add i64 %171, 1
  %173 = call i32 @ReadByteFromHwPort(i64 %172)
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %184, %159
  %175 = load i32, i32* %8, align 4
  %176 = and i32 %175, 128
  %177 = icmp eq i32 %176, 128
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %181 = icmp slt i32 %179, %180
  br label %182

182:                                              ; preds = %178, %174
  %183 = phi i1 [ false, %174 ], [ %181, %178 ]
  br i1 %183, label %184, label %190

184:                                              ; preds = %182
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 1
  %187 = call i32 @ReadByteFromHwPort(i64 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %174

190:                                              ; preds = %182
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 1
  %193 = call i32 @ReadByteFromHwPort(i64 %192)
  %194 = ashr i32 %193, 3
  %195 = and i32 %194, 7
  %196 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  %198 = load i64, i64* %3, align 8
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @WriteByteToHwPort(i64 %198, i32 %199)
  store i32 0, i32* %7, align 4
  %201 = load i64, i64* %3, align 8
  %202 = add i64 %201, 1
  %203 = call i32 @ReadByteFromHwPort(i64 %202)
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %214, %190
  %205 = load i32, i32* %8, align 4
  %206 = and i32 %205, 128
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %211 = icmp slt i32 %209, %210
  br label %212

212:                                              ; preds = %208, %204
  %213 = phi i1 [ false, %204 ], [ %211, %208 ]
  br i1 %213, label %214, label %220

214:                                              ; preds = %212
  %215 = load i64, i64* %3, align 8
  %216 = add i64 %215, 1
  %217 = call i32 @ReadByteFromHwPort(i64 %216)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %204

220:                                              ; preds = %212
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 1
  %223 = call i32 @ReadByteFromHwPort(i64 %222)
  %224 = ashr i32 %223, 3
  %225 = and i32 %224, 7
  %226 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 4
  %228 = load i64, i64* %3, align 8
  %229 = load i32, i32* %5, align 4
  %230 = add i32 %229, 4
  %231 = call i32 @WriteByteToHwPort(i64 %228, i32 %230)
  store i32 0, i32* %7, align 4
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 1
  %234 = call i32 @ReadByteFromHwPort(i64 %233)
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %245, %220
  %236 = load i32, i32* %8, align 4
  %237 = and i32 %236, 128
  %238 = icmp eq i32 %237, 128
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %242 = icmp slt i32 %240, %241
  br label %243

243:                                              ; preds = %239, %235
  %244 = phi i1 [ false, %235 ], [ %242, %239 ]
  br i1 %244, label %245, label %251

245:                                              ; preds = %243
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 1
  %248 = call i32 @ReadByteFromHwPort(i64 %247)
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %7, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %7, align 4
  br label %235

251:                                              ; preds = %243
  %252 = load i64, i64* %3, align 8
  %253 = add i64 %252, 1
  %254 = call i32 @ReadByteFromHwPort(i64 %253)
  %255 = ashr i32 %254, 3
  %256 = and i32 %255, 7
  %257 = bitcast %union.encvaluetype* %6 to %struct.TYPE_2__*
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 7
  store i32 %256, i32* %258, align 4
  %259 = load i64, i64* %3, align 8
  %260 = load i32, i32* %5, align 4
  %261 = call i32 @WriteByteToHwPort(i64 %259, i32 %260)
  store i32 0, i32* %7, align 4
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, 1
  %264 = call i32 @ReadByteFromHwPort(i64 %263)
  store i32 %264, i32* %8, align 4
  br label %265

265:                                              ; preds = %275, %251
  %266 = load i32, i32* %8, align 4
  %267 = and i32 %266, 128
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %272 = icmp slt i32 %270, %271
  br label %273

273:                                              ; preds = %269, %265
  %274 = phi i1 [ false, %265 ], [ %272, %269 ]
  br i1 %274, label %275, label %281

275:                                              ; preds = %273
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, 1
  %278 = call i32 @ReadByteFromHwPort(i64 %277)
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %265

281:                                              ; preds = %273
  %282 = load i64, i64* %3, align 8
  %283 = call i32 @WriteByteToHwPort(i64 %282, i32 0)
  store i32 0, i32* %7, align 4
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 1
  %286 = call i32 @ReadByteFromHwPort(i64 %285)
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %297, %281
  %288 = load i32, i32* %8, align 4
  %289 = and i32 %288, 128
  %290 = icmp eq i32 %289, 128
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %294 = icmp slt i32 %292, %293
  br label %295

295:                                              ; preds = %291, %287
  %296 = phi i1 [ false, %287 ], [ %294, %291 ]
  br i1 %296, label %297, label %303

297:                                              ; preds = %295
  %298 = load i64, i64* %3, align 8
  %299 = add i64 %298, 1
  %300 = call i32 @ReadByteFromHwPort(i64 %299)
  store i32 %300, i32* %8, align 4
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  br label %287

303:                                              ; preds = %295
  %304 = bitcast %union.encvaluetype* %6 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = xor i32 %305, 8388608
  ret i32 %306
}

declare dso_local i32 @WriteByteToHwPort(i64, i32) #1

declare dso_local i32 @ReadByteFromHwPort(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
