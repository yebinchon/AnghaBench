; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_clear_breakpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_clear_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i32**, i32**, i32*, i32* }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { i64, i64 }

@gdbstub_bkpts = common dso_local global %struct.TYPE_3__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@__debug_regs = common dso_local global %struct.TYPE_4__* null, align 8
@DCR_IBE0 = common dso_local global i32 0, align 4
@DCR_IBE1 = common dso_local global i32 0, align 4
@DCR_IBE2 = common dso_local global i32 0, align 4
@DCR_IBE3 = common dso_local global i32 0, align 4
@DCR_DWBE0 = common dso_local global i64 0, align 8
@DCR_DRBE0 = common dso_local global i64 0, align 8
@DCR_DWBE1 = common dso_local global i64 0, align 8
@DCR_DRBE1 = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbstub_clear_breakpoint(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.anon, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %32 = load i64, i64* %5, align 8
  switch i64 %32, label %431 [
    i64 0, label %33
    i64 1, label %104
    i64 2, label %213
    i64 3, label %213
    i64 4, label %213
  ]

33:                                               ; preds = %3
  store i32 255, i32* %9, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %60

56:                                               ; preds = %46, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  br label %34

60:                                               ; preds = %55, %34
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %434

66:                                               ; preds = %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %100, %66
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = udiv i64 %75, 4
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = load i64, i64* %6, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @gdbstub_write_dword(i32* %83, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %78
  %97 = load i32, i32* @EFAULT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %434

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %72

103:                                              ; preds = %72
  store i32 0, i32* %4, align 4
  br label %434

104:                                              ; preds = %3
  %105 = load i64, i64* %6, align 8
  %106 = and i64 %105, 3
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 4
  br i1 %110, label %111, label %114

111:                                              ; preds = %108, %104
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %434

114:                                              ; preds = %108
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @DCR_IBE0, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %114
  %122 = call i64 asm sideeffect "movsg ibar0,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %6, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load i32, i32* @DCR_IBE0, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 0, i32* %137, align 4
  call void asm sideeffect "movgs gr0,ibar0", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 0, i32* %4, align 4
  br label %434

138:                                              ; preds = %121, %114
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DCR_IBE1, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %138
  %146 = call i64 asm sideeffect "movsg ibar1,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* %14, align 8
  store i64 %147, i64* %15, align 8
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load i32, i32* @DCR_IBE1, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 0, i32* %161, align 4
  call void asm sideeffect "movgs gr0,ibar1", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store i32 0, i32* %4, align 4
  br label %434

162:                                              ; preds = %145, %138
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @DCR_IBE2, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %162
  %170 = call i64 asm sideeffect "movsg ibar2,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  store i64 %170, i64* %16, align 8
  %171 = load i64, i64* %16, align 8
  store i64 %171, i64* %17, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* %6, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = load i32, i32* @DCR_IBE2, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32 0, i32* %185, align 4
  call void asm sideeffect "movgs gr0,ibar2", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !7
  store i32 0, i32* %4, align 4
  br label %434

186:                                              ; preds = %169, %162
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @DCR_IBE3, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = call i64 asm sideeffect "movsg ibar3,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !8
  store i64 %194, i64* %18, align 8
  %195 = load i64, i64* %18, align 8
  store i64 %195, i64* %19, align 8
  %196 = load i64, i64* %19, align 8
  %197 = load i64, i64* %6, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %193
  %200 = load i32, i32* @DCR_IBE3, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  store i32 0, i32* %209, align 4
  call void asm sideeffect "movgs gr0,ibar3", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !9
  store i32 0, i32* %4, align 4
  br label %434

210:                                              ; preds = %193, %186
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %4, align 4
  br label %434

213:                                              ; preds = %3, %3, %3
  %214 = load i64, i64* %6, align 8
  %215 = and i64 %214, -8
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* %7, align 8
  %218 = add i64 %216, %217
  %219 = sub i64 %218, 1
  %220 = and i64 %219, -8
  %221 = icmp ne i64 %215, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %213
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %434

225:                                              ; preds = %213
  %226 = load i64, i64* %6, align 8
  %227 = and i64 %226, 7
  store i64 %227, i64* %8, align 8
  %228 = bitcast %union.anon* %11 to [8 x i32]*
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %228, i64 0, i64 0
  %230 = call i32 @memset(i32* %229, i32 255, i32 32)
  store i32 0, i32* %10, align 4
  br label %231

231:                                              ; preds = %243, %225
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %7, align 8
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %231
  %237 = bitcast %union.anon* %11 to [8 x i32]*
  %238 = load i64, i64* %8, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 %238, %240
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %237, i64 0, i64 %241
  store i32 0, i32* %242, align 4
  br label %243

243:                                              ; preds = %236
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  br label %231

246:                                              ; preds = %231
  %247 = load i64, i64* %6, align 8
  %248 = and i64 %247, -8
  store i64 %248, i64* %6, align 8
  %249 = load i64, i64* %5, align 8
  %250 = icmp eq i64 %249, 2
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i64, i64* @DCR_DWBE0, align 8
  br label %264

253:                                              ; preds = %246
  %254 = load i64, i64* %5, align 8
  %255 = icmp eq i64 %254, 3
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i64, i64* @DCR_DRBE0, align 8
  br label %262

258:                                              ; preds = %253
  %259 = load i64, i64* @DCR_DRBE0, align 8
  %260 = load i64, i64* @DCR_DWBE0, align 8
  %261 = or i64 %259, %260
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi i64 [ %257, %256 ], [ %261, %258 ]
  br label %264

264:                                              ; preds = %262, %251
  %265 = phi i64 [ %252, %251 ], [ %263, %262 ]
  store i64 %265, i64* %8, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* @DCR_DRBE0, align 8
  %271 = load i64, i64* @DCR_DWBE0, align 8
  %272 = or i64 %270, %271
  %273 = and i64 %269, %272
  %274 = load i64, i64* %8, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %298, label %276

276:                                              ; preds = %264
  %277 = call i64 asm sideeffect "movsg dbar0,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !10
  store i64 %277, i64* %20, align 8
  %278 = load i64, i64* %20, align 8
  store i64 %278, i64* %21, align 8
  %279 = load i64, i64* %21, align 8
  %280 = load i64, i64* %6, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %298, label %282

282:                                              ; preds = %276
  %283 = call i64 asm sideeffect "movsg dbmr00,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !11
  store i64 %283, i64* %22, align 8
  %284 = load i64, i64* %22, align 8
  store i64 %284, i64* %23, align 8
  %285 = load i64, i64* %23, align 8
  %286 = bitcast %union.anon* %11 to %struct.anon*
  %287 = getelementptr inbounds %struct.anon, %struct.anon* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %285, %288
  br i1 %289, label %298, label %290

290:                                              ; preds = %282
  %291 = call i64 asm sideeffect "movsg dbmr01,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !12
  store i64 %291, i64* %24, align 8
  %292 = load i64, i64* %24, align 8
  store i64 %292, i64* %25, align 8
  %293 = load i64, i64* %25, align 8
  %294 = bitcast %union.anon* %11 to %struct.anon*
  %295 = getelementptr inbounds %struct.anon, %struct.anon* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %293, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %290, %282, %276, %264
  br label %338

299:                                              ; preds = %290
  %300 = load i64, i64* @DCR_DRBE0, align 8
  %301 = load i64, i64* @DCR_DWBE0, align 8
  %302 = or i64 %300, %301
  %303 = xor i64 %302, -1
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = and i64 %307, %303
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %305, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 3
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  store i32 0, i32* %313, align 4
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 2
  %316 = load i32**, i32*** %315, align 8
  %317 = getelementptr inbounds i32*, i32** %316, i64 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  store i32 0, i32* %319, align 4
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 2
  %322 = load i32**, i32*** %321, align 8
  %323 = getelementptr inbounds i32*, i32** %322, i64 0
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 1
  store i32 0, i32* %325, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  %328 = load i32**, i32*** %327, align 8
  %329 = getelementptr inbounds i32*, i32** %328, i64 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  store i32 0, i32* %331, align 4
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 1
  %334 = load i32**, i32*** %333, align 8
  %335 = getelementptr inbounds i32*, i32** %334, i64 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  store i32 0, i32* %337, align 4
  call void asm sideeffect "\09movgs\09gr0,dbar0\09\0A\09movgs\09gr0,dbmr00\09\0A\09movgs\09gr0,dbmr01\09\0A\09movgs\09gr0,dbdr00\09\0A\09movgs\09gr0,dbdr01\09\0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !13
  store i32 0, i32* %4, align 4
  br label %434

338:                                              ; preds = %298
  %339 = load i64, i64* %5, align 8
  %340 = icmp eq i64 %339, 2
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i64, i64* @DCR_DWBE1, align 8
  br label %354

343:                                              ; preds = %338
  %344 = load i64, i64* %5, align 8
  %345 = icmp eq i64 %344, 3
  br i1 %345, label %346, label %348

346:                                              ; preds = %343
  %347 = load i64, i64* @DCR_DRBE1, align 8
  br label %352

348:                                              ; preds = %343
  %349 = load i64, i64* @DCR_DRBE1, align 8
  %350 = load i64, i64* @DCR_DWBE1, align 8
  %351 = or i64 %349, %350
  br label %352

352:                                              ; preds = %348, %346
  %353 = phi i64 [ %347, %346 ], [ %351, %348 ]
  br label %354

354:                                              ; preds = %352, %341
  %355 = phi i64 [ %342, %341 ], [ %353, %352 ]
  store i64 %355, i64* %8, align 8
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = load i64, i64* @DCR_DRBE1, align 8
  %361 = load i64, i64* @DCR_DWBE1, align 8
  %362 = or i64 %360, %361
  %363 = and i64 %359, %362
  %364 = load i64, i64* %8, align 8
  %365 = icmp ne i64 %363, %364
  br i1 %365, label %388, label %366

366:                                              ; preds = %354
  %367 = call i64 asm sideeffect "movsg dbar1,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !14
  store i64 %367, i64* %26, align 8
  %368 = load i64, i64* %26, align 8
  store i64 %368, i64* %27, align 8
  %369 = load i64, i64* %27, align 8
  %370 = load i64, i64* %6, align 8
  %371 = icmp ne i64 %369, %370
  br i1 %371, label %388, label %372

372:                                              ; preds = %366
  %373 = call i64 asm sideeffect "movsg dbmr10,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !15
  store i64 %373, i64* %28, align 8
  %374 = load i64, i64* %28, align 8
  store i64 %374, i64* %29, align 8
  %375 = load i64, i64* %29, align 8
  %376 = bitcast %union.anon* %11 to %struct.anon*
  %377 = getelementptr inbounds %struct.anon, %struct.anon* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %375, %378
  br i1 %379, label %388, label %380

380:                                              ; preds = %372
  %381 = call i64 asm sideeffect "movsg dbmr11,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !16
  store i64 %381, i64* %30, align 8
  %382 = load i64, i64* %30, align 8
  store i64 %382, i64* %31, align 8
  %383 = load i64, i64* %31, align 8
  %384 = bitcast %union.anon* %11 to %struct.anon*
  %385 = getelementptr inbounds %struct.anon, %struct.anon* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %383, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %380, %372, %366, %354
  br label %428

389:                                              ; preds = %380
  %390 = load i64, i64* @DCR_DRBE1, align 8
  %391 = load i64, i64* @DCR_DWBE1, align 8
  %392 = or i64 %390, %391
  %393 = xor i64 %392, -1
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = sext i32 %396 to i64
  %398 = and i64 %397, %393
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %395, align 8
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 3
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 1
  store i32 0, i32* %403, align 4
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 2
  %406 = load i32**, i32*** %405, align 8
  %407 = getelementptr inbounds i32*, i32** %406, i64 1
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  store i32 0, i32* %409, align 4
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 2
  %412 = load i32**, i32*** %411, align 8
  %413 = getelementptr inbounds i32*, i32** %412, i64 1
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 1
  store i32 0, i32* %415, align 4
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 1
  %418 = load i32**, i32*** %417, align 8
  %419 = getelementptr inbounds i32*, i32** %418, i64 1
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 0
  store i32 0, i32* %421, align 4
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 1
  %424 = load i32**, i32*** %423, align 8
  %425 = getelementptr inbounds i32*, i32** %424, i64 1
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 1
  store i32 0, i32* %427, align 4
  call void asm sideeffect "\09movgs\09gr0,dbar1\09\0A\09movgs\09gr0,dbmr10\09\0A\09movgs\09gr0,dbmr11\09\0A\09movgs\09gr0,dbdr10\09\0A\09movgs\09gr0,dbdr11\09\0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !17
  store i32 0, i32* %4, align 4
  br label %434

428:                                              ; preds = %388
  %429 = load i32, i32* @ENOSPC, align 4
  %430 = sub nsw i32 0, %429
  store i32 %430, i32* %4, align 4
  br label %434

431:                                              ; preds = %3
  %432 = load i32, i32* @EINVAL, align 4
  %433 = sub nsw i32 0, %432
  store i32 %433, i32* %4, align 4
  br label %434

434:                                              ; preds = %431, %428, %389, %299, %222, %210, %199, %175, %151, %127, %111, %103, %96, %63
  %435 = load i32, i32* %4, align 4
  ret i32 %435
}

declare dso_local i32 @gdbstub_write_dword(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1643}
!3 = !{i32 1775}
!4 = !{i32 1884}
!5 = !{i32 2016}
!6 = !{i32 2125}
!7 = !{i32 2257}
!8 = !{i32 2366}
!9 = !{i32 2498}
!10 = !{i32 2978}
!11 = !{i32 3067}
!12 = !{i32 3163}
!13 = !{i32 3460, i32 3491, i32 3522, i32 3553, i32 3584}
!14 = !{i32 3808}
!15 = !{i32 3897}
!16 = !{i32 3993}
!17 = !{i32 4290, i32 4321, i32 4352, i32 4383, i32 4414}
