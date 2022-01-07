; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/lib/extr_string.c_memcpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/lib/extr_string.c_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMCPY_BY_BLOCK_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memcpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 3
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = and i64 %25, 1
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %10, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %8, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i8*, i8** %8, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = and i64 %40, 2
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to i16*
  %48 = load i16, i16* %47, align 2
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast i8* %49 to i16*
  store i16 %48, i16* %50, align 2
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %43, %38
  br label %56

56:                                               ; preds = %55, %20, %3
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @MEMCPY_BY_BLOCK_THRESHOLD, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call { i8*, i8*, i32 } asm sideeffect "\09 ;; GCC does promise correct register allocations, but let's\09\0A\09 ;; make sure it keeps its promises.\09\09\09\09\0A\09 .ifnc $0-$1-$2,$$r13-$$r11-$$r12\09\09\09\09\09\0A\09 .error \22GCC reg alloc bug: $0-$1-$4 != $$r13-$$r12-$$r11\22\09\0A\09 .endif\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09 ;; Save the registers we'll use in the movem process\09\09\0A\09 ;; on the stack.\09\09\09\09\09\09\0A\09 subq\0911*4,sp\09\09\09\09\09\09\09\0A\09 movem\09r10,[sp]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09 ;; Now we've got this:\09\09\09\09\09\09\0A\09 ;; r11 - src\09\09\09\09\09\09\09\0A\09 ;; r13 - dst\09\09\09\09\09\09\09\0A\09 ;; r12 - n\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09 ;; Update n for the first loop.\09\09\09\09\0A\09 subq\09 44,r12\09\09\09\09\09\09\09\0A0:\09\09\09\09\09\09\09\09\09\0A\09 movem\09[r11+],r10\09\09\09\09\09\09\0A\09 subq\0944,r12\09\09\09\09\09\09\09\0A\09 bge\09 0b\09\09\09\09\09\09\09\0A\09 movem\09r10,[r13+]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09 ;; Compensate for last loop underflowing n.\09\09\09\0A\09 addq\0944,r12\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09 ;; Restore registers from stack.\09\09\09\09\0A\09 movem [sp+],r10", "={r13},={r11},={r12},{r13},{r11},{r12},~{dirflag},~{fpsr},~{flags}"(i8* %61, i8* %62, i32 %63) #1, !srcloc !2
  %65 = extractvalue { i8*, i8*, i32 } %64, 0
  %66 = extractvalue { i8*, i8*, i32 } %64, 1
  %67 = extractvalue { i8*, i8*, i32 } %64, 2
  store i8* %65, i8** %8, align 8
  store i8* %66, i8** %9, align 8
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %60, %56
  br label %69

69:                                               ; preds = %72, %68
  %70 = load i32, i32* %10, align 4
  %71 = icmp sge i32 %70, 16
  br i1 %71, label %72, label %111

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = bitcast i8* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = bitcast i8* %76 to i64*
  store i64 %75, i64* %77, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = bitcast i8* %85 to i64*
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast i8* %91 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = bitcast i8* %94 to i64*
  store i64 %93, i64* %95, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = bitcast i8* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i64*
  store i64 %102, i64* %104, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  store i8* %106, i8** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %108, i8** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 16
  store i32 %110, i32* %10, align 4
  br label %69

111:                                              ; preds = %69
  %112 = load i32, i32* %10, align 4
  switch i32 %112, label %413 [
    i32 0, label %113
    i32 1, label %114
    i32 2, label %118
    i32 3, label %124
    i32 4, label %137
    i32 5, label %143
    i32 6, label %156
    i32 7, label %171
    i32 8, label %193
    i32 9, label %208
    i32 10, label %230
    i32 11, label %254
    i32 12, label %285
    i32 13, label %309
    i32 14, label %340
    i32 15, label %373
  ]

113:                                              ; preds = %111
  br label %413

114:                                              ; preds = %111
  %115 = load i8*, i8** %9, align 8
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  br label %413

118:                                              ; preds = %111
  %119 = load i8*, i8** %9, align 8
  %120 = bitcast i8* %119 to i16*
  %121 = load i16, i16* %120, align 2
  %122 = load i8*, i8** %8, align 8
  %123 = bitcast i8* %122 to i16*
  store i16 %121, i16* %123, align 2
  br label %413

124:                                              ; preds = %111
  %125 = load i8*, i8** %9, align 8
  %126 = bitcast i8* %125 to i16*
  %127 = load i16, i16* %126, align 2
  %128 = load i8*, i8** %8, align 8
  %129 = bitcast i8* %128 to i16*
  store i16 %127, i16* %129, align 2
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8* %131, i8** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8* %133, i8** %9, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %8, align 8
  store i8 %135, i8* %136, align 1
  br label %413

137:                                              ; preds = %111
  %138 = load i8*, i8** %9, align 8
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = bitcast i8* %141 to i64*
  store i64 %140, i64* %142, align 8
  br label %413

143:                                              ; preds = %111
  %144 = load i8*, i8** %9, align 8
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = bitcast i8* %147 to i64*
  store i64 %146, i64* %148, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 4
  store i8* %150, i8** %8, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  store i8* %152, i8** %9, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %8, align 8
  store i8 %154, i8* %155, align 1
  br label %413

156:                                              ; preds = %111
  %157 = load i8*, i8** %9, align 8
  %158 = bitcast i8* %157 to i64*
  %159 = load i64, i64* %158, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = bitcast i8* %160 to i64*
  store i64 %159, i64* %161, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 4
  store i8* %163, i8** %8, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 4
  store i8* %165, i8** %9, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = bitcast i8* %166 to i16*
  %168 = load i16, i16* %167, align 2
  %169 = load i8*, i8** %8, align 8
  %170 = bitcast i8* %169 to i16*
  store i16 %168, i16* %170, align 2
  br label %413

171:                                              ; preds = %111
  %172 = load i8*, i8** %9, align 8
  %173 = bitcast i8* %172 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = bitcast i8* %175 to i64*
  store i64 %174, i64* %176, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 4
  store i8* %178, i8** %8, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 4
  store i8* %180, i8** %9, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = bitcast i8* %181 to i16*
  %183 = load i16, i16* %182, align 2
  %184 = load i8*, i8** %8, align 8
  %185 = bitcast i8* %184 to i16*
  store i16 %183, i16* %185, align 2
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 2
  store i8* %187, i8** %8, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 2
  store i8* %189, i8** %9, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load i8, i8* %190, align 1
  %192 = load i8*, i8** %8, align 8
  store i8 %191, i8* %192, align 1
  br label %413

193:                                              ; preds = %111
  %194 = load i8*, i8** %9, align 8
  %195 = bitcast i8* %194 to i64*
  %196 = load i64, i64* %195, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = bitcast i8* %197 to i64*
  store i64 %196, i64* %198, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 4
  store i8* %200, i8** %8, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 4
  store i8* %202, i8** %9, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = bitcast i8* %203 to i64*
  %205 = load i64, i64* %204, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = bitcast i8* %206 to i64*
  store i64 %205, i64* %207, align 8
  br label %413

208:                                              ; preds = %111
  %209 = load i8*, i8** %9, align 8
  %210 = bitcast i8* %209 to i64*
  %211 = load i64, i64* %210, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = bitcast i8* %212 to i64*
  store i64 %211, i64* %213, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 4
  store i8* %215, i8** %8, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 4
  store i8* %217, i8** %9, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = bitcast i8* %218 to i64*
  %220 = load i64, i64* %219, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = bitcast i8* %221 to i64*
  store i64 %220, i64* %222, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 4
  store i8* %224, i8** %8, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 4
  store i8* %226, i8** %9, align 8
  %227 = load i8*, i8** %9, align 8
  %228 = load i8, i8* %227, align 1
  %229 = load i8*, i8** %8, align 8
  store i8 %228, i8* %229, align 1
  br label %413

230:                                              ; preds = %111
  %231 = load i8*, i8** %9, align 8
  %232 = bitcast i8* %231 to i64*
  %233 = load i64, i64* %232, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = bitcast i8* %234 to i64*
  store i64 %233, i64* %235, align 8
  %236 = load i8*, i8** %8, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 4
  store i8* %237, i8** %8, align 8
  %238 = load i8*, i8** %9, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 4
  store i8* %239, i8** %9, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = bitcast i8* %240 to i64*
  %242 = load i64, i64* %241, align 8
  %243 = load i8*, i8** %8, align 8
  %244 = bitcast i8* %243 to i64*
  store i64 %242, i64* %244, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 4
  store i8* %246, i8** %8, align 8
  %247 = load i8*, i8** %9, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 4
  store i8* %248, i8** %9, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = bitcast i8* %249 to i16*
  %251 = load i16, i16* %250, align 2
  %252 = load i8*, i8** %8, align 8
  %253 = bitcast i8* %252 to i16*
  store i16 %251, i16* %253, align 2
  br label %413

254:                                              ; preds = %111
  %255 = load i8*, i8** %9, align 8
  %256 = bitcast i8* %255 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = load i8*, i8** %8, align 8
  %259 = bitcast i8* %258 to i64*
  store i64 %257, i64* %259, align 8
  %260 = load i8*, i8** %8, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 4
  store i8* %261, i8** %8, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 4
  store i8* %263, i8** %9, align 8
  %264 = load i8*, i8** %9, align 8
  %265 = bitcast i8* %264 to i64*
  %266 = load i64, i64* %265, align 8
  %267 = load i8*, i8** %8, align 8
  %268 = bitcast i8* %267 to i64*
  store i64 %266, i64* %268, align 8
  %269 = load i8*, i8** %8, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 4
  store i8* %270, i8** %8, align 8
  %271 = load i8*, i8** %9, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 4
  store i8* %272, i8** %9, align 8
  %273 = load i8*, i8** %9, align 8
  %274 = bitcast i8* %273 to i16*
  %275 = load i16, i16* %274, align 2
  %276 = load i8*, i8** %8, align 8
  %277 = bitcast i8* %276 to i16*
  store i16 %275, i16* %277, align 2
  %278 = load i8*, i8** %8, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 2
  store i8* %279, i8** %8, align 8
  %280 = load i8*, i8** %9, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 2
  store i8* %281, i8** %9, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = load i8, i8* %282, align 1
  %284 = load i8*, i8** %8, align 8
  store i8 %283, i8* %284, align 1
  br label %413

285:                                              ; preds = %111
  %286 = load i8*, i8** %9, align 8
  %287 = bitcast i8* %286 to i64*
  %288 = load i64, i64* %287, align 8
  %289 = load i8*, i8** %8, align 8
  %290 = bitcast i8* %289 to i64*
  store i64 %288, i64* %290, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 4
  store i8* %292, i8** %8, align 8
  %293 = load i8*, i8** %9, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 4
  store i8* %294, i8** %9, align 8
  %295 = load i8*, i8** %9, align 8
  %296 = bitcast i8* %295 to i64*
  %297 = load i64, i64* %296, align 8
  %298 = load i8*, i8** %8, align 8
  %299 = bitcast i8* %298 to i64*
  store i64 %297, i64* %299, align 8
  %300 = load i8*, i8** %8, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 4
  store i8* %301, i8** %8, align 8
  %302 = load i8*, i8** %9, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 4
  store i8* %303, i8** %9, align 8
  %304 = load i8*, i8** %9, align 8
  %305 = bitcast i8* %304 to i64*
  %306 = load i64, i64* %305, align 8
  %307 = load i8*, i8** %8, align 8
  %308 = bitcast i8* %307 to i64*
  store i64 %306, i64* %308, align 8
  br label %413

309:                                              ; preds = %111
  %310 = load i8*, i8** %9, align 8
  %311 = bitcast i8* %310 to i64*
  %312 = load i64, i64* %311, align 8
  %313 = load i8*, i8** %8, align 8
  %314 = bitcast i8* %313 to i64*
  store i64 %312, i64* %314, align 8
  %315 = load i8*, i8** %8, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 4
  store i8* %316, i8** %8, align 8
  %317 = load i8*, i8** %9, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 4
  store i8* %318, i8** %9, align 8
  %319 = load i8*, i8** %9, align 8
  %320 = bitcast i8* %319 to i64*
  %321 = load i64, i64* %320, align 8
  %322 = load i8*, i8** %8, align 8
  %323 = bitcast i8* %322 to i64*
  store i64 %321, i64* %323, align 8
  %324 = load i8*, i8** %8, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 4
  store i8* %325, i8** %8, align 8
  %326 = load i8*, i8** %9, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 4
  store i8* %327, i8** %9, align 8
  %328 = load i8*, i8** %9, align 8
  %329 = bitcast i8* %328 to i64*
  %330 = load i64, i64* %329, align 8
  %331 = load i8*, i8** %8, align 8
  %332 = bitcast i8* %331 to i64*
  store i64 %330, i64* %332, align 8
  %333 = load i8*, i8** %8, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 4
  store i8* %334, i8** %8, align 8
  %335 = load i8*, i8** %9, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 4
  store i8* %336, i8** %9, align 8
  %337 = load i8*, i8** %9, align 8
  %338 = load i8, i8* %337, align 1
  %339 = load i8*, i8** %8, align 8
  store i8 %338, i8* %339, align 1
  br label %413

340:                                              ; preds = %111
  %341 = load i8*, i8** %9, align 8
  %342 = bitcast i8* %341 to i64*
  %343 = load i64, i64* %342, align 8
  %344 = load i8*, i8** %8, align 8
  %345 = bitcast i8* %344 to i64*
  store i64 %343, i64* %345, align 8
  %346 = load i8*, i8** %8, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 4
  store i8* %347, i8** %8, align 8
  %348 = load i8*, i8** %9, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 4
  store i8* %349, i8** %9, align 8
  %350 = load i8*, i8** %9, align 8
  %351 = bitcast i8* %350 to i64*
  %352 = load i64, i64* %351, align 8
  %353 = load i8*, i8** %8, align 8
  %354 = bitcast i8* %353 to i64*
  store i64 %352, i64* %354, align 8
  %355 = load i8*, i8** %8, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 4
  store i8* %356, i8** %8, align 8
  %357 = load i8*, i8** %9, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 4
  store i8* %358, i8** %9, align 8
  %359 = load i8*, i8** %9, align 8
  %360 = bitcast i8* %359 to i64*
  %361 = load i64, i64* %360, align 8
  %362 = load i8*, i8** %8, align 8
  %363 = bitcast i8* %362 to i64*
  store i64 %361, i64* %363, align 8
  %364 = load i8*, i8** %8, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 4
  store i8* %365, i8** %8, align 8
  %366 = load i8*, i8** %9, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 4
  store i8* %367, i8** %9, align 8
  %368 = load i8*, i8** %9, align 8
  %369 = bitcast i8* %368 to i16*
  %370 = load i16, i16* %369, align 2
  %371 = load i8*, i8** %8, align 8
  %372 = bitcast i8* %371 to i16*
  store i16 %370, i16* %372, align 2
  br label %413

373:                                              ; preds = %111
  %374 = load i8*, i8** %9, align 8
  %375 = bitcast i8* %374 to i64*
  %376 = load i64, i64* %375, align 8
  %377 = load i8*, i8** %8, align 8
  %378 = bitcast i8* %377 to i64*
  store i64 %376, i64* %378, align 8
  %379 = load i8*, i8** %8, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 4
  store i8* %380, i8** %8, align 8
  %381 = load i8*, i8** %9, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 4
  store i8* %382, i8** %9, align 8
  %383 = load i8*, i8** %9, align 8
  %384 = bitcast i8* %383 to i64*
  %385 = load i64, i64* %384, align 8
  %386 = load i8*, i8** %8, align 8
  %387 = bitcast i8* %386 to i64*
  store i64 %385, i64* %387, align 8
  %388 = load i8*, i8** %8, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 4
  store i8* %389, i8** %8, align 8
  %390 = load i8*, i8** %9, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 4
  store i8* %391, i8** %9, align 8
  %392 = load i8*, i8** %9, align 8
  %393 = bitcast i8* %392 to i64*
  %394 = load i64, i64* %393, align 8
  %395 = load i8*, i8** %8, align 8
  %396 = bitcast i8* %395 to i64*
  store i64 %394, i64* %396, align 8
  %397 = load i8*, i8** %8, align 8
  %398 = getelementptr inbounds i8, i8* %397, i64 4
  store i8* %398, i8** %8, align 8
  %399 = load i8*, i8** %9, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 4
  store i8* %400, i8** %9, align 8
  %401 = load i8*, i8** %9, align 8
  %402 = bitcast i8* %401 to i16*
  %403 = load i16, i16* %402, align 2
  %404 = load i8*, i8** %8, align 8
  %405 = bitcast i8* %404 to i16*
  store i16 %403, i16* %405, align 2
  %406 = load i8*, i8** %8, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 2
  store i8* %407, i8** %8, align 8
  %408 = load i8*, i8** %9, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 2
  store i8* %409, i8** %9, align 8
  %410 = load i8*, i8** %9, align 8
  %411 = load i8, i8* %410, align 1
  %412 = load i8*, i8** %8, align 8
  store i8 %411, i8* %412, align 1
  br label %413

413:                                              ; preds = %111, %373, %340, %309, %285, %254, %230, %208, %193, %171, %156, %143, %137, %124, %118, %114, %113
  %414 = load i8*, i8** %7, align 8
  ret i8* %414
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 779, i32 844, i32 887, i32 925, i32 986, i32 1004, i32 1015, i32 1073, i32 1099, i32 1122, i32 1146, i32 1157, i32 1189, i32 1212, i32 1235, i32 1256, i32 1267, i32 1306, i32 1329, i32 1345, i32 1371, i32 1393, i32 1411, i32 1437, i32 1448, i32 1498, i32 1520, i32 1531, i32 1571}
