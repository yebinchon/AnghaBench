; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_ptrace.c_arch_ptrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_ptrace.c_arch_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@PT_SR = common dso_local global i64 0, align 8
@FPU_IS_EMU = common dso_local global i32 0, align 4
@SR_MASK = common dso_local global i64 0, align 8
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i64 0, align 8
@TRACE_BITS = common dso_local global i32 0, align 4
@TIF_DELAYED_TRACE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_ptrace(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %7, align 8
  switch i64 %13, label %333 [
    i64 136, label %14
    i64 137, label %14
    i64 135, label %19
    i64 133, label %83
    i64 134, label %83
    i64 132, label %88
    i64 128, label %167
    i64 141, label %167
    i64 138, label %191
    i64 129, label %206
    i64 139, label %235
    i64 130, label %266
    i64 140, label %309
    i64 131, label %321
  ]

14:                                               ; preds = %4, %4
  %15 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @generic_ptrace_peekdata(%struct.task_struct* %15, i64 %16, i64 %17)
  store i32 %18, i32* %12, align 4
  br label %339

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = and i64 %20, 3
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %342

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = ashr i64 %25, 2
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = icmp slt i64 %30, 19
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @get_reg(%struct.task_struct* %33, i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @PT_SR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i64, i64* %10, align 8
  %41 = lshr i64 %40, 16
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %39, %32
  br label %78

43:                                               ; preds = %29, %24
  %44 = load i64, i64* %8, align 8
  %45 = icmp sge i64 %44, 21
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %47, 49
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub nsw i64 %54, 21
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i32, i32* @FPU_IS_EMU, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %49
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %61, 45
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i64, i64* %8, align 8
  %65 = srem i64 %64, 3
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %10, align 8
  %69 = and i64 %68, 4294901760
  %70 = shl i64 %69, 15
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, 65535
  %73 = shl i64 %72, 16
  %74 = or i64 %70, %73
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %67, %63, %60, %49
  br label %77

76:                                               ; preds = %46, %43
  br label %339

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %42
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = call i32 @put_user(i64 %79, i64* %81)
  store i32 %82, i32* %12, align 4
  br label %339

83:                                               ; preds = %4, %4
  %84 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @generic_ptrace_pokedata(%struct.task_struct* %84, i64 %85, i64 %86)
  store i32 %87, i32* %12, align 4
  br label %339

88:                                               ; preds = %4
  %89 = load i64, i64* %8, align 8
  %90 = and i64 %89, 3
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %342

93:                                               ; preds = %88
  %94 = load i64, i64* %8, align 8
  %95 = ashr i64 %94, 2
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @PT_SR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load i64, i64* @SR_MASK, align 8
  %101 = load i64, i64* %9, align 8
  %102 = and i64 %101, %100
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = shl i64 %103, 16
  store i64 %104, i64* %9, align 8
  %105 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %106 = load i64, i64* @PT_SR, align 8
  %107 = call i64 @get_reg(%struct.task_struct* %105, i64 %106)
  %108 = load i64, i64* @SR_MASK, align 8
  %109 = shl i64 %108, 16
  %110 = xor i64 %109, -1
  %111 = and i64 %107, %110
  %112 = load i64, i64* %9, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %9, align 8
  br label %166

114:                                              ; preds = %93
  %115 = load i64, i64* %8, align 8
  %116 = icmp sge i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i64, i64* %8, align 8
  %119 = icmp slt i64 %118, 19
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %122 = load i64, i64* %8, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @put_reg(%struct.task_struct* %121, i32 %123, i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %342

128:                                              ; preds = %120
  br label %165

129:                                              ; preds = %117, %114
  %130 = load i64, i64* %8, align 8
  %131 = icmp sge i64 %130, 21
  br i1 %131, label %132, label %163

132:                                              ; preds = %129
  %133 = load i64, i64* %8, align 8
  %134 = icmp slt i64 %133, 48
  br i1 %134, label %135, label %163

135:                                              ; preds = %132
  %136 = load i32, i32* @FPU_IS_EMU, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i64, i64* %8, align 8
  %140 = icmp slt i64 %139, 45
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load i64, i64* %8, align 8
  %143 = srem i64 %142, 3
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %9, align 8
  %147 = shl i64 %146, 15
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %9, align 8
  %149 = and i64 %148, 4294901760
  %150 = load i64, i64* %9, align 8
  %151 = and i64 %150, 65535
  %152 = ashr i64 %151, 1
  %153 = or i64 %149, %152
  store i64 %153, i64* %9, align 8
  br label %154

154:                                              ; preds = %145, %141, %138, %135
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %157 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = sub nsw i64 %160, 21
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64 %155, i64* %162, align 8
  br label %164

163:                                              ; preds = %132, %129
  br label %342

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %128
  br label %166

166:                                              ; preds = %165, %99
  br label %339

167:                                              ; preds = %4, %4
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @valid_signal(i64 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  br label %342

172:                                              ; preds = %167
  %173 = load i64, i64* %7, align 8
  %174 = icmp eq i64 %173, 128
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %177 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %178 = call i32 @set_tsk_thread_flag(%struct.task_struct* %176, i32 %177)
  br label %183

179:                                              ; preds = %172
  %180 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %181 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %182 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %175
  %184 = load i64, i64* %9, align 8
  %185 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %186 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %188 = call i32 @singlestep_disable(%struct.task_struct* %187)
  %189 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %190 = call i32 @wake_up_process(%struct.task_struct* %189)
  br label %339

191:                                              ; preds = %4
  %192 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %193 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @EXIT_ZOMBIE, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %339

198:                                              ; preds = %191
  %199 = load i64, i64* @SIGKILL, align 8
  %200 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %201 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  %202 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %203 = call i32 @singlestep_disable(%struct.task_struct* %202)
  %204 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %205 = call i32 @wake_up_process(%struct.task_struct* %204)
  br label %339

206:                                              ; preds = %4
  %207 = load i64, i64* %9, align 8
  %208 = call i32 @valid_signal(i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  br label %342

211:                                              ; preds = %206
  %212 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %213 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %214 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %212, i32 %213)
  %215 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %216 = load i64, i64* @PT_SR, align 8
  %217 = call i64 @get_reg(%struct.task_struct* %215, i64 %216)
  %218 = load i32, i32* @TRACE_BITS, align 4
  %219 = shl i32 %218, 16
  %220 = sext i32 %219 to i64
  %221 = or i64 %217, %220
  store i64 %221, i64* %10, align 8
  %222 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %223 = load i64, i64* @PT_SR, align 8
  %224 = trunc i64 %223 to i32
  %225 = load i64, i64* %10, align 8
  %226 = call i32 @put_reg(%struct.task_struct* %222, i32 %224, i64 %225)
  %227 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %228 = load i32, i32* @TIF_DELAYED_TRACE, align 4
  %229 = call i32 @set_tsk_thread_flag(%struct.task_struct* %227, i32 %228)
  %230 = load i64, i64* %9, align 8
  %231 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %232 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %234 = call i32 @wake_up_process(%struct.task_struct* %233)
  br label %339

235:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %262, %235
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %237, 19
  br i1 %238, label %239, label %265

239:                                              ; preds = %236
  %240 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = call i64 @get_reg(%struct.task_struct* %240, i64 %242)
  store i64 %243, i64* %10, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* @PT_SR, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load i64, i64* %10, align 8
  %250 = lshr i64 %249, 16
  store i64 %250, i64* %10, align 8
  br label %251

251:                                              ; preds = %248, %239
  %252 = load i64, i64* %10, align 8
  %253 = load i64, i64* %9, align 8
  %254 = inttoptr i64 %253 to i64*
  %255 = call i32 @put_user(i64 %252, i64* %254)
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  br label %265

259:                                              ; preds = %251
  %260 = load i64, i64* %9, align 8
  %261 = add i64 %260, 8
  store i64 %261, i64* %9, align 8
  br label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %236

265:                                              ; preds = %258, %236
  br label %339

266:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %267

267:                                              ; preds = %305, %266
  %268 = load i32, i32* %11, align 4
  %269 = icmp slt i32 %268, 19
  br i1 %269, label %270, label %308

270:                                              ; preds = %267
  %271 = load i64, i64* %10, align 8
  %272 = load i64, i64* %9, align 8
  %273 = inttoptr i64 %272 to i64*
  %274 = call i32 @get_user(i64 %271, i64* %273)
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %12, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %270
  br label %308

278:                                              ; preds = %270
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* @PT_SR, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %278
  %284 = load i64, i64* @SR_MASK, align 8
  %285 = load i64, i64* %10, align 8
  %286 = and i64 %285, %284
  store i64 %286, i64* %10, align 8
  %287 = load i64, i64* %10, align 8
  %288 = shl i64 %287, 16
  store i64 %288, i64* %10, align 8
  %289 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %290 = load i64, i64* @PT_SR, align 8
  %291 = call i64 @get_reg(%struct.task_struct* %289, i64 %290)
  %292 = load i64, i64* @SR_MASK, align 8
  %293 = shl i64 %292, 16
  %294 = xor i64 %293, -1
  %295 = and i64 %291, %294
  %296 = load i64, i64* %10, align 8
  %297 = or i64 %296, %295
  store i64 %297, i64* %10, align 8
  br label %298

298:                                              ; preds = %283, %278
  %299 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %300 = load i32, i32* %11, align 4
  %301 = load i64, i64* %10, align 8
  %302 = call i32 @put_reg(%struct.task_struct* %299, i32 %300, i64 %301)
  %303 = load i64, i64* %9, align 8
  %304 = add i64 %303, 8
  store i64 %304, i64* %9, align 8
  br label %305

305:                                              ; preds = %298
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %11, align 4
  br label %267

308:                                              ; preds = %277, %267
  br label %339

309:                                              ; preds = %4
  %310 = load i64, i64* %9, align 8
  %311 = inttoptr i64 %310 to i8*
  %312 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %313 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = call i32 @copy_to_user(i8* %311, i64** %314, i32 4)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %309
  %318 = load i32, i32* @EFAULT, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %12, align 4
  br label %320

320:                                              ; preds = %317, %309
  br label %339

321:                                              ; preds = %4
  %322 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %323 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 0
  %325 = load i64, i64* %9, align 8
  %326 = inttoptr i64 %325 to i8*
  %327 = call i32 @copy_from_user(i64** %324, i8* %326, i32 4)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %321
  %330 = load i32, i32* @EFAULT, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %12, align 4
  br label %332

332:                                              ; preds = %329, %321
  br label %339

333:                                              ; preds = %4
  %334 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %335 = load i64, i64* %7, align 8
  %336 = load i64, i64* %8, align 8
  %337 = load i64, i64* %9, align 8
  %338 = call i32 @ptrace_request(%struct.task_struct* %334, i64 %335, i64 %336, i64 %337)
  store i32 %338, i32* %12, align 4
  br label %339

339:                                              ; preds = %333, %332, %320, %308, %265, %211, %198, %197, %183, %166, %83, %78, %76, %14
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %5, align 8
  br label %345

342:                                              ; preds = %210, %171, %163, %127, %92, %23
  %343 = load i64, i64* @EIO, align 8
  %344 = sub nsw i64 0, %343
  store i64 %344, i64* %5, align 8
  br label %345

345:                                              ; preds = %342, %339
  %346 = load i64, i64* %5, align 8
  ret i64 %346
}

declare dso_local i32 @generic_ptrace_peekdata(%struct.task_struct*, i64, i64) #1

declare dso_local i64 @get_reg(%struct.task_struct*, i64) #1

declare dso_local i32 @put_user(i64, i64*) #1

declare dso_local i32 @generic_ptrace_pokedata(%struct.task_struct*, i64, i64) #1

declare dso_local i32 @put_reg(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @singlestep_disable(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @get_user(i64, i64*) #1

declare dso_local i32 @copy_to_user(i8*, i64**, i32) #1

declare dso_local i32 @copy_from_user(i64**, i8*, i32) #1

declare dso_local i32 @ptrace_request(%struct.task_struct*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
