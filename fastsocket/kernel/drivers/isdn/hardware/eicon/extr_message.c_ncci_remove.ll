; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_ncci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_ncci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64*, i64*, i32*, i8**, i64* }

@ncci_mapping_bug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NCCI mapping doesn't exist %ld %08lx %02x\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"NCCI mapping released %ld %08lx %02x %02x-%02x\00", align 1
@IDLE = common dso_local global i8* null, align 8
@MAX_NCCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @ncci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncci_remove(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 16
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %14, %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ncci_free_receive_buffers(%struct.TYPE_6__* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %196

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32, i32* @ncci_mapping_bug, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @ncci_mapping_bug, align 4
  %49 = load i32, i32* @ncci_mapping_bug, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i8*, i32, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = call i32 @dbug(i32 1, i32 %52)
  br label %195

54:                                               ; preds = %34
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cleanup_ncci_data(%struct.TYPE_6__* %55, i32 %56)
  %58 = load i32, i32* @ncci_mapping_bug, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i8*, i32, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i64 %67, i32 %68)
  %70 = call i32 @dbug(i32 1, i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %73, i64 %80
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %194, label %84

84:                                               ; preds = %54
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 0, i64* %96, align 8
  %97 = load i8*, i8** @IDLE, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i8**, i8*** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %97, i8** %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %134, %84
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %110
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %129, %130
  br label %132

132:                                              ; preds = %122, %110, %107
  %133 = phi i1 [ false, %110 ], [ false, %107 ], [ %131, %122 ]
  br i1 %133, label %134, label %142

134:                                              ; preds = %132
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %9, align 4
  br label %107

142:                                              ; preds = %132
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %187

145:                                              ; preds = %142
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %187

155:                                              ; preds = %145
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32 0, i32* %161, align 8
  br label %173

162:                                              ; preds = %155
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %162
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  br label %187

187:                                              ; preds = %173, %145, %142
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %187, %54
  br label %195

195:                                              ; preds = %194, %46
  br label %282

196:                                              ; preds = %31
  store i32 1, i32* %5, align 4
  br label %197

197:                                              ; preds = %272, %196
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @MAX_NCCI, align 4
  %200 = add nsw i32 %199, 1
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %275

202:                                              ; preds = %197
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %214, label %271

214:                                              ; preds = %202
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @cleanup_ncci_data(%struct.TYPE_6__* %215, i32 %216)
  %218 = load i32, i32* @ncci_mapping_bug, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = call i32 (i8*, i32, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %218, i32 %219, i32 %220, i64 %227, i32 %228)
  %230 = call i32 @dbug(i32 1, i32 %229)
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 5
  %233 = load i64*, i64** %232, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds i64, i64* %233, i64 %240
  store i64 0, i64* %241, align 8
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %270, label %244

244:                                              ; preds = %214
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  store i64 0, i64* %250, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  store i64 0, i64* %256, align 8
  %257 = load i8*, i8** @IDLE, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 4
  %260 = load i8**, i8*** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  store i8* %257, i8** %263, align 8
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 0, i32* %269, align 4
  br label %270

270:                                              ; preds = %244, %214
  br label %271

271:                                              ; preds = %270, %202
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  br label %197

275:                                              ; preds = %197
  %276 = load i32, i32* %6, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  store i32 0, i32* %280, align 8
  br label %281

281:                                              ; preds = %278, %275
  br label %282

282:                                              ; preds = %281, %195
  ret void
}

declare dso_local i32 @ncci_free_receive_buffers(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @cleanup_ncci_data(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
