; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpih-div.c_mpihelp_mod_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpih-div.c_mpihelp_mod_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UDIV_TIME = common dso_local global i32 0, align 4
@UMUL_TIME = common dso_local global i32 0, align 4
@BITS_PER_MPI_LIMB = common dso_local global i32 0, align 4
@UDIV_NEEDS_NORMALIZATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpihelp_mod_1(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %263

20:                                               ; preds = %3
  %21 = load i32, i32* @UDIV_TIME, align 4
  %22 = load i32, i32* @UMUL_TIME, align 4
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %23, 6
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %161

26:                                               ; preds = %20
  %27 = load i32, i32* @UDIV_TIME, align 4
  %28 = load i32, i32* @UMUL_TIME, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 %29, 6
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @UDIV_TIME, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %161

36:                                               ; preds = %26
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @count_leading_zeros(i32 %37, i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %112

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 -1, i32* %14, align 4
  br label %57

50:                                               ; preds = %42
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @udiv_qrnnd(i32 %51, i32 %52, i32 %54, i32 0, i32 %55)
  br label %57

57:                                               ; preds = %50, %49
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %65, %66
  %68 = ashr i32 %64, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 2
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %96, %57
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %13, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %87, %88
  %90 = ashr i32 %86, %89
  %91 = or i32 %85, %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @UDIV_QRNND_PREINV(i32 %80, i32 %81, i32 %82, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %74
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %8, align 4
  br label %71

99:                                               ; preds = %71
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %13, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @UDIV_QRNND_PREINV(i32 %100, i32 %101, i32 %102, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %13, align 4
  %111 = ashr i32 %109, %110
  store i32 %111, i32* %4, align 4
  br label %263

112:                                              ; preds = %36
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store i32 -1, i32* %15, align 4
  br label %124

117:                                              ; preds = %112
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 0, %120
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @udiv_qrnnd(i32 %118, i32 %119, i32 %121, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %117, %116
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  br label %139

136:                                              ; preds = %124
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %136, %135
  br label %140

140:                                              ; preds = %156, %139
  %141 = load i32, i32* %8, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @UDIV_QRNND_PREINV(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %143
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %8, align 4
  br label %140

159:                                              ; preds = %140
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %4, align 4
  br label %263

161:                                              ; preds = %26, %20
  %162 = load i64, i64* @UDIV_NEEDS_NORMALIZATION, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %227

164:                                              ; preds = %161
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @count_leading_zeros(i32 %165, i32 %166)
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %226

170:                                              ; preds = %164
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %7, align 4
  %173 = shl i32 %172, %171
  store i32 %173, i32* %7, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %182 = load i32, i32* %16, align 4
  %183 = sub nsw i32 %181, %182
  %184 = ashr i32 %180, %183
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %6, align 4
  %186 = sub nsw i32 %185, 2
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %211, %170
  %188 = load i32, i32* %8, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %214

190:                                              ; preds = %187
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %16, align 4
  %201 = shl i32 %199, %200
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %204 = load i32, i32* %16, align 4
  %205 = sub nsw i32 %203, %204
  %206 = ashr i32 %202, %205
  %207 = or i32 %201, %206
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @udiv_qrnnd(i32 %196, i32 %197, i32 %198, i32 %207, i32 %208)
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %190
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %8, align 4
  br label %187

214:                                              ; preds = %187
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %16, align 4
  %220 = shl i32 %218, %219
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @udiv_qrnnd(i32 %215, i32 %216, i32 %217, i32 %220, i32 %221)
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %16, align 4
  %225 = ashr i32 %223, %224
  store i32 %225, i32* %4, align 4
  br label %263

226:                                              ; preds = %164
  br label %227

227:                                              ; preds = %226, %161
  %228 = load i32, i32* %6, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp sge i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  store i32 0, i32* %11, align 4
  br label %242

239:                                              ; preds = %227
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %239, %238
  br label %243

243:                                              ; preds = %258, %242
  %244 = load i32, i32* %8, align 4
  %245 = icmp sge i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %243
  %247 = load i32*, i32** %5, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @udiv_qrnnd(i32 %252, i32 %253, i32 %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %246
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %8, align 4
  br label %243

261:                                              ; preds = %243
  %262 = load i32, i32* %11, align 4
  store i32 %262, i32* %4, align 4
  br label %263

263:                                              ; preds = %261, %214, %159, %99, %19
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local i32 @count_leading_zeros(i32, i32) #1

declare dso_local i32 @udiv_qrnnd(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UDIV_QRNND_PREINV(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
