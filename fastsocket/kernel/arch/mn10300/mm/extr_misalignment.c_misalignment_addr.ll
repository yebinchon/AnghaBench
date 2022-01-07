; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_misalignment.c_misalignment_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_misalignment.c_misalignment_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"noinc\00", align 1
@Dreg_index = common dso_local global i64* null, align 8
@Areg_index = common dso_local global i64* null, align 8
@Rreg_index = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %lx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"incr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, i32, i64, i8**, i64**, i64*)* @misalignment_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misalignment_addr(i64* %0, i64 %1, i32 %2, i32 %3, i64 %4, i8** %5, i64** %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i8** %5, i8*** %15, align 8
  store i64** %6, i64*** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64* null, i64** %18, align 8
  store i64 0, i64* %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 16777216
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = load i64*, i64** %17, align 8
  store i64 0, i64* %26, align 8
  store i64* null, i64** %17, align 8
  br label %27

27:                                               ; preds = %24, %8
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 16777215
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %265, %27
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 255
  switch i32 %32, label %262 [
    i32 150, label %33
    i32 149, label %46
    i32 148, label %60
    i32 153, label %74
    i32 152, label %87
    i32 151, label %101
    i32 138, label %115
    i32 137, label %128
    i32 136, label %142
    i32 135, label %156
    i32 134, label %170
    i32 140, label %184
    i32 139, label %196
    i32 128, label %209
    i32 131, label %213
    i32 129, label %213
    i32 133, label %216
    i32 132, label %219
    i32 130, label %225
    i32 141, label %235
    i32 147, label %238
    i32 146, label %241
    i32 145, label %244
    i32 142, label %244
    i32 144, label %244
    i32 143, label %244
  ]

33:                                               ; preds = %30
  %34 = load i64*, i64** %10, align 8
  %35 = load i64*, i64** @Dreg_index, align 8
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 3
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %34, i64 %40
  store i64* %41, i64** %18, align 8
  %42 = load i64*, i64** %18, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %19, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %19, align 8
  br label %264

46:                                               ; preds = %30
  %47 = load i64*, i64** %10, align 8
  %48 = load i64*, i64** @Dreg_index, align 8
  %49 = load i32, i32* %13, align 4
  %50 = lshr i32 %49, 2
  %51 = and i32 %50, 3
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %47, i64 %54
  store i64* %55, i64** %18, align 8
  %56 = load i64*, i64** %18, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %19, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %19, align 8
  br label %264

60:                                               ; preds = %30
  %61 = load i64*, i64** %10, align 8
  %62 = load i64*, i64** @Dreg_index, align 8
  %63 = load i32, i32* %13, align 4
  %64 = lshr i32 %63, 4
  %65 = and i32 %64, 3
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %61, i64 %68
  store i64* %69, i64** %18, align 8
  %70 = load i64*, i64** %18, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %19, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %19, align 8
  br label %264

74:                                               ; preds = %30
  %75 = load i64*, i64** %10, align 8
  %76 = load i64*, i64** @Areg_index, align 8
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %77, 3
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %75, i64 %81
  store i64* %82, i64** %18, align 8
  %83 = load i64*, i64** %18, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %19, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %19, align 8
  br label %264

87:                                               ; preds = %30
  %88 = load i64*, i64** %10, align 8
  %89 = load i64*, i64** @Areg_index, align 8
  %90 = load i32, i32* %13, align 4
  %91 = lshr i32 %90, 2
  %92 = and i32 %91, 3
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %89, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %88, i64 %95
  store i64* %96, i64** %18, align 8
  %97 = load i64*, i64** %18, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %19, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %19, align 8
  br label %264

101:                                              ; preds = %30
  %102 = load i64*, i64** %10, align 8
  %103 = load i64*, i64** @Areg_index, align 8
  %104 = load i32, i32* %13, align 4
  %105 = lshr i32 %104, 4
  %106 = and i32 %105, 3
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %103, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %102, i64 %109
  store i64* %110, i64** %18, align 8
  %111 = load i64*, i64** %18, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %19, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %19, align 8
  br label %264

115:                                              ; preds = %30
  %116 = load i64*, i64** %10, align 8
  %117 = load i64*, i64** @Rreg_index, align 8
  %118 = load i32, i32* %13, align 4
  %119 = and i32 %118, 15
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i64, i64* %116, i64 %122
  store i64* %123, i64** %18, align 8
  %124 = load i64*, i64** %18, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %19, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %19, align 8
  br label %264

128:                                              ; preds = %30
  %129 = load i64*, i64** %10, align 8
  %130 = load i64*, i64** @Rreg_index, align 8
  %131 = load i32, i32* %13, align 4
  %132 = lshr i32 %131, 2
  %133 = and i32 %132, 15
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %130, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %129, i64 %136
  store i64* %137, i64** %18, align 8
  %138 = load i64*, i64** %18, align 8
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %19, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %19, align 8
  br label %264

142:                                              ; preds = %30
  %143 = load i64*, i64** %10, align 8
  %144 = load i64*, i64** @Rreg_index, align 8
  %145 = load i32, i32* %13, align 4
  %146 = lshr i32 %145, 4
  %147 = and i32 %146, 15
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %144, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i64, i64* %143, i64 %150
  store i64* %151, i64** %18, align 8
  %152 = load i64*, i64** %18, align 8
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %19, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %19, align 8
  br label %264

156:                                              ; preds = %30
  %157 = load i64*, i64** %10, align 8
  %158 = load i64*, i64** @Rreg_index, align 8
  %159 = load i32, i32* %13, align 4
  %160 = lshr i32 %159, 8
  %161 = and i32 %160, 15
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %158, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64, i64* %157, i64 %164
  store i64* %165, i64** %18, align 8
  %166 = load i64*, i64** %18, align 8
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %19, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %19, align 8
  br label %264

170:                                              ; preds = %30
  %171 = load i64*, i64** %10, align 8
  %172 = load i64*, i64** @Rreg_index, align 8
  %173 = load i32, i32* %13, align 4
  %174 = lshr i32 %173, 12
  %175 = and i32 %174, 15
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %172, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i64, i64* %171, i64 %178
  store i64* %179, i64** %18, align 8
  %180 = load i64*, i64** %18, align 8
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %19, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %19, align 8
  br label %264

184:                                              ; preds = %30
  %185 = load i64*, i64** %10, align 8
  %186 = load i64*, i64** @Rreg_index, align 8
  %187 = load i64, i64* %14, align 8
  %188 = and i64 %187, 15
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i64, i64* %185, i64 %190
  store i64* %191, i64** %18, align 8
  %192 = load i64*, i64** %18, align 8
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %19, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %19, align 8
  br label %264

196:                                              ; preds = %30
  %197 = load i64*, i64** %10, align 8
  %198 = load i64*, i64** @Rreg_index, align 8
  %199 = load i64, i64* %14, align 8
  %200 = lshr i64 %199, 4
  %201 = and i64 %200, 15
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i64, i64* %197, i64 %203
  store i64* %204, i64** %18, align 8
  %205 = load i64*, i64** %18, align 8
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %19, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %19, align 8
  br label %264

209:                                              ; preds = %30
  %210 = load i64, i64* %11, align 8
  %211 = load i64, i64* %19, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %19, align 8
  br label %264

213:                                              ; preds = %30, %30
  %214 = load i64, i64* %14, align 8
  %215 = and i64 %214, 255
  store i64 %215, i64* %14, align 8
  br label %245

216:                                              ; preds = %30
  %217 = load i64, i64* %14, align 8
  %218 = and i64 %217, 65535
  store i64 %218, i64* %14, align 8
  br label %245

219:                                              ; preds = %30
  %220 = load i64, i64* %14, align 8
  %221 = shl i64 %220, 8
  store i64 %221, i64* %20, align 8
  %222 = load i64, i64* %20, align 8
  %223 = call i64 asm "asr 8,$0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %222) #2, !srcloc !2
  store i64 %223, i64* %20, align 8
  %224 = load i64, i64* %20, align 8
  store i64 %224, i64* %14, align 8
  br label %245

225:                                              ; preds = %30
  %226 = load i32, i32* %13, align 4
  %227 = lshr i32 %226, 4
  %228 = and i32 %227, 15
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %20, align 8
  %230 = load i64, i64* %20, align 8
  %231 = shl i64 %230, 28
  store i64 %231, i64* %20, align 8
  %232 = load i64, i64* %20, align 8
  %233 = call i64 asm "asr 28,$0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %232) #2, !srcloc !3
  store i64 %233, i64* %20, align 8
  %234 = load i64, i64* %20, align 8
  store i64 %234, i64* %14, align 8
  br label %245

235:                                              ; preds = %30
  %236 = load i64, i64* %14, align 8
  %237 = and i64 %236, 255
  store i64 %237, i64* %14, align 8
  br label %245

238:                                              ; preds = %30
  %239 = load i64, i64* %14, align 8
  %240 = and i64 %239, 65535
  store i64 %240, i64* %14, align 8
  br label %245

241:                                              ; preds = %30
  %242 = load i64, i64* %14, align 8
  %243 = and i64 %242, 16777215
  store i64 %243, i64* %14, align 8
  br label %245

244:                                              ; preds = %30, %30, %30, %30
  br label %245

245:                                              ; preds = %244, %241, %238, %235, %225, %219, %216, %213
  %246 = load i64*, i64** %17, align 8
  %247 = icmp ne i64* %246, null
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %250 = load i64, i64* %14, align 8
  %251 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %249, i64 %250)
  %252 = load i64*, i64** %17, align 8
  %253 = icmp ne i64* %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %245
  %255 = load i64, i64* %14, align 8
  %256 = load i64, i64* %19, align 8
  %257 = add i64 %256, %255
  store i64 %257, i64* %19, align 8
  br label %261

258:                                              ; preds = %245
  %259 = load i64, i64* %14, align 8
  %260 = load i64*, i64** %17, align 8
  store i64 %259, i64* %260, align 8
  br label %261

261:                                              ; preds = %258, %254
  br label %264

262:                                              ; preds = %30
  %263 = call i32 (...) @BUG()
  store i32 0, i32* %9, align 4
  br label %275

264:                                              ; preds = %261, %209, %196, %184, %170, %156, %142, %128, %115, %101, %87, %74, %60, %46, %33
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %12, align 4
  %267 = lshr i32 %266, 8
  store i32 %267, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %30, label %269

269:                                              ; preds = %265
  %270 = load i64, i64* %19, align 8
  %271 = inttoptr i64 %270 to i8*
  %272 = load i8**, i8*** %15, align 8
  store i8* %271, i8** %272, align 8
  %273 = load i64*, i64** %18, align 8
  %274 = load i64**, i64*** %16, align 8
  store i64* %273, i64** %274, align 8
  store i32 1, i32* %9, align 4
  br label %275

275:                                              ; preds = %269, %262
  %276 = load i32, i32* %9, align 4
  ret i32 %276
}

declare dso_local i32 @kdebug(i8*, ...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2335}
!3 = !{i32 2481}
