; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_interrogate_success.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_interrogate_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32)* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.call_struc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%d 0x%lx %d %s \00", align 1
@DIVERT_REPORT = common dso_local global i32 0, align 4
@divert_if = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" 0x%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.call_struc*)* @interrogate_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrogate_success(%struct.TYPE_8__* %0, %struct.call_struc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.call_struc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [90 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.call_struc* %1, %struct.call_struc** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -100, i32* %3, align 4
  br label %370

27:                                               ; preds = %2
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 48
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -101, i32* %3, align 4
  br label %370

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = icmp sgt i32 %38, 129
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -102, i32* %3, align 4
  br label %370

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -103, i32* %3, align 4
  br label %370

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -2
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59, %50
  store i32 -104, i32* %3, align 4
  br label %370

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* %7, align 4
  br label %97

72:                                               ; preds = %41
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 129
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 -105, i32* %3, align 4
  br label %370

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %7, align 4
  br label %96

88:                                               ; preds = %72
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 -106, i32* %3, align 4
  br label %370

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %86
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 -107, i32* %3, align 4
  br label %370

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  %104 = load i8, i8* %102, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 2
  br i1 %106, label %119, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  %116 = load i8, i8* %114, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 11
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %107, %101
  store i32 -108, i32* %3, align 4
  br label %370

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 3
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 2
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 -109, i32* %3, align 4
  br label %370

126:                                              ; preds = %120
  %127 = load i8*, i8** %6, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 49
  br i1 %130, label %131, label %197

131:                                              ; preds = %126
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %6, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %6, align 8
  %136 = load i8, i8* %134, align 1
  %137 = sext i8 %136 to i32
  store i32 %137, i32* %9, align 4
  %138 = icmp sgt i32 %137, 129
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  store i32 -110, i32* %3, align 4
  br label %370

140:                                              ; preds = %131
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %141, 2
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 128
  br i1 %144, label %145, label %171

145:                                              ; preds = %140
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 -111, i32* %3, align 4
  br label %370

149:                                              ; preds = %145
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 -1
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %149
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = getelementptr inbounds i8, i8* %162, i64 -2
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158, %149
  store i32 -112, i32* %3, align 4
  br label %370

168:                                              ; preds = %158
  %169 = load i32, i32* %7, align 4
  %170 = sub nsw i32 %169, 2
  store i32 %170, i32* %7, align 4
  br label %196

171:                                              ; preds = %140
  %172 = load i32, i32* %9, align 4
  %173 = icmp eq i32 %172, 129
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %6, align 8
  %177 = load i8, i8* %175, align 1
  %178 = sext i8 %177 to i32
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  store i32 -113, i32* %3, align 4
  br label %370

185:                                              ; preds = %174
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %7, align 4
  br label %195

187:                                              ; preds = %171
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 -114, i32* %3, align 4
  br label %370

192:                                              ; preds = %187
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %194, %185
  br label %196

196:                                              ; preds = %195, %168
  br label %197

197:                                              ; preds = %196, %126
  br label %198

198:                                              ; preds = %360, %353, %341, %333, %309, %284, %271, %255, %197
  %199 = load i32, i32* %7, align 4
  %200 = icmp sge i32 %199, 2
  br i1 %200, label %201, label %365

201:                                              ; preds = %198
  %202 = getelementptr inbounds [90 x i8], [90 x i8]* %11, i64 0, i64 0
  store i8* %202, i8** %13, align 8
  %203 = load i8*, i8** %13, align 8
  %204 = load i32, i32* @DIVERT_REPORT, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  %212 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @divert_if, i32 0, i32 0), align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 %212(i32 %215)
  %217 = call i32 (i8*, i8*, ...) @sprintf(i8* %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %204, i32 %209, i32 %210, i32 %216)
  %218 = load i8*, i8** %13, align 8
  %219 = call i32 @strlen(i8* %218)
  %220 = load i8*, i8** %13, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %13, align 8
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %6, align 8
  %225 = load i8, i8* %223, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 48
  br i1 %227, label %228, label %229

228:                                              ; preds = %201
  store i32 -115, i32* %3, align 4
  br label %370

229:                                              ; preds = %201
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %6, align 8
  %232 = load i8, i8* %230, align 1
  %233 = sext i8 %232 to i32
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %7, align 4
  %235 = sub nsw i32 %234, 2
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %7, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  store i32 -116, i32* %3, align 4
  br label %370

240:                                              ; preds = %229
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %7, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %7, align 4
  %244 = load i8*, i8** %6, align 8
  store i8* %244, i8** %12, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i8*, i8** %6, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %6, align 8
  %249 = load i8*, i8** %13, align 8
  %250 = load i8*, i8** %12, align 8
  %251 = load i32, i32* %9, align 4
  %252 = and i32 %251, 255
  %253 = call i32 @put_address(i8* %249, i8* %250, i32 %252)
  store i32 %253, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %240
  br label %198

256:                                              ; preds = %240
  %257 = load i8*, i8** %13, align 8
  %258 = call i32 @strlen(i8* %257)
  %259 = load i8*, i8** %13, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %13, align 8
  %262 = load i32, i32* %10, align 4
  %263 = load i8*, i8** %12, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store i8* %265, i8** %12, align 8
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %9, align 4
  %268 = sub nsw i32 %267, %266
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %9, align 4
  %270 = icmp slt i32 %269, 6
  br i1 %270, label %271, label %272

271:                                              ; preds = %256
  br label %198

272:                                              ; preds = %256
  %273 = load i8*, i8** %12, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %12, align 8
  %275 = load i8, i8* %273, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp ne i32 %276, 10
  br i1 %277, label %284, label %278

278:                                              ; preds = %272
  %279 = load i8*, i8** %12, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %12, align 8
  %281 = load i8, i8* %279, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %282, 1
  br i1 %283, label %284, label %285

284:                                              ; preds = %278, %272
  br label %198

285:                                              ; preds = %278
  %286 = load i8*, i8** %13, align 8
  %287 = load i8*, i8** %12, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %12, align 8
  %289 = load i8, i8* %287, align 1
  %290 = sext i8 %289 to i32
  %291 = and i32 %290, 255
  %292 = call i32 (i8*, i8*, ...) @sprintf(i8* %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %291)
  %293 = load i8*, i8** %13, align 8
  %294 = call i32 @strlen(i8* %293)
  %295 = load i8*, i8** %13, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  store i8* %297, i8** %13, align 8
  %298 = load i8*, i8** %12, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %12, align 8
  %300 = load i8, i8* %298, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 10
  br i1 %302, label %309, label %303

303:                                              ; preds = %285
  %304 = load i8*, i8** %12, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %12, align 8
  %306 = load i8, i8* %304, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 1
  br i1 %308, label %309, label %310

309:                                              ; preds = %303, %285
  br label %198

310:                                              ; preds = %303
  %311 = load i8*, i8** %13, align 8
  %312 = load i8*, i8** %12, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %12, align 8
  %314 = load i8, i8* %312, align 1
  %315 = sext i8 %314 to i32
  %316 = and i32 %315, 255
  %317 = call i32 (i8*, i8*, ...) @sprintf(i8* %311, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %316)
  %318 = load i8*, i8** %13, align 8
  %319 = call i32 @strlen(i8* %318)
  %320 = load i8*, i8** %13, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8* %322, i8** %13, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sub nsw i32 %323, 6
  store i32 %324, i32* %9, align 4
  %325 = load i32, i32* %9, align 4
  %326 = icmp sgt i32 %325, 2
  br i1 %326, label %327, label %360

327:                                              ; preds = %310
  %328 = load i8*, i8** %12, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %12, align 8
  %330 = load i8, i8* %328, align 1
  %331 = sext i8 %330 to i32
  %332 = icmp ne i32 %331, 48
  br i1 %332, label %333, label %334

333:                                              ; preds = %327
  br label %198

334:                                              ; preds = %327
  %335 = load i8*, i8** %12, align 8
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = load i32, i32* %9, align 4
  %339 = sub nsw i32 %338, 2
  %340 = icmp sgt i32 %337, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %334
  br label %198

342:                                              ; preds = %334
  %343 = load i8*, i8** %12, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %12, align 8
  %345 = load i8, i8* %343, align 1
  %346 = sext i8 %345 to i32
  store i32 %346, i32* %9, align 4
  %347 = load i8*, i8** %13, align 8
  %348 = load i8*, i8** %12, align 8
  %349 = load i32, i32* %9, align 4
  %350 = and i32 %349, 255
  %351 = call i32 @put_address(i8* %347, i8* %348, i32 %350)
  store i32 %351, i32* %10, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %342
  br label %198

354:                                              ; preds = %342
  %355 = load i8*, i8** %13, align 8
  %356 = call i32 @strlen(i8* %355)
  %357 = load i8*, i8** %13, align 8
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  store i8* %359, i8** %13, align 8
  br label %360

360:                                              ; preds = %354, %310
  %361 = load i8*, i8** %13, align 8
  %362 = call i32 (i8*, i8*, ...) @sprintf(i8* %361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %363 = getelementptr inbounds [90 x i8], [90 x i8]* %11, i64 0, i64 0
  %364 = call i32 @put_info_buffer(i8* %363)
  br label %198

365:                                              ; preds = %198
  %366 = load i32, i32* %7, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  store i32 -117, i32* %3, align 4
  br label %370

369:                                              ; preds = %365
  store i32 0, i32* %3, align 4
  br label %370

370:                                              ; preds = %369, %368, %239, %228, %191, %184, %167, %148, %139, %125, %119, %100, %92, %85, %68, %49, %40, %33, %26
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @put_address(i8*, i8*, i32) #1

declare dso_local i32 @put_info_buffer(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
