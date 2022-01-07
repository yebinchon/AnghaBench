; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_find_sof.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_find_sof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"header found at offset: %d: %02x %02x 00 %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"header found at offset: %d: 00 %02x %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gspca_dev*, i32*, i32)* @cit_find_sof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cit_find_sof(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.sd*, %struct.sd** %8, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %282 [
    i32 132, label %17
    i32 131, label %17
    i32 129, label %17
    i32 133, label %17
    i32 130, label %175
    i32 128, label %175
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %26 [
    i32 160, label %21
    i32 176, label %22
    i32 320, label %23
    i32 352, label %24
    i32 640, label %25
  ]

21:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 10, i32* %10, align 4
  br label %26

22:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 14, i32* %10, align 4
  br label %26

23:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %26

24:                                               ; preds = %17
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %26

25:                                               ; preds = %17
  store i32 3, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %26

26:                                               ; preds = %17, %25, %24, %23, %22, %21
  %27 = load %struct.sd*, %struct.sd** %8, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 131
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %26
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %171, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %174

37:                                               ; preds = %33
  %38 = load %struct.sd*, %struct.sd** %8, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 132
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.sd*, %struct.sd** %8, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %174

49:                                               ; preds = %42, %37
  %50 = load %struct.sd*, %struct.sd** %8, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %170 [
    i32 0, label %53
    i32 1, label %66
    i32 2, label %93
    i32 3, label %121
  ]

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.sd*, %struct.sd** %8, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %53
  br label %170

66:                                               ; preds = %49
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 255
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.sd*, %struct.sd** %8, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %92

78:                                               ; preds = %66
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.sd*, %struct.sd** %8, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %91

88:                                               ; preds = %78
  %89 = load %struct.sd*, %struct.sd** %8, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %73
  br label %170

93:                                               ; preds = %49
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.sd*, %struct.sd** %8, align 8
  %103 = getelementptr inbounds %struct.sd, %struct.sd* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %120

106:                                              ; preds = %93
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.sd*, %struct.sd** %8, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %119

116:                                              ; preds = %106
  %117 = load %struct.sd*, %struct.sd** %8, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %101
  br label %170

121:                                              ; preds = %49
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %121
  %130 = load %struct.sd*, %struct.sd** %8, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load %struct.sd*, %struct.sd** %8, align 8
  %137 = getelementptr inbounds %struct.sd, %struct.sd* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  store i32* %141, i32** %4, align 8
  br label %283

142:                                              ; preds = %121
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 255
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load %struct.sd*, %struct.sd** %8, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 1
  store i32 2, i32* %154, align 4
  br label %169

155:                                              ; preds = %145, %142
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.sd*, %struct.sd** %8, align 8
  %164 = getelementptr inbounds %struct.sd, %struct.sd* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  br label %168

165:                                              ; preds = %155
  %166 = load %struct.sd*, %struct.sd** %8, align 8
  %167 = getelementptr inbounds %struct.sd, %struct.sd* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %152
  br label %170

170:                                              ; preds = %49, %169, %120, %92, %65
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %33

174:                                              ; preds = %48, %33
  br label %282

175:                                              ; preds = %3, %3
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %278, %175
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %281

180:                                              ; preds = %176
  %181 = load %struct.sd*, %struct.sd** %8, align 8
  %182 = getelementptr inbounds %struct.sd, %struct.sd* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %277 [
    i32 0, label %184
    i32 1, label %197
  ]

184:                                              ; preds = %180
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load %struct.sd*, %struct.sd** %8, align 8
  %193 = getelementptr inbounds %struct.sd, %struct.sd* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %191, %184
  br label %277

197:                                              ; preds = %180
  %198 = load %struct.sd*, %struct.sd** %8, align 8
  %199 = getelementptr inbounds %struct.sd, %struct.sd* %198, i32 0, i32 1
  store i32 0, i32* %199, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 255
  br i1 %205, label %206, label %276

206:                                              ; preds = %197
  %207 = load i32, i32* %11, align 4
  %208 = icmp sge i32 %207, 4
  br i1 %208, label %209, label %243

209:                                              ; preds = %206
  %210 = load i32, i32* @D_FRAM, align 4
  %211 = load i32, i32* %11, align 4
  %212 = sub nsw i32 %211, 1
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sub nsw i32 %214, 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sub nsw i32 %220, 3
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 2
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @PDEBUG(i32 %210, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %212, i32 %218, i32 %224, i32 %229, i32 %235, i32 %241)
  br label %265

243:                                              ; preds = %206
  %244 = load i32, i32* @D_FRAM, align 4
  %245 = load i32, i32* %11, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %6, align 8
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %6, align 8
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @PDEBUG(i32 %244, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %246, i32 %251, i32 %257, i32 %263)
  br label %265

265:                                              ; preds = %243, %209
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load %struct.sd*, %struct.sd** %8, align 8
  %271 = getelementptr inbounds %struct.sd, %struct.sd* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %269, i64 %274
  store i32* %275, i32** %4, align 8
  br label %283

276:                                              ; preds = %197
  br label %277

277:                                              ; preds = %180, %276, %196
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %11, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %11, align 4
  br label %176

281:                                              ; preds = %176
  br label %282

282:                                              ; preds = %3, %281, %174
  store i32* null, i32** %4, align 8
  br label %283

283:                                              ; preds = %282, %265, %129
  %284 = load i32*, i32** %4, align 8
  ret i32* %284
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
