; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_process_echoes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_process_echoes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@TTY_HW_COOK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @process_echoes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_echoes(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %305

20:                                               ; preds = %1
  %21 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 6
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 7
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = call i32 @tty_write_room(%struct.tty_struct* %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %7, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %247, %20
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %248

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %5, align 1
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %200

55:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = sext i32 %62 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %8, align 1
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  switch i32 %71, label %172 [
    i32 131, label %72
    i32 129, label %130
    i32 130, label %140
    i32 128, label %155
  ]

72:                                               ; preds = %67
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8* %82, i8** %9, align 8
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %83
  %91 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %90, %83
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 7
  %99 = sub i32 8, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %3, align 4
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* %10, align 4
  br label %195

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %3, align 4
  %107 = sub i32 %106, %105
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %124, %104
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, -1
  store i32 %110, i32* %12, align 4
  %111 = icmp ne i32 %109, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %114 = call i32 @tty_put_char(%struct.tty_struct* %113, i8 zeroext 8)
  %115 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %116 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ugt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %121 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = add i32 %122, -1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %112
  br label %108

125:                                              ; preds = %108
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  store i8* %127, i8** %6, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sub nsw i32 %128, 3
  store i32 %129, i32* %4, align 4
  br label %195

130:                                              ; preds = %67
  %131 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %132 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %135 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  store i8* %137, i8** %6, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sub nsw i32 %138, 2
  store i32 %139, i32* %4, align 4
  br label %195

140:                                              ; preds = %67
  %141 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %142 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = icmp ugt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %147 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = add i32 %148, -1
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %145, %140
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %152, i8** %6, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sub nsw i32 %153, 2
  store i32 %154, i32* %4, align 4
  br label %195

155:                                              ; preds = %67
  %156 = load i32, i32* %3, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  store i32 1, i32* %10, align 4
  br label %195

159:                                              ; preds = %155
  %160 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %161 = call i32 @tty_put_char(%struct.tty_struct* %160, i8 zeroext -128)
  %162 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %163 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = add i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %3, align 4
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  store i8* %169, i8** %6, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sub nsw i32 %170, 2
  store i32 %171, i32* %4, align 4
  br label %195

172:                                              ; preds = %67
  %173 = load i32, i32* %3, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 1, i32* %10, align 4
  br label %195

176:                                              ; preds = %172
  %177 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %178 = call i32 @tty_put_char(%struct.tty_struct* %177, i8 zeroext 94)
  %179 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %180 = load i8, i8* %8, align 1
  %181 = zext i8 %180 to i32
  %182 = xor i32 %181, 64
  %183 = trunc i32 %182 to i8
  %184 = call i32 @tty_put_char(%struct.tty_struct* %179, i8 zeroext %183)
  %185 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %186 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = add i32 %187, 2
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sub nsw i32 %189, 2
  store i32 %190, i32* %3, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  store i8* %192, i8** %6, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 %193, 2
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %176, %175, %159, %158, %150, %130, %125, %103
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %248

199:                                              ; preds = %195
  br label %237

200:                                              ; preds = %49
  %201 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %202 = call i64 @O_OPOST(%struct.tty_struct* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %222

204:                                              ; preds = %200
  %205 = load i32, i32* @TTY_HW_COOK_OUT, align 4
  %206 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %207 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %206, i32 0, i32 9
  %208 = call i32 @test_bit(i32 %205, i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %204
  %211 = load i8, i8* %5, align 1
  %212 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @do_output_char(i8 zeroext %211, %struct.tty_struct* %212, i32 %213)
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %248

218:                                              ; preds = %210
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %3, align 4
  %221 = sub nsw i32 %220, %219
  store i32 %221, i32* %3, align 4
  br label %232

222:                                              ; preds = %204, %200
  %223 = load i32, i32* %3, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  br label %248

226:                                              ; preds = %222
  %227 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %228 = load i8, i8* %5, align 1
  %229 = call i32 @tty_put_char(%struct.tty_struct* %227, i8 zeroext %228)
  %230 = load i32, i32* %3, align 4
  %231 = sub nsw i32 %230, 1
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %226, %218
  %233 = load i8*, i8** %6, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  store i8* %234, i8** %6, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %232, %199
  %238 = load i8*, i8** %6, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = icmp uge i8* %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %243 = load i8*, i8** %6, align 8
  %244 = sext i32 %242 to i64
  %245 = sub i64 0, %244
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  store i8* %246, i8** %6, align 8
  br label %247

247:                                              ; preds = %241, %237
  br label %46

248:                                              ; preds = %225, %217, %198, %46
  %249 = load i32, i32* %4, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %253 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %252, i32 0, i32 2
  store i32 0, i32* %253, align 8
  %254 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %255 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  %256 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %257 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %256, i32 0, i32 8
  store i64 0, i64* %257, align 8
  br label %284

258:                                              ; preds = %248
  %259 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %260 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %4, align 4
  %263 = sub nsw i32 %261, %262
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %14, align 4
  %265 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %266 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %270 = sub nsw i32 %269, 1
  %271 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %272 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load i32, i32* %4, align 4
  %276 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %277 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %14, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %258
  %281 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %282 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %281, i32 0, i32 8
  store i64 0, i64* %282, align 8
  br label %283

283:                                              ; preds = %280, %258
  br label %284

284:                                              ; preds = %283, %251
  %285 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %286 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %285, i32 0, i32 7
  %287 = call i32 @mutex_unlock(i32* %286)
  %288 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %289 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %288, i32 0, i32 6
  %290 = call i32 @mutex_unlock(i32* %289)
  %291 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %292 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %291, i32 0, i32 5
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %294, align 8
  %296 = icmp ne i32 (%struct.tty_struct*)* %295, null
  br i1 %296, label %297, label %305

297:                                              ; preds = %284
  %298 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %299 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %298, i32 0, i32 5
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %301, align 8
  %303 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %304 = call i32 %302(%struct.tty_struct* %303)
  br label %305

305:                                              ; preds = %19, %297, %284
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_write_room(%struct.tty_struct*) #1

declare dso_local i32 @tty_put_char(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i64 @O_OPOST(%struct.tty_struct*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @do_output_char(i8 zeroext, %struct.tty_struct*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
