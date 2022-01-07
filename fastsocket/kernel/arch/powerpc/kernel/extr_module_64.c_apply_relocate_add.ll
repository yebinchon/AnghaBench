; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.module = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Applying ADD relocate section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"RELOC at %p: %li-type as %s (%lu) + %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: bad TOC16 relocation (%lu)\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: bad TOC16_DS relocation (%lu)\0A\00", align 1
@SHN_UNDEF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: REL24 %li out of range!\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: Unknown ADD relocation: %lu\0A\00", align 1
@ftrace_caller = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @DEBUGP(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %31)
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %278, %5
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 24
  %44 = icmp ult i64 %35, %43
  br i1 %44, label %45, label %281

45:                                               ; preds = %33
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %56, i64 %63
  %65 = bitcast i8* %64 to i64*
  store i64* %65, i64** %15, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_9__*
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ELF64_R_SYM(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %80
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %14, align 8
  %82 = load i64*, i64** %15, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ELF64_R_TYPE(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i8*, ...) @DEBUGP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64* %82, i64 %90, i8* %96, i64 %99, i64 %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %109, %115
  store i64 %116, i64* %16, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ELF64_R_TYPE(i32 %122)
  switch i32 %123, label %262 [
    i32 134, label %124
    i32 133, label %127
    i32 131, label %130
    i32 130, label %135
    i32 129, label %164
    i32 128, label %197
    i32 132, label %256
  ]

124:                                              ; preds = %45
  %125 = load i64, i64* %16, align 8
  %126 = load i64*, i64** %15, align 8
  store i64 %125, i64* %126, align 8
  br label %277

127:                                              ; preds = %45
  %128 = load i64, i64* %16, align 8
  %129 = load i64*, i64** %15, align 8
  store i64 %128, i64* %129, align 8
  br label %277

130:                                              ; preds = %45
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = load %struct.module*, %struct.module** %11, align 8
  %133 = call i64 @my_r2(%struct.TYPE_10__* %131, %struct.module* %132)
  %134 = load i64*, i64** %15, align 8
  store i64 %133, i64* %134, align 8
  br label %277

135:                                              ; preds = %45
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = load %struct.module*, %struct.module** %11, align 8
  %138 = call i64 @my_r2(%struct.TYPE_10__* %136, %struct.module* %137)
  %139 = load i64, i64* %16, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %16, align 8
  %141 = load i64, i64* %16, align 8
  %142 = add i64 %141, 32768
  %143 = icmp ugt i64 %142, 65535
  br i1 %143, label %144, label %152

144:                                              ; preds = %135
  %145 = load %struct.module*, %struct.module** %11, align 8
  %146 = getelementptr inbounds %struct.module, %struct.module* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %147, i64 %148)
  %150 = load i32, i32* @ENOEXEC, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %282

152:                                              ; preds = %135
  %153 = load i64*, i64** %15, align 8
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, -65536
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %16, align 8
  %159 = and i64 %158, 65535
  %160 = or i64 %157, %159
  %161 = trunc i64 %160 to i32
  %162 = load i64*, i64** %15, align 8
  %163 = bitcast i64* %162 to i32*
  store i32 %161, i32* %163, align 4
  br label %277

164:                                              ; preds = %45
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = load %struct.module*, %struct.module** %11, align 8
  %167 = call i64 @my_r2(%struct.TYPE_10__* %165, %struct.module* %166)
  %168 = load i64, i64* %16, align 8
  %169 = sub i64 %168, %167
  store i64 %169, i64* %16, align 8
  %170 = load i64, i64* %16, align 8
  %171 = and i64 %170, 3
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %164
  %174 = load i64, i64* %16, align 8
  %175 = add i64 %174, 32768
  %176 = icmp ugt i64 %175, 65535
  br i1 %176, label %177, label %185

177:                                              ; preds = %173, %164
  %178 = load %struct.module*, %struct.module** %11, align 8
  %179 = getelementptr inbounds %struct.module, %struct.module* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* %16, align 8
  %182 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %180, i64 %181)
  %183 = load i32, i32* @ENOEXEC, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %6, align 4
  br label %282

185:                                              ; preds = %173
  %186 = load i64*, i64** %15, align 8
  %187 = bitcast i64* %186 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, -65533
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %16, align 8
  %192 = and i64 %191, 65532
  %193 = or i64 %190, %192
  %194 = trunc i64 %193 to i32
  %195 = load i64*, i64** %15, align 8
  %196 = bitcast i64* %195 to i32*
  store i32 %194, i32* %196, align 4
  br label %277

197:                                              ; preds = %45
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SHN_UNDEF, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %197
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %205 = load i64, i64* %16, align 8
  %206 = load %struct.module*, %struct.module** %11, align 8
  %207 = call i8* @stub_for_addr(%struct.TYPE_10__* %204, i64 %205, %struct.module* %206)
  %208 = ptrtoint i8* %207 to i64
  store i64 %208, i64* %16, align 8
  %209 = load i64, i64* %16, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = load i32, i32* @ENOENT, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  br label %282

214:                                              ; preds = %203
  %215 = load i64*, i64** %15, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 1
  %217 = load %struct.module*, %struct.module** %11, align 8
  %218 = call i32 @restore_r2(i64* %216, %struct.module* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* @ENOEXEC, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %6, align 4
  br label %282

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223, %197
  %225 = load i64*, i64** %15, align 8
  %226 = ptrtoint i64* %225 to i64
  %227 = load i64, i64* %16, align 8
  %228 = sub i64 %227, %226
  store i64 %228, i64* %16, align 8
  %229 = load i64, i64* %16, align 8
  %230 = add i64 %229, 33554432
  %231 = icmp ugt i64 %230, 67108863
  br i1 %231, label %236, label %232

232:                                              ; preds = %224
  %233 = load i64, i64* %16, align 8
  %234 = and i64 %233, 3
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %232, %224
  %237 = load %struct.module*, %struct.module** %11, align 8
  %238 = getelementptr inbounds %struct.module, %struct.module* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* %16, align 8
  %241 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %239, i64 %240)
  %242 = load i32, i32* @ENOEXEC, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %6, align 4
  br label %282

244:                                              ; preds = %232
  %245 = load i64*, i64** %15, align 8
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, -67108861
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %16, align 8
  %251 = and i64 %250, 67108860
  %252 = or i64 %249, %251
  %253 = trunc i64 %252 to i32
  %254 = load i64*, i64** %15, align 8
  %255 = bitcast i64* %254 to i32*
  store i32 %253, i32* %255, align 4
  br label %277

256:                                              ; preds = %45
  %257 = load i64, i64* %16, align 8
  %258 = load i64*, i64** %15, align 8
  %259 = ptrtoint i64* %258 to i64
  %260 = sub i64 %257, %259
  %261 = load i64*, i64** %15, align 8
  store i64 %260, i64* %261, align 8
  br label %277

262:                                              ; preds = %45
  %263 = load %struct.module*, %struct.module** %11, align 8
  %264 = getelementptr inbounds %struct.module, %struct.module* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %267 = load i32, i32* %12, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @ELF64_R_TYPE(i32 %271)
  %273 = sext i32 %272 to i64
  %274 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %265, i64 %273)
  %275 = load i32, i32* @ENOEXEC, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %6, align 4
  br label %282

277:                                              ; preds = %256, %244, %185, %152, %130, %127, %124
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %12, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %33

281:                                              ; preds = %33
  store i32 0, i32* %6, align 4
  br label %282

282:                                              ; preds = %281, %262, %236, %220, %211, %177, %144
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @DEBUGP(i8*, ...) #1

declare dso_local i32 @ELF64_R_SYM(i32) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i64 @my_r2(%struct.TYPE_10__*, %struct.module*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i8* @stub_for_addr(%struct.TYPE_10__*, i64, %struct.module*) #1

declare dso_local i32 @restore_r2(i64*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
