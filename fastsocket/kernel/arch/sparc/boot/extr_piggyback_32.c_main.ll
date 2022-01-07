; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_piggyback_32.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_piggyback_32.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@main.aout_magic = internal global [4 x i8] c"\01\03\01\07", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" T start\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" A _end\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Could not determine start and end from System.map\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Not ELF nor a.out. Don't blame me.\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Couldn't find headers signature in the kernel.\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.stat, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %2
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @stat(i8* %26, %struct.stat* %16)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @die(i8* %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @die(i8* %44)
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %79, %46
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %49 = load i32*, i32** %15, align 8
  %50 = call i64 @fgets(i8* %48, i32 1024, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 16
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57, %52
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %64 = call i32 @strtoul(i8* %63, i32* null, i32 16)
  store i32 %64, i32* %12, align 4
  br label %79

65:                                               ; preds = %57
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70, %65
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %77 = call i32 @strtoul(i8* %76, i32* null, i32 16)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78, %62
  br label %47

80:                                               ; preds = %47
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %85
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* @O_RDWR, align 4
  %97 = call i32 @open(i8* %95, i32 %96)
  store i32 %97, i32* %17, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @die(i8* %102)
  br label %104

104:                                              ; preds = %99, %92
  %105 = load i32, i32* %17, align 4
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %107 = call i32 @read(i32 %105, i8* %106, i32 512)
  %108 = icmp ne i32 %107, 512
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @die(i8* %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %116 = call i64 @memcmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %153

118:                                              ; preds = %114
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %121 = getelementptr inbounds i8, i8* %120, i64 28
  %122 = call i32 @ld4(i8* %121)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  store i8* %124, i8** %7, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  %127 = call i32 @ld4(i8* %126)
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %129 = getelementptr inbounds i8, i8* %128, i64 24
  %130 = call i32 @ld4(i8* %129)
  %131 = add nsw i32 %127, %130
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 8
  %134 = call i32 @ld4(i8* %133)
  %135 = sub nsw i32 %131, %134
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i64 @lseek(i32 %136, i32 %137, i32 0)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %118
  %141 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %118
  %143 = load i32, i32* %17, align 4
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %145 = call i32 @read(i32 %143, i8* %144, i32 512)
  %146 = icmp ne i32 %145, 512
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @die(i8* %150)
  br label %152

152:                                              ; preds = %147, %142
  store i32 0, i32* %10, align 4
  br label %163

153:                                              ; preds = %114
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %155 = call i64 @memcmp(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.aout_magic, i64 0, i64 0), i32 4)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 32, i32* %10, align 4
  store i32 32, i32* %9, align 4
  br label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 @fprintf(i32 %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %152
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %11, align 4
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  %170 = call i32 @ld2(i8* %169)
  %171 = shl i32 %170, 2
  %172 = sub nsw i32 %171, 512
  %173 = load i32, i32* %9, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i64 @lseek(i32 %175, i32 %176, i32 0)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %163
  %180 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %163
  %182 = load i32, i32* %17, align 4
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %184 = call i32 @read(i32 %182, i8* %183, i32 1024)
  %185 = icmp ne i32 %184, 1024
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @die(i8* %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %192, i8** %7, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 512
  store i8* %194, i8** %8, align 8
  br label %195

195:                                              ; preds = %224, %191
  %196 = load i8*, i8** %7, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = icmp ult i8* %196, %197
  br i1 %198, label %199, label %227

199:                                              ; preds = %195
  %200 = load i8*, i8** %7, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 72
  br i1 %203, label %204, label %223

204:                                              ; preds = %199
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 100
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 114
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 3
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 83
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %227

223:                                              ; preds = %216, %210, %204, %199
  br label %224

224:                                              ; preds = %223
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 4
  store i8* %226, i8** %7, align 8
  br label %195

227:                                              ; preds = %222, %195
  %228 = load i8*, i8** %7, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i32, i32* @stderr, align 4
  %233 = call i32 @fprintf(i32 %232, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %234 = call i32 @exit(i32 1) #3
  unreachable

235:                                              ; preds = %227
  %236 = load i32, i32* %9, align 4
  %237 = zext i32 %236 to i64
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %240 = ptrtoint i8* %238 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = add nsw i64 %237, %242
  %244 = add nsw i64 %243, 10
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %14, align 4
  %248 = call i64 @lseek(i32 %246, i32 %247, i32 0)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %235
  %251 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %235
  %253 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %254 = call i32 @st4(i8* %253, i32 0)
  %255 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %256 = getelementptr inbounds i8, i8* %255, i64 4
  %257 = call i32 @st4(i8* %256, i32 16777216)
  %258 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %259 = getelementptr inbounds i8, i8* %258, i64 8
  %260 = load i32, i32* %13, align 4
  %261 = add i32 %260, 32
  %262 = add i32 %261, 4095
  %263 = and i32 %262, -4096
  %264 = call i32 @st4(i8* %259, i32 %263)
  %265 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %266 = getelementptr inbounds i8, i8* %265, i64 12
  %267 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @st4(i8* %266, i32 %268)
  %270 = load i32, i32* %17, align 4
  %271 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %272 = getelementptr inbounds i8, i8* %271, i64 2
  %273 = call i32 @write(i32 %270, i8* %272, i32 14)
  %274 = icmp ne i32 %273, 14
  br i1 %274, label %275, label %280

275:                                              ; preds = %252
  %276 = load i8**, i8*** %5, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 1
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @die(i8* %278)
  br label %280

280:                                              ; preds = %275, %252
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %12, align 4
  %284 = sub i32 %282, %283
  %285 = load i32, i32* %13, align 4
  %286 = add i32 %285, 32
  %287 = add i32 %286, 4095
  %288 = and i32 %287, -4096
  %289 = add i32 %284, %288
  %290 = call i64 @lseek(i32 %281, i32 %289, i32 0)
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %280
  %293 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %280
  %295 = load i8**, i8*** %5, align 8
  %296 = getelementptr inbounds i8*, i8** %295, i64 3
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* @O_RDONLY, align 4
  %299 = call i32 @open(i8* %297, i32 %298)
  store i32 %299, i32* %18, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = load i8**, i8*** %5, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i64 3
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @die(i8* %304)
  br label %306

306:                                              ; preds = %301, %294
  br label %307

307:                                              ; preds = %324, %306
  %308 = load i32, i32* %18, align 4
  %309 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %310 = call i32 @read(i32 %308, i8* %309, i32 1024)
  store i32 %310, i32* %9, align 4
  %311 = icmp ugt i32 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %307
  %313 = load i32, i32* %17, align 4
  %314 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %315 = load i32, i32* %9, align 4
  %316 = call i32 @write(i32 %313, i8* %314, i32 %315)
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %316, %317
  br i1 %318, label %319, label %324

319:                                              ; preds = %312
  %320 = load i8**, i8*** %5, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 1
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @die(i8* %322)
  br label %324

324:                                              ; preds = %319, %312
  br label %307

325:                                              ; preds = %307
  %326 = load i32, i32* %17, align 4
  %327 = call i64 @close(i32 %326)
  %328 = icmp slt i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %325
  %332 = load i32, i32* %18, align 4
  %333 = call i64 @close(i32 %332)
  %334 = icmp slt i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %337

337:                                              ; preds = %335, %331
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ld4(i8*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @ld2(i8*) #1

declare dso_local i32 @st4(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
