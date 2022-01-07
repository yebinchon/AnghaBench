; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-mpow.c_mpi_mulpowm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-mpow.c_mpi_mulpowm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mpi_mulpowm: assert(k) failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"mpi_mulpowm: assert(i==k) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"mpi_mulpowm: assert(t) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"mpi_mulpowm: assert(k<10) failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"mpi_mulpowm: assert(idx >= 0 && idx < (1<<k)) failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_mulpowm(i32* %0, i32** %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  store i32** null, i32*** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %27, %4
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %19

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %16, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @mpi_get_nbits(i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 (...) @BUG()
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %10, align 4
  %71 = icmp sge i32 %70, 10
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 (...) @BUG()
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 1, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32** @kzalloc(i32 %80, i32 %81)
  store i32** %82, i32*** %15, align 8
  %83 = load i32**, i32*** %15, align 8
  %84 = icmp ne i32** %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %246

86:                                               ; preds = %75
  %87 = load i32*, i32** %8, align 8
  %88 = call i64 @mpi_get_nlimbs(i32* %87)
  %89 = add nsw i64 %88, 1
  %90 = call i32* @mpi_alloc(i64 %89)
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %246

94:                                               ; preds = %86
  %95 = load i32*, i32** %5, align 8
  %96 = call i64 @mpi_set_ui(i32* %95, i32 1)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %246

99:                                               ; preds = %94
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %242, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %245

104:                                              ; preds = %100
  %105 = load i32*, i32** %16, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i64 @mpi_mulm(i32* %105, i32* %106, i32* %107, i32* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %246

112:                                              ; preds = %104
  %113 = load i32**, i32*** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @build_index(i32** %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %10, align 4
  %123 = shl i32 1, %122
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %120, %112
  %126 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %127 = call i32 (...) @BUG()
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32**, i32*** %15, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %229, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %135
  %139 = call i32* @mpi_alloc_set_ui(i32 1)
  %140 = load i32**, i32*** %15, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 0
  store i32* %139, i32** %141, align 8
  %142 = load i32**, i32*** %15, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  br label %246

147:                                              ; preds = %138
  br label %228

148:                                              ; preds = %135
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %203, %148
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %206

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = shl i32 1, %155
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %202

159:                                              ; preds = %153
  %160 = load i32**, i32*** %15, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %180, label %166

166:                                              ; preds = %159
  %167 = load i32**, i32*** %15, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32**, i32*** %6, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = call i64 @mpi_copy(i32** %170, i32* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  br label %246

179:                                              ; preds = %166
  br label %201

180:                                              ; preds = %159
  %181 = load i32**, i32*** %15, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load i32**, i32*** %15, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32**, i32*** %6, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = call i64 @mpi_mulm(i32* %185, i32* %190, i32* %195, i32* %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %180
  br label %246

200:                                              ; preds = %180
  br label %201

201:                                              ; preds = %200, %179
  br label %202

202:                                              ; preds = %201, %153
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %149

206:                                              ; preds = %149
  %207 = load i32**, i32*** %15, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %227, label %213

213:                                              ; preds = %206
  %214 = call i32* @mpi_alloc(i64 0)
  %215 = load i32**, i32*** %15, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  store i32* %214, i32** %218, align 8
  %219 = load i32**, i32*** %15, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %213
  br label %246

226:                                              ; preds = %213
  br label %227

227:                                              ; preds = %226, %206
  br label %228

228:                                              ; preds = %227, %147
  br label %229

229:                                              ; preds = %228, %128
  %230 = load i32*, i32** %5, align 8
  %231 = load i32*, i32** %16, align 8
  %232 = load i32**, i32*** %15, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %232, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = call i64 @mpi_mulm(i32* %230, i32* %231, i32* %236, i32* %237)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %229
  br label %246

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %100

245:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %246

246:                                              ; preds = %245, %240, %225, %199, %178, %146, %111, %98, %93, %85
  %247 = load i32*, i32** %16, align 8
  %248 = call i32 @mpi_free(i32* %247)
  store i32 0, i32* %12, align 4
  br label %249

249:                                              ; preds = %261, %246
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %10, align 4
  %252 = shl i32 1, %251
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %249
  %255 = load i32**, i32*** %15, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @mpi_free(i32* %259)
  br label %261

261:                                              ; preds = %254
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %12, align 4
  br label %249

264:                                              ; preds = %249
  %265 = load i32**, i32*** %15, align 8
  %266 = call i32 @kfree(i32** %265)
  %267 = load i32, i32* %9, align 4
  ret i32 %267
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mpi_get_nbits(i32*) #1

declare dso_local i32** @kzalloc(i32, i32) #1

declare dso_local i32* @mpi_alloc(i64) #1

declare dso_local i64 @mpi_get_nlimbs(i32*) #1

declare dso_local i64 @mpi_set_ui(i32*, i32) #1

declare dso_local i64 @mpi_mulm(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @build_index(i32**, i32, i32, i32) #1

declare dso_local i32* @mpi_alloc_set_ui(i32) #1

declare dso_local i64 @mpi_copy(i32**, i32*) #1

declare dso_local i32 @mpi_free(i32*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
