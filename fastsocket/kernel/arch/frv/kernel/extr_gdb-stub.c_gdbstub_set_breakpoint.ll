; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_set_breakpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_set_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i64*, i64*, i64**, i32** }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@gdbstub_bkpts = common dso_local global %struct.TYPE_3__* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@BREAK_INSN = common dso_local global i32 0, align 4
@__debug_regs = common dso_local global %struct.TYPE_4__* null, align 8
@DCR_IBE0 = common dso_local global i32 0, align 4
@DCR_IBE1 = common dso_local global i32 0, align 4
@DCR_IBE2 = common dso_local global i32 0, align 4
@DCR_IBE3 = common dso_local global i32 0, align 4
@DCR_DRBE0 = common dso_local global i64 0, align 8
@DCR_DWBE0 = common dso_local global i64 0, align 8
@DCR_DRBE1 = common dso_local global i64 0, align 8
@DCR_DWBE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @gdbstub_set_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdbstub_set_breakpoint(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.anon, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  switch i64 %13, label %420 [
    i64 0, label %14
    i64 1, label %139
    i64 2, label %228
    i64 3, label %228
    i64 4, label %228
  ]

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = and i64 %15, 3
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 28
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %423

24:                                               ; preds = %18
  store i32 255, i32* %9, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %9, align 4
  br label %25

41:                                               ; preds = %36, %25
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %423

47:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %7, align 8
  %52 = udiv i64 %51, 4
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @gdbstub_read_dword(i32* %59, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %54
  %72 = load i32, i32* @EFAULT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %423

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %48

78:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %123, %78
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %7, align 8
  %83 = udiv i64 %82, 4
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %126

85:                                               ; preds = %79
  %86 = load i64, i64* %6, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* @BREAK_INSN, align 4
  %92 = call i32 @gdbstub_write_dword(i32* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i64, i64* %6, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @gdbstub_write_dword(i32* %104, i32 %114)
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %95

119:                                              ; preds = %95
  %120 = load i32, i32* @EFAULT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %423

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %79

126:                                              ; preds = %79
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i64 %127, i64* %132, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i64 %133, i64* %138, align 8
  store i32 0, i32* %4, align 4
  br label %423

139:                                              ; preds = %3
  %140 = load i64, i64* %6, align 8
  %141 = and i64 %140, 3
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %144, 4
  br i1 %145, label %146, label %149

146:                                              ; preds = %143, %139
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %423

149:                                              ; preds = %143
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @DCR_IBE0, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* @DCR_IBE0, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  store i64 %162, i64* %166, align 8
  %167 = load i64, i64* %6, align 8
  call void asm sideeffect "movgs $0,ibar0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %167) #2, !srcloc !2
  store i32 0, i32* %4, align 4
  br label %423

168:                                              ; preds = %149
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @DCR_IBE1, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* @DCR_IBE1, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i64, i64* %6, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 1
  store i64 %181, i64* %185, align 8
  %186 = load i64, i64* %6, align 8
  call void asm sideeffect "movgs $0,ibar1", "r,~{dirflag},~{fpsr},~{flags}"(i64 %186) #2, !srcloc !3
  store i32 0, i32* %4, align 4
  br label %423

187:                                              ; preds = %168
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @DCR_IBE2, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %187
  %195 = load i32, i32* @DCR_IBE2, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i64, i64* %6, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 2
  store i64 %200, i64* %204, align 8
  %205 = load i64, i64* %6, align 8
  call void asm sideeffect "movgs $0,ibar2", "r,~{dirflag},~{fpsr},~{flags}"(i64 %205) #2, !srcloc !4
  store i32 0, i32* %4, align 4
  br label %423

206:                                              ; preds = %187
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @DCR_IBE3, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %206
  %214 = load i32, i32* @DCR_IBE3, align 4
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 3
  store i64 %219, i64* %223, align 8
  %224 = load i64, i64* %6, align 8
  call void asm sideeffect "movgs $0,ibar3", "r,~{dirflag},~{fpsr},~{flags}"(i64 %224) #2, !srcloc !5
  store i32 0, i32* %4, align 4
  br label %423

225:                                              ; preds = %206
  %226 = load i32, i32* @ENOSPC, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %4, align 4
  br label %423

228:                                              ; preds = %3, %3, %3
  %229 = load i64, i64* %6, align 8
  %230 = and i64 %229, -8
  %231 = load i64, i64* %6, align 8
  %232 = load i64, i64* %7, align 8
  %233 = add i64 %231, %232
  %234 = sub i64 %233, 1
  %235 = and i64 %234, -8
  %236 = icmp ne i64 %230, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %228
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  br label %423

240:                                              ; preds = %228
  %241 = load i64, i64* %6, align 8
  %242 = and i64 %241, 7
  store i64 %242, i64* %8, align 8
  %243 = bitcast %union.anon* %12 to [8 x i32]*
  %244 = getelementptr inbounds [8 x i32], [8 x i32]* %243, i64 0, i64 0
  %245 = call i32 @memset(i32* %244, i32 255, i32 32)
  store i32 0, i32* %10, align 4
  br label %246

246:                                              ; preds = %258, %240
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %7, align 8
  %250 = icmp ult i64 %248, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %246
  %252 = bitcast %union.anon* %12 to [8 x i32]*
  %253 = load i64, i64* %8, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = add i64 %253, %255
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %252, i64 0, i64 %256
  store i32 0, i32* %257, align 4
  br label %258

258:                                              ; preds = %251
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %246

261:                                              ; preds = %246
  %262 = load i64, i64* %6, align 8
  %263 = and i64 %262, -8
  store i64 %263, i64* %6, align 8
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* @DCR_DRBE0, align 8
  %269 = load i64, i64* @DCR_DWBE0, align 8
  %270 = or i64 %268, %269
  %271 = and i64 %267, %270
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %340, label %273

273:                                              ; preds = %261
  %274 = load i64, i64* %5, align 8
  %275 = icmp eq i64 %274, 2
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i64, i64* @DCR_DWBE0, align 8
  br label %289

278:                                              ; preds = %273
  %279 = load i64, i64* %5, align 8
  %280 = icmp eq i64 %279, 3
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i64, i64* @DCR_DRBE0, align 8
  br label %287

283:                                              ; preds = %278
  %284 = load i64, i64* @DCR_DRBE0, align 8
  %285 = load i64, i64* @DCR_DWBE0, align 8
  %286 = or i64 %284, %285
  br label %287

287:                                              ; preds = %283, %281
  %288 = phi i64 [ %282, %281 ], [ %286, %283 ]
  br label %289

289:                                              ; preds = %287, %276
  %290 = phi i64 [ %277, %276 ], [ %288, %287 ]
  store i64 %290, i64* %8, align 8
  %291 = load i64, i64* %8, align 8
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = or i64 %295, %291
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %293, align 8
  %298 = load i64, i64* %6, align 8
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 2
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 0
  store i64 %298, i64* %302, align 8
  %303 = bitcast %union.anon* %12 to %struct.anon*
  %304 = getelementptr inbounds %struct.anon, %struct.anon* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  %308 = load i64**, i64*** %307, align 8
  %309 = getelementptr inbounds i64*, i64** %308, i64 0
  %310 = load i64*, i64** %309, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 0
  store i64 %305, i64* %311, align 8
  %312 = bitcast %union.anon* %12 to %struct.anon*
  %313 = getelementptr inbounds %struct.anon, %struct.anon* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 3
  %317 = load i64**, i64*** %316, align 8
  %318 = getelementptr inbounds i64*, i64** %317, i64 0
  %319 = load i64*, i64** %318, align 8
  %320 = getelementptr inbounds i64, i64* %319, i64 1
  store i64 %314, i64* %320, align 8
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 4
  %323 = load i32**, i32*** %322, align 8
  %324 = getelementptr inbounds i32*, i32** %323, i64 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  store i32 0, i32* %326, align 4
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 4
  %329 = load i32**, i32*** %328, align 8
  %330 = getelementptr inbounds i32*, i32** %329, i64 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  store i32 0, i32* %332, align 4
  %333 = load i64, i64* %6, align 8
  %334 = bitcast %union.anon* %12 to %struct.anon*
  %335 = getelementptr inbounds %struct.anon, %struct.anon* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = bitcast %union.anon* %12 to %struct.anon*
  %338 = getelementptr inbounds %struct.anon, %struct.anon* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  call void asm sideeffect "\09movgs\09$0,dbar0\09\0A\09movgs\09$1,dbmr00\09\0A\09movgs\09$2,dbmr01\09\0A\09movgs\09gr0,dbdr00\09\0A\09movgs\09gr0,dbdr01\09\0A", "r,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %333, i64 %336, i64 %339) #2, !srcloc !6
  store i32 0, i32* %4, align 4
  br label %423

340:                                              ; preds = %261
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = load i64, i64* @DCR_DRBE1, align 8
  %346 = load i64, i64* @DCR_DWBE1, align 8
  %347 = or i64 %345, %346
  %348 = and i64 %344, %347
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %417, label %350

350:                                              ; preds = %340
  %351 = load i64, i64* %5, align 8
  %352 = icmp eq i64 %351, 2
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = load i64, i64* @DCR_DWBE1, align 8
  br label %366

355:                                              ; preds = %350
  %356 = load i64, i64* %5, align 8
  %357 = icmp eq i64 %356, 3
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load i64, i64* @DCR_DRBE1, align 8
  br label %364

360:                                              ; preds = %355
  %361 = load i64, i64* @DCR_DRBE1, align 8
  %362 = load i64, i64* @DCR_DWBE1, align 8
  %363 = or i64 %361, %362
  br label %364

364:                                              ; preds = %360, %358
  %365 = phi i64 [ %359, %358 ], [ %363, %360 ]
  br label %366

366:                                              ; preds = %364, %353
  %367 = phi i64 [ %354, %353 ], [ %365, %364 ]
  store i64 %367, i64* %8, align 8
  %368 = load i64, i64* %8, align 8
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sext i32 %371 to i64
  %373 = or i64 %372, %368
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %370, align 8
  %375 = load i64, i64* %6, align 8
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load i64*, i64** %377, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 1
  store i64 %375, i64* %379, align 8
  %380 = bitcast %union.anon* %12 to %struct.anon*
  %381 = getelementptr inbounds %struct.anon, %struct.anon* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 3
  %385 = load i64**, i64*** %384, align 8
  %386 = getelementptr inbounds i64*, i64** %385, i64 1
  %387 = load i64*, i64** %386, align 8
  %388 = getelementptr inbounds i64, i64* %387, i64 0
  store i64 %382, i64* %388, align 8
  %389 = bitcast %union.anon* %12 to %struct.anon*
  %390 = getelementptr inbounds %struct.anon, %struct.anon* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 3
  %394 = load i64**, i64*** %393, align 8
  %395 = getelementptr inbounds i64*, i64** %394, i64 1
  %396 = load i64*, i64** %395, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 1
  store i64 %391, i64* %397, align 8
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 4
  %400 = load i32**, i32*** %399, align 8
  %401 = getelementptr inbounds i32*, i32** %400, i64 1
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 0
  store i32 0, i32* %403, align 4
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_regs, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 4
  %406 = load i32**, i32*** %405, align 8
  %407 = getelementptr inbounds i32*, i32** %406, i64 1
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  store i32 0, i32* %409, align 4
  %410 = load i64, i64* %6, align 8
  %411 = bitcast %union.anon* %12 to %struct.anon*
  %412 = getelementptr inbounds %struct.anon, %struct.anon* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = bitcast %union.anon* %12 to %struct.anon*
  %415 = getelementptr inbounds %struct.anon, %struct.anon* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  call void asm sideeffect "\09movgs\09$0,dbar1\09\0A\09movgs\09$1,dbmr10\09\0A\09movgs\09$2,dbmr11\09\0A\09movgs\09gr0,dbdr10\09\0A\09movgs\09gr0,dbdr11\09\0A", "r,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %410, i64 %413, i64 %416) #2, !srcloc !7
  store i32 0, i32* %4, align 4
  br label %423

417:                                              ; preds = %340
  %418 = load i32, i32* @ENOSPC, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %4, align 4
  br label %423

420:                                              ; preds = %3
  %421 = load i32, i32* @EINVAL, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %4, align 4
  br label %423

423:                                              ; preds = %420, %417, %366, %289, %237, %225, %213, %194, %175, %156, %146, %126, %119, %71, %44, %21
  %424 = load i32, i32* %4, align 4
  ret i32 %424
}

declare dso_local i32 @gdbstub_read_dword(i32*, i32*) #1

declare dso_local i32 @gdbstub_write_dword(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2086}
!3 = !{i32 2262}
!4 = !{i32 2438}
!5 = !{i32 2614}
!6 = !{i32 3288, i32 3319, i32 3350, i32 3381, i32 3413}
!7 = !{i32 3871, i32 3902, i32 3933, i32 3964, i32 3996}
