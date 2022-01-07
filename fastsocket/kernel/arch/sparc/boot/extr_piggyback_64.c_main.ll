; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_piggyback_64.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_piggyback_64.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_start\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_end\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Not ELF nor a.out. Don't blame me.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Couldn't find headers signature in the kernel.\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1

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
  %19 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 3
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @stat(i8* %22, %struct.stat* %16)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @die(i8* %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @die(i8* %40)
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %67, %42
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %45 = load i32*, i32** %15, align 8
  %46 = call i64 @fgets(i8* %44, i32 1024, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 19
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = call i32 @strtoul(i8* %55, i32* null, i32 16)
  store i32 %56, i32* %12, align 4
  br label %67

57:                                               ; preds = %48
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 19
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds i8, i8* %63, i64 8
  %65 = call i32 @strtoul(i8* %64, i32* null, i32 16)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %53
  br label %43

68:                                               ; preds = %43
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @fclose(i32* %69)
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @O_RDWR, align 4
  %75 = call i32 @open(i8* %73, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @die(i8* %80)
  br label %82

82:                                               ; preds = %77, %68
  %83 = load i32, i32* %17, align 4
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %85 = call i32 @read(i32 %83, i8* %84, i32 512)
  %86 = icmp ne i32 %85, 512
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @die(i8* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %94 = call i32 @memcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %134, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %99 = getelementptr inbounds i8, i8* %98, i64 28
  %100 = bitcast i8* %99 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = bitcast i8* %103 to i32*
  store i32* %104, i32** %19, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 24
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %107, %111
  %113 = load i32*, i32** %19, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %112, %115
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @lseek(i32 %117, i32 %118, i32 0)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %96
  %122 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %96
  %124 = load i32, i32* %17, align 4
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %126 = call i32 @read(i32 %124, i8* %125, i32 512)
  %127 = icmp ne i32 %126, 512
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @die(i8* %131)
  br label %133

133:                                              ; preds = %128, %123
  store i32 0, i32* %10, align 4
  br label %145

134:                                              ; preds = %92
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 16
  %138 = icmp eq i32 %137, 16974087
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 32, i32* %10, align 4
  store i32 32, i32* %9, align 4
  br label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @stderr, align 4
  %142 = call i32 @fprintf(i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %133
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %147, 32
  br i1 %148, label %149, label %170

149:                                              ; preds = %145
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 40
  %151 = load i8, i8* %150, align 8
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 72
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 41
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 100
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 42
  %161 = load i8, i8* %160, align 2
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 114
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 43
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 83
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 50, i32* %14, align 4
  br label %254

170:                                              ; preds = %164, %159, %154, %149, %145
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %172 = load i32, i32* %10, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = getelementptr inbounds i8, i8* %174, i64 2
  %176 = bitcast i8* %175 to i16*
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i32
  %179 = shl i32 %178, 2
  %180 = sub nsw i32 %179, 512
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i64 @lseek(i32 %183, i32 %184, i32 0)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %170
  %188 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %170
  %190 = load i32, i32* %17, align 4
  %191 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %192 = call i32 @read(i32 %190, i8* %191, i32 1024)
  %193 = icmp ne i32 %192, 1024
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load i8**, i8*** %5, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @die(i8* %197)
  br label %199

199:                                              ; preds = %194, %189
  %200 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %200, i8** %7, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 512
  store i8* %202, i8** %8, align 8
  br label %203

203:                                              ; preds = %232, %199
  %204 = load i8*, i8** %7, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = icmp ult i8* %204, %205
  br i1 %206, label %207, label %235

207:                                              ; preds = %203
  %208 = load i8*, i8** %7, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 72
  br i1 %211, label %212, label %231

212:                                              ; preds = %207
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 100
  br i1 %217, label %218, label %231

218:                                              ; preds = %212
  %219 = load i8*, i8** %7, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 2
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 114
  br i1 %223, label %224, label %231

224:                                              ; preds = %218
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 3
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 83
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %235

231:                                              ; preds = %224, %218, %212, %207
  br label %232

232:                                              ; preds = %231
  %233 = load i8*, i8** %7, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 4
  store i8* %234, i8** %7, align 8
  br label %203

235:                                              ; preds = %230, %203
  %236 = load i8*, i8** %7, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = icmp eq i8* %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32, i32* @stderr, align 4
  %241 = call i32 @fprintf(i32 %240, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %242 = call i32 @exit(i32 1) #3
  unreachable

243:                                              ; preds = %235
  %244 = load i32, i32* %9, align 4
  %245 = zext i32 %244 to i64
  %246 = load i8*, i8** %7, align 8
  %247 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = add nsw i64 %245, %250
  %252 = add nsw i64 %251, 10
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %243, %169
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %14, align 4
  %257 = call i64 @lseek(i32 %255, i32 %256, i32 0)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %254
  %262 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %263 = bitcast i8* %262 to i32*
  store i32 0, i32* %263, align 16
  %264 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %265 = getelementptr inbounds i8, i8* %264, i64 4
  %266 = bitcast i8* %265 to i32*
  store i32 16777216, i32* %266, align 4
  %267 = load i32, i32* %13, align 4
  %268 = add i32 %267, 32
  %269 = add i32 %268, 8191
  %270 = and i32 %269, -8192
  %271 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %272 = getelementptr inbounds i8, i8* %271, i64 8
  %273 = bitcast i8* %272 to i32*
  store i32 %270, i32* %273, align 4
  %274 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %277 = getelementptr inbounds i8, i8* %276, i64 12
  %278 = bitcast i8* %277 to i32*
  store i32 %275, i32* %278, align 4
  %279 = load i32, i32* %17, align 4
  %280 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %281 = getelementptr inbounds i8, i8* %280, i64 2
  %282 = call i32 @write(i32 %279, i8* %281, i32 14)
  %283 = icmp ne i32 %282, 14
  br i1 %283, label %284, label %289

284:                                              ; preds = %261
  %285 = load i8**, i8*** %5, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @die(i8* %287)
  br label %289

289:                                              ; preds = %284, %261
  %290 = load i32, i32* %17, align 4
  %291 = call i64 @lseek(i32 %290, i32 4, i32 0)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %289
  %296 = load i32, i32* %13, align 4
  %297 = add i32 %296, 32
  %298 = add i32 %297, 8191
  %299 = and i32 %298, -8192
  %300 = zext i32 %299 to i64
  %301 = load i32, i32* %12, align 4
  %302 = zext i32 %301 to i64
  %303 = and i64 %302, -4194304
  %304 = sub i64 %300, %303
  %305 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  %308 = add i64 %304, %307
  %309 = trunc i64 %308 to i32
  %310 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %311 = bitcast i8* %310 to i32*
  store i32 %309, i32* %311, align 16
  %312 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %313 = getelementptr inbounds i8, i8* %312, i64 4
  %314 = bitcast i8* %313 to i32*
  store i32 0, i32* %314, align 4
  %315 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %316 = getelementptr inbounds i8, i8* %315, i64 8
  %317 = bitcast i8* %316 to i32*
  store i32 0, i32* %317, align 4
  %318 = load i32, i32* %17, align 4
  %319 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %320 = call i32 @write(i32 %318, i8* %319, i32 12)
  %321 = icmp ne i32 %320, 12
  br i1 %321, label %322, label %327

322:                                              ; preds = %295
  %323 = load i8**, i8*** %5, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 1
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @die(i8* %325)
  br label %327

327:                                              ; preds = %322, %295
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %12, align 4
  %331 = sub i32 %329, %330
  %332 = load i32, i32* %13, align 4
  %333 = add i32 %332, 32
  %334 = add i32 %333, 8191
  %335 = and i32 %334, -8192
  %336 = add i32 %331, %335
  %337 = call i64 @lseek(i32 %328, i32 %336, i32 0)
  %338 = icmp slt i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %327
  %340 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %327
  %342 = load i8**, i8*** %5, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 3
  %344 = load i8*, i8** %343, align 8
  %345 = load i32, i32* @O_RDONLY, align 4
  %346 = call i32 @open(i8* %344, i32 %345)
  store i32 %346, i32* %18, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %341
  %349 = load i8**, i8*** %5, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 3
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @die(i8* %351)
  br label %353

353:                                              ; preds = %348, %341
  br label %354

354:                                              ; preds = %371, %353
  %355 = load i32, i32* %18, align 4
  %356 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %357 = call i32 @read(i32 %355, i8* %356, i32 1024)
  store i32 %357, i32* %9, align 4
  %358 = icmp ugt i32 %357, 0
  br i1 %358, label %359, label %372

359:                                              ; preds = %354
  %360 = load i32, i32* %17, align 4
  %361 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %362 = load i32, i32* %9, align 4
  %363 = call i32 @write(i32 %360, i8* %361, i32 %362)
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %363, %364
  br i1 %365, label %366, label %371

366:                                              ; preds = %359
  %367 = load i8**, i8*** %5, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 1
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @die(i8* %369)
  br label %371

371:                                              ; preds = %366, %359
  br label %354

372:                                              ; preds = %354
  %373 = load i32, i32* %17, align 4
  %374 = call i64 @close(i32 %373)
  %375 = icmp slt i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %378

378:                                              ; preds = %376, %372
  %379 = load i32, i32* %18, align 4
  %380 = call i64 @close(i32 %379)
  %381 = icmp slt i64 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %378
  %383 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %378
  ret i32 0
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

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
