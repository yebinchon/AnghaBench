; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_ed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_ed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@math_emu_ed.format_table = internal constant <{ [32 x i32], [224 x i32] }> <{ [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 6, i32 5, i32 7, i32 5, i32 2, i32 2, i32 2, i32 2, i32 6, i32 2, i32 4, i32 4, i32 8, i32 9, i32 10, i32 0, i32 2, i32 1, i32 0, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3], [224 x i32] zeroinitializer }>, align 16
@math_emu_ed.jump_table = internal global [32 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* inttoptr (i64 145 to i8*), i8* inttoptr (i64 144 to i8*), i8* inttoptr (i64 143 to i8*), i8* inttoptr (i64 135 to i8*), i8* inttoptr (i64 146 to i8*), i8* inttoptr (i64 150 to i8*), i8* inttoptr (i64 152 to i8*), i8* inttoptr (i64 133 to i8*), i8* inttoptr (i64 139 to i8*), i8* inttoptr (i64 148 to i8*), i8* inttoptr (i64 141 to i8*), i8* inttoptr (i64 136 to i8*), i8* inttoptr (i64 129 to i8*), i8* inttoptr (i64 130 to i8*), i8* inttoptr (i64 128 to i8*), i8* null, i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 132 to i8*), i8* null, i8* inttoptr (i64 138 to i8*), i8* inttoptr (i64 147 to i8*), i8* inttoptr (i64 151 to i8*), i8* inttoptr (i64 153 to i8*), i8* inttoptr (i64 134 to i8*), i8* inttoptr (i64 140 to i8*), i8* inttoptr (i64 149 to i8*), i8* inttoptr (i64 142 to i8*), i8* inttoptr (i64 137 to i8*)], align 16
@SIGILL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SIGFPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @math_emu_ed(i32* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 0, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [32 x i32], [224 x i32] }>* @math_emu_ed.format_table to [256 x i32]*), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %475 [
    i32 1, label %40
    i32 2, label %79
    i32 3, label %119
    i32 4, label %168
    i32 5, label %218
    i32 6, label %273
    i32 7, label %313
    i32 8, label %369
    i32 9, label %399
    i32 10, label %429
  ]

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 15
  %46 = call i32 @emu_store_regd(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 16
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, 12
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @calc_addr(%struct.pt_regs* %49, i32 %51, i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to i64*
  store i64* %56, i64** %7, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = call i32 @mathemu_copy_from_user(i64* %8, i64* %57, i32 8)
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i32 (%struct.pt_regs*, i32, double*)*
  %66 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 4
  %71 = bitcast i64* %8 to double*
  %72 = call i32 %65(%struct.pt_regs* %66, i32 %70, double* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 4
  %77 = and i32 %76, 15
  %78 = call i32 @emu_load_regd(i32 %77)
  br label %477

79:                                               ; preds = %2
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 4
  %84 = and i32 %83, 15
  %85 = call i32 @emu_store_rege(i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 16
  %91 = load i32, i32* %12, align 4
  %92 = ashr i32 %91, 12
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @calc_addr(%struct.pt_regs* %88, i32 %90, i32 %92, i32 %93)
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @mathemu_get_user(i32 %96, i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to i32 (%struct.pt_regs*, i32, float*)*
  %106 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 4
  %111 = bitcast i32* %11 to float*
  %112 = call i32 %105(%struct.pt_regs* %106, i32 %110, float* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 4
  %117 = and i32 %116, 15
  %118 = call i32 @emu_load_rege(i32 %117)
  br label %477

119:                                              ; preds = %2
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 4
  %124 = and i32 %123, 15
  %125 = call i32 @emu_store_regd(i32 %124)
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 4
  %130 = and i32 %129, 15
  %131 = call i32 @emu_store_regd(i32 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %15, align 4
  %134 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %135 = load i32, i32* %15, align 4
  %136 = ashr i32 %135, 16
  %137 = load i32, i32* %15, align 4
  %138 = ashr i32 %137, 12
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @calc_addr(%struct.pt_regs* %134, i32 %136, i32 %138, i32 %139)
  %141 = inttoptr i64 %140 to i64*
  store i64* %141, i64** %13, align 8
  %142 = load i64*, i64** %13, align 8
  %143 = call i32 @mathemu_copy_from_user(i64* %14, i64* %142, i32 8)
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = bitcast i8* %149 to i32 (%struct.pt_regs*, i32, double*, i32)*
  %151 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 4
  %156 = bitcast i64* %14 to double*
  %157 = load i32*, i32** %4, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 4
  %161 = call i32 %150(%struct.pt_regs* %151, i32 %155, double* %156, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 4
  %166 = and i32 %165, 15
  %167 = call i32 @emu_load_regd(i32 %166)
  br label %477

168:                                              ; preds = %2
  %169 = load i32*, i32** %4, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 4
  %173 = and i32 %172, 15
  %174 = call i32 @emu_store_rege(i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 4
  %179 = and i32 %178, 15
  %180 = call i32 @emu_store_rege(i32 %179)
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %18, align 4
  %183 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %184 = load i32, i32* %18, align 4
  %185 = ashr i32 %184, 16
  %186 = load i32, i32* %18, align 4
  %187 = ashr i32 %186, 12
  %188 = load i32, i32* %18, align 4
  %189 = call i64 @calc_addr(%struct.pt_regs* %183, i32 %185, i32 %187, i32 %188)
  %190 = inttoptr i64 %189 to i32*
  store i32* %190, i32** %16, align 8
  %191 = load i32, i32* %17, align 4
  %192 = load i32*, i32** %16, align 8
  %193 = call i32 @mathemu_get_user(i32 %191, i32* %192)
  %194 = load i32*, i32** %4, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 5
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = bitcast i8* %199 to i32 (%struct.pt_regs*, i32, float*, i32)*
  %201 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %202 = load i32*, i32** %4, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 4
  %206 = bitcast i32* %17 to float*
  %207 = load i32*, i32** %4, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 4
  %211 = call i32 %200(%struct.pt_regs* %201, i32 %205, float* %206, i32 %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 4
  %216 = and i32 %215, 15
  %217 = call i32 @emu_load_rege(i32 %216)
  br label %477

218:                                              ; preds = %2
  %219 = load i32*, i32** %4, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = ashr i32 %221, 4
  %223 = and i32 %222, 32
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = load i32, i32* @SIGILL, align 4
  store i32 %226, i32* %3, align 4
  br label %501

227:                                              ; preds = %218
  %228 = load i32*, i32** %4, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 4
  %232 = and i32 %231, 15
  %233 = call i32 @emu_store_regd(i32 %232)
  %234 = load i32*, i32** %4, align 8
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %21, align 4
  %236 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %237 = load i32, i32* %21, align 4
  %238 = ashr i32 %237, 16
  %239 = load i32, i32* %21, align 4
  %240 = ashr i32 %239, 12
  %241 = load i32, i32* %21, align 4
  %242 = call i64 @calc_addr(%struct.pt_regs* %236, i32 %238, i32 %240, i32 %241)
  %243 = inttoptr i64 %242 to i64*
  store i64* %243, i64** %19, align 8
  %244 = load i64*, i64** %19, align 8
  %245 = call i32 @mathemu_copy_from_user(i64* %20, i64* %244, i32 8)
  %246 = load i32*, i32** %4, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 5
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = bitcast i8* %251 to i32 (%struct.pt_regs*, i32, double*)*
  %253 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %254 = load i32*, i32** %4, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 4
  %258 = bitcast i64* %20 to double*
  %259 = call i32 %252(%struct.pt_regs* %253, i32 %257, double* %258)
  store i32 %259, i32* %6, align 4
  %260 = load i32*, i32** %4, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 4
  %264 = and i32 %263, 15
  %265 = call i32 @emu_load_regd(i32 %264)
  %266 = load i32*, i32** %4, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = ashr i32 %268, 4
  %270 = and i32 %269, 15
  %271 = add nsw i32 %270, 2
  %272 = call i32 @emu_load_regd(i32 %271)
  br label %477

273:                                              ; preds = %2
  %274 = load i32*, i32** %4, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = ashr i32 %276, 4
  %278 = and i32 %277, 15
  %279 = call i32 @emu_store_rege(i32 %278)
  %280 = load i32*, i32** %4, align 8
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %24, align 4
  %282 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %283 = load i32, i32* %24, align 4
  %284 = ashr i32 %283, 16
  %285 = load i32, i32* %24, align 4
  %286 = ashr i32 %285, 12
  %287 = load i32, i32* %24, align 4
  %288 = call i64 @calc_addr(%struct.pt_regs* %282, i32 %284, i32 %286, i32 %287)
  %289 = inttoptr i64 %288 to i32*
  store i32* %289, i32** %22, align 8
  %290 = load i32, i32* %23, align 4
  %291 = load i32*, i32** %22, align 8
  %292 = call i32 @mathemu_get_user(i32 %290, i32* %291)
  %293 = load i32*, i32** %4, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 5
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = bitcast i8* %298 to i32 (%struct.pt_regs*, i32, float*)*
  %300 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %301 = load i32*, i32** %4, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = ashr i32 %303, 4
  %305 = bitcast i32* %23 to float*
  %306 = call i32 %299(%struct.pt_regs* %300, i32 %304, float* %305)
  store i32 %306, i32* %6, align 4
  %307 = load i32*, i32** %4, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = ashr i32 %309, 4
  %311 = and i32 %310, 15
  %312 = call i32 @emu_load_regd(i32 %311)
  br label %477

313:                                              ; preds = %2
  %314 = load i32*, i32** %4, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = ashr i32 %316, 4
  %318 = and i32 %317, 32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %313
  %321 = load i32, i32* @SIGILL, align 4
  store i32 %321, i32* %3, align 4
  br label %501

322:                                              ; preds = %313
  %323 = load i32*, i32** %4, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = ashr i32 %325, 4
  %327 = and i32 %326, 15
  %328 = call i32 @emu_store_rege(i32 %327)
  %329 = load i32*, i32** %4, align 8
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %27, align 4
  %331 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %332 = load i32, i32* %27, align 4
  %333 = ashr i32 %332, 16
  %334 = load i32, i32* %27, align 4
  %335 = ashr i32 %334, 12
  %336 = load i32, i32* %27, align 4
  %337 = call i64 @calc_addr(%struct.pt_regs* %331, i32 %333, i32 %335, i32 %336)
  %338 = inttoptr i64 %337 to i32*
  store i32* %338, i32** %25, align 8
  %339 = load i32, i32* %26, align 4
  %340 = load i32*, i32** %25, align 8
  %341 = call i32 @mathemu_get_user(i32 %339, i32* %340)
  %342 = load i32*, i32** %4, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 5
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %345
  %347 = load i8*, i8** %346, align 8
  %348 = bitcast i8* %347 to i32 (%struct.pt_regs*, i32, float*)*
  %349 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %350 = load i32*, i32** %4, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  %352 = load i32, i32* %351, align 4
  %353 = ashr i32 %352, 4
  %354 = bitcast i32* %26 to float*
  %355 = call i32 %348(%struct.pt_regs* %349, i32 %353, float* %354)
  store i32 %355, i32* %6, align 4
  %356 = load i32*, i32** %4, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = ashr i32 %358, 4
  %360 = and i32 %359, 15
  %361 = call i32 @emu_load_regd(i32 %360)
  %362 = load i32*, i32** %4, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = ashr i32 %364, 4
  %366 = and i32 %365, 15
  %367 = add nsw i32 %366, 2
  %368 = call i32 @emu_load_regd(i32 %367)
  br label %477

369:                                              ; preds = %2
  %370 = load i32*, i32** %4, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 1
  %372 = load i32, i32* %371, align 4
  %373 = ashr i32 %372, 4
  %374 = and i32 %373, 15
  %375 = call i32 @emu_store_rege(i32 %374)
  %376 = load i32*, i32** %4, align 8
  %377 = load i32, i32* %376, align 4
  store i32 %377, i32* %29, align 4
  %378 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %379 = load i32, i32* %29, align 4
  %380 = ashr i32 %379, 16
  %381 = load i32, i32* %29, align 4
  %382 = ashr i32 %381, 12
  %383 = load i32, i32* %29, align 4
  %384 = call i64 @calc_addr(%struct.pt_regs* %378, i32 %380, i32 %382, i32 %383)
  store i64 %384, i64* %28, align 8
  %385 = load i32*, i32** %4, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 5
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %388
  %390 = load i8*, i8** %389, align 8
  %391 = bitcast i8* %390 to i32 (%struct.pt_regs*, i32, i64)*
  %392 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %393 = load i32*, i32** %4, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 1
  %395 = load i32, i32* %394, align 4
  %396 = ashr i32 %395, 4
  %397 = load i64, i64* %28, align 8
  %398 = call i32 %391(%struct.pt_regs* %392, i32 %396, i64 %397)
  store i32 %398, i32* %6, align 4
  br label %477

399:                                              ; preds = %2
  %400 = load i32*, i32** %4, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  %402 = load i32, i32* %401, align 4
  %403 = ashr i32 %402, 4
  %404 = and i32 %403, 15
  %405 = call i32 @emu_store_regd(i32 %404)
  %406 = load i32*, i32** %4, align 8
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %31, align 4
  %408 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %409 = load i32, i32* %31, align 4
  %410 = ashr i32 %409, 16
  %411 = load i32, i32* %31, align 4
  %412 = ashr i32 %411, 12
  %413 = load i32, i32* %31, align 4
  %414 = call i64 @calc_addr(%struct.pt_regs* %408, i32 %410, i32 %412, i32 %413)
  store i64 %414, i64* %30, align 8
  %415 = load i32*, i32** %4, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 5
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %418
  %420 = load i8*, i8** %419, align 8
  %421 = bitcast i8* %420 to i32 (%struct.pt_regs*, i32, i64)*
  %422 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %423 = load i32*, i32** %4, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 1
  %425 = load i32, i32* %424, align 4
  %426 = ashr i32 %425, 4
  %427 = load i64, i64* %30, align 8
  %428 = call i32 %421(%struct.pt_regs* %422, i32 %426, i64 %427)
  store i32 %428, i32* %6, align 4
  br label %477

429:                                              ; preds = %2
  %430 = load i32*, i32** %4, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  %432 = load i32, i32* %431, align 4
  %433 = ashr i32 %432, 4
  %434 = and i32 %433, 2
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %429
  %437 = load i32, i32* @SIGILL, align 4
  store i32 %437, i32* %3, align 4
  br label %501

438:                                              ; preds = %429
  %439 = load i32*, i32** %4, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 1
  %441 = load i32, i32* %440, align 4
  %442 = ashr i32 %441, 4
  %443 = and i32 %442, 15
  %444 = call i32 @emu_store_regd(i32 %443)
  %445 = load i32*, i32** %4, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 1
  %447 = load i32, i32* %446, align 4
  %448 = ashr i32 %447, 4
  %449 = and i32 %448, 15
  %450 = add nsw i32 %449, 2
  %451 = call i32 @emu_store_regd(i32 %450)
  %452 = load i32*, i32** %4, align 8
  %453 = load i32, i32* %452, align 4
  store i32 %453, i32* %33, align 4
  %454 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %455 = load i32, i32* %33, align 4
  %456 = ashr i32 %455, 16
  %457 = load i32, i32* %33, align 4
  %458 = ashr i32 %457, 12
  %459 = load i32, i32* %33, align 4
  %460 = call i64 @calc_addr(%struct.pt_regs* %454, i32 %456, i32 %458, i32 %459)
  store i64 %460, i64* %32, align 8
  %461 = load i32*, i32** %4, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 5
  %463 = load i32, i32* %462, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [32 x i8*], [32 x i8*]* @math_emu_ed.jump_table, i64 0, i64 %464
  %466 = load i8*, i8** %465, align 8
  %467 = bitcast i8* %466 to i32 (%struct.pt_regs*, i32, i64)*
  %468 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %469 = load i32*, i32** %4, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32, i32* %470, align 4
  %472 = ashr i32 %471, 4
  %473 = load i64, i64* %32, align 8
  %474 = call i32 %467(%struct.pt_regs* %468, i32 %472, i64 %473)
  store i32 %474, i32* %6, align 4
  br label %477

475:                                              ; preds = %2
  %476 = load i32, i32* @SIGILL, align 4
  store i32 %476, i32* %3, align 4
  br label %501

477:                                              ; preds = %438, %399, %369, %322, %273, %227, %168, %119, %79, %40
  %478 = load i32, i32* %6, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %500

480:                                              ; preds = %477
  %481 = load i32, i32* %6, align 4
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = or i32 %486, %481
  store i32 %487, i32* %485, align 4
  %488 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %6, align 4
  %494 = shl i32 %493, 8
  %495 = and i32 %492, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %480
  %498 = load i32, i32* @SIGFPE, align 4
  store i32 %498, i32* %3, align 4
  br label %501

499:                                              ; preds = %480
  br label %500

500:                                              ; preds = %499, %477
  store i32 0, i32* %3, align 4
  br label %501

501:                                              ; preds = %500, %497, %475, %436, %320, %225
  %502 = load i32, i32* %3, align 4
  ret i32 %502
}

declare dso_local i32 @emu_store_regd(i32) #1

declare dso_local i64 @calc_addr(%struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @mathemu_copy_from_user(i64*, i64*, i32) #1

declare dso_local i32 @emu_load_regd(i32) #1

declare dso_local i32 @emu_store_rege(i32) #1

declare dso_local i32 @mathemu_get_user(i32, i32*) #1

declare dso_local i32 @emu_load_rege(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
