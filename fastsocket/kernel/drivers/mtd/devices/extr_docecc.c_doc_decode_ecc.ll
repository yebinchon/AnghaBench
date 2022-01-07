; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_docecc.c_doc_decode_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_docecc.c_doc_decode_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECTOR_SIZE = common dso_local global i32 0, align 4
@NN = common dso_local global i32 0, align 4
@KK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NB_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doc_decode_ecc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i32, i32* @SECTOR_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @NN, align 4
  %23 = load i32, i32* @KK, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load i32, i32* @NN, align 4
  %30 = load i32, i32* @KK, align 4
  %31 = sub nsw i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %34 = load i32, i32* @NN, align 4
  %35 = load i32, i32* @KK, align 4
  %36 = sub nsw i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %12, align 8
  %39 = load i32, i32* @NN, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @kmalloc(i32 %43, i32 %44)
  store i32* %45, i32** %17, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %266

49:                                               ; preds = %2
  %50 = load i32, i32* @NN, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32* @kmalloc(i32 %54, i32 %55)
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32*, i32** %17, align 8
  %61 = call i32 @kfree(i32* %60)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %266

62:                                               ; preds = %49
  %63 = load i32*, i32** %17, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = call i32 @generate_gf(i32* %63, i32* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 255
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 3
  %80 = shl i32 %79, 8
  %81 = or i32 %74, %80
  %82 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %81, i32* %82, align 16
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 5
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 252
  %88 = ashr i32 %87, 2
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 15
  %94 = shl i32 %93, 6
  %95 = or i32 %88, %94
  %96 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 240
  %102 = ashr i32 %101, 4
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 63
  %108 = shl i32 %107, 4
  %109 = or i32 %102, %108
  %110 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %109, i32* %110, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 192
  %116 = ashr i32 %115, 6
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 255
  %122 = shl i32 %121, 2
  %123 = or i32 %116, %122
  %124 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %17, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = call i32 @eras_dec_rs(i32* %125, i32* %126, i32* %28, i32* %33, i32* %38, i32 0)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %62
  br label %260

131:                                              ; preds = %62
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %251, %131
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %254

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %38, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @NB_DATA, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @KK, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 -1, i32* %8, align 4
  br label %260

149:                                              ; preds = %144, %136
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @NB_DATA, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %250

153:                                              ; preds = %149
  %154 = load i32, i32* @NB_DATA, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* %13, align 4
  %157 = sub nsw i32 %155, %156
  %158 = mul nsw i32 10, %157
  %159 = sub nsw i32 %158, 6
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = ashr i32 %160, 3
  %162 = xor i32 %161, 1
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, 7
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %153
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* @SECTOR_SIZE, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %176, label %171

171:                                              ; preds = %167, %153
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @SECTOR_SIZE, align 4
  %174 = add nsw i32 %173, 1
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %201

176:                                              ; preds = %171, %167
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %33, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 2, %181
  %183 = ashr i32 %180, %182
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %6, align 4
  %186 = xor i32 %185, %184
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* @SECTOR_SIZE, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %176
  %191 = load i32, i32* %16, align 4
  %192 = load i8*, i8** %4, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = xor i32 %197, %191
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %195, align 1
  br label %200

200:                                              ; preds = %190, %176
  br label %201

201:                                              ; preds = %200, %171
  %202 = load i32, i32* %13, align 4
  %203 = ashr i32 %202, 3
  %204 = add nsw i32 %203, 1
  %205 = xor i32 %204, 1
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 10
  %208 = and i32 %207, 7
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  store i32 8, i32* %14, align 4
  br label %212

212:                                              ; preds = %211, %201
  %213 = load i32, i32* %15, align 4
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* @SECTOR_SIZE, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %224, label %219

219:                                              ; preds = %215, %212
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* @SECTOR_SIZE, align 4
  %222 = add nsw i32 %221, 1
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %249

224:                                              ; preds = %219, %215
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %33, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %14, align 4
  %230 = sub nsw i32 8, %229
  %231 = shl i32 %228, %230
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %6, align 4
  %234 = xor i32 %233, %232
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* @SECTOR_SIZE, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %224
  %239 = load i32, i32* %16, align 4
  %240 = load i8*, i8** %4, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = xor i32 %245, %239
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %243, align 1
  br label %248

248:                                              ; preds = %238, %224
  br label %249

249:                                              ; preds = %248, %219
  br label %250

250:                                              ; preds = %249, %149
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %7, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %7, align 4
  br label %132

254:                                              ; preds = %132
  %255 = load i32, i32* %6, align 4
  %256 = and i32 %255, 255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i32 -1, i32* %8, align 4
  br label %259

259:                                              ; preds = %258, %254
  br label %260

260:                                              ; preds = %259, %148, %130
  %261 = load i32*, i32** %17, align 8
  %262 = call i32 @kfree(i32* %261)
  %263 = load i32*, i32** %18, align 8
  %264 = call i32 @kfree(i32* %263)
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %266

266:                                              ; preds = %260, %59, %48
  %267 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @generate_gf(i32*, i32*) #2

declare dso_local i32 @eras_dec_rs(i32*, i32*, i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
