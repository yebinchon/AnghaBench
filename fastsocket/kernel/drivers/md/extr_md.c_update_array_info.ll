; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_update_array_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_update_array_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__*, i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.mddev*)*, i32 (%struct.mddev*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i64, i32, i32, i64, i64 }

@MD_SB_BITMAP_PRESENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.TYPE_11__*)* @update_array_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_array_info(%struct.mddev* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 11
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.mddev*, %struct.mddev** %4, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %13, %2
  %25 = load %struct.mddev*, %struct.mddev** %4, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %84, label %32

32:                                               ; preds = %24
  %33 = load %struct.mddev*, %struct.mddev** %4, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %84, label %40

40:                                               ; preds = %32
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %84, label %48

48:                                               ; preds = %40
  %49 = load %struct.mddev*, %struct.mddev** %4, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %84, label %56

56:                                               ; preds = %48
  %57 = load %struct.mddev*, %struct.mddev** %4, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 14
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %84, label %67

67:                                               ; preds = %56
  %68 = load %struct.mddev*, %struct.mddev** %4, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = ashr i64 %73, 9
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = xor i32 %77, %80
  %82 = and i32 %81, -512
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76, %67, %56, %48, %40, %32, %24
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %370

87:                                               ; preds = %76
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.mddev*, %struct.mddev** %4, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %92, %87
  %105 = load %struct.mddev*, %struct.mddev** %4, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %104
  %116 = load %struct.mddev*, %struct.mddev** %4, align 8
  %117 = getelementptr inbounds %struct.mddev, %struct.mddev* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 9
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %123, %115
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = xor i32 %127, %130
  %132 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %136, %126
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %370

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %370

149:                                              ; preds = %143
  %150 = load %struct.mddev*, %struct.mddev** %4, align 8
  %151 = getelementptr inbounds %struct.mddev, %struct.mddev* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 9
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %190

157:                                              ; preds = %149
  %158 = load %struct.mddev*, %struct.mddev** %4, align 8
  %159 = getelementptr inbounds %struct.mddev, %struct.mddev* %158, i32 0, i32 10
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %161, align 8
  %163 = icmp eq i32 (%struct.mddev*)* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %370

167:                                              ; preds = %157
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.mddev*, %struct.mddev** %4, align 8
  %172 = getelementptr inbounds %struct.mddev, %struct.mddev* %171, i32 0, i32 8
  store i64 %170, i64* %172, align 8
  %173 = load %struct.mddev*, %struct.mddev** %4, align 8
  %174 = getelementptr inbounds %struct.mddev, %struct.mddev* %173, i32 0, i32 10
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %176, align 8
  %178 = load %struct.mddev*, %struct.mddev** %4, align 8
  %179 = call i32 %177(%struct.mddev* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %167
  %183 = load %struct.mddev*, %struct.mddev** %4, align 8
  %184 = getelementptr inbounds %struct.mddev, %struct.mddev* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.mddev*, %struct.mddev** %4, align 8
  %187 = getelementptr inbounds %struct.mddev, %struct.mddev* %186, i32 0, i32 8
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %182, %167
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %370

190:                                              ; preds = %149
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %190
  %196 = load %struct.mddev*, %struct.mddev** %4, align 8
  %197 = getelementptr inbounds %struct.mddev, %struct.mddev* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = sdiv i32 %198, 2
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %199, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %195
  %205 = load %struct.mddev*, %struct.mddev** %4, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %208, 2
  %210 = call i32 @update_size(%struct.mddev* %205, i32 %209)
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %204, %195, %190
  %212 = load %struct.mddev*, %struct.mddev** %4, align 8
  %213 = getelementptr inbounds %struct.mddev, %struct.mddev* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 8
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %214, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %211
  %220 = load %struct.mddev*, %struct.mddev** %4, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @update_raid_disks(%struct.mddev* %220, i64 %223)
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %219, %211
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = xor i32 %226, %229
  %231 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %232 = shl i32 1, %231
  %233 = and i32 %230, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %366

235:                                              ; preds = %225
  %236 = load %struct.mddev*, %struct.mddev** %4, align 8
  %237 = getelementptr inbounds %struct.mddev, %struct.mddev* %236, i32 0, i32 10
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %239, align 8
  %241 = icmp eq i32 (%struct.mddev*, i32)* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %370

245:                                              ; preds = %235
  %246 = load %struct.mddev*, %struct.mddev** %4, align 8
  %247 = getelementptr inbounds %struct.mddev, %struct.mddev* %246, i32 0, i32 13
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  %251 = load %struct.mddev*, %struct.mddev** %4, align 8
  %252 = getelementptr inbounds %struct.mddev, %struct.mddev* %251, i32 0, i32 12
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250, %245
  %256 = load i32, i32* @EBUSY, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %3, align 4
  br label %370

258:                                              ; preds = %250
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %263 = shl i32 1, %262
  %264 = and i32 %261, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %326

266:                                              ; preds = %258
  %267 = load %struct.mddev*, %struct.mddev** %4, align 8
  %268 = getelementptr inbounds %struct.mddev, %struct.mddev* %267, i32 0, i32 11
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = icmp ne %struct.TYPE_8__* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load i32, i32* @EEXIST, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %3, align 4
  br label %370

274:                                              ; preds = %266
  %275 = load %struct.mddev*, %struct.mddev** %4, align 8
  %276 = getelementptr inbounds %struct.mddev, %struct.mddev* %275, i32 0, i32 9
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %3, align 4
  br label %370

283:                                              ; preds = %274
  %284 = load %struct.mddev*, %struct.mddev** %4, align 8
  %285 = getelementptr inbounds %struct.mddev, %struct.mddev* %284, i32 0, i32 9
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.mddev*, %struct.mddev** %4, align 8
  %289 = getelementptr inbounds %struct.mddev, %struct.mddev* %288, i32 0, i32 9
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  %291 = load %struct.mddev*, %struct.mddev** %4, align 8
  %292 = getelementptr inbounds %struct.mddev, %struct.mddev* %291, i32 0, i32 9
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.mddev*, %struct.mddev** %4, align 8
  %296 = getelementptr inbounds %struct.mddev, %struct.mddev* %295, i32 0, i32 9
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 3
  store i32 %294, i32* %297, align 4
  %298 = load %struct.mddev*, %struct.mddev** %4, align 8
  %299 = getelementptr inbounds %struct.mddev, %struct.mddev* %298, i32 0, i32 10
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 1
  %302 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %301, align 8
  %303 = load %struct.mddev*, %struct.mddev** %4, align 8
  %304 = call i32 %302(%struct.mddev* %303, i32 1)
  %305 = load %struct.mddev*, %struct.mddev** %4, align 8
  %306 = call i32 @bitmap_create(%struct.mddev* %305)
  store i32 %306, i32* %6, align 4
  %307 = load i32, i32* %6, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %312, label %309

309:                                              ; preds = %283
  %310 = load %struct.mddev*, %struct.mddev** %4, align 8
  %311 = call i32 @bitmap_load(%struct.mddev* %310)
  store i32 %311, i32* %6, align 4
  br label %312

312:                                              ; preds = %309, %283
  %313 = load i32, i32* %6, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load %struct.mddev*, %struct.mddev** %4, align 8
  %317 = call i32 @bitmap_destroy(%struct.mddev* %316)
  br label %318

318:                                              ; preds = %315, %312
  %319 = load %struct.mddev*, %struct.mddev** %4, align 8
  %320 = getelementptr inbounds %struct.mddev, %struct.mddev* %319, i32 0, i32 10
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 1
  %323 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %322, align 8
  %324 = load %struct.mddev*, %struct.mddev** %4, align 8
  %325 = call i32 %323(%struct.mddev* %324, i32 0)
  br label %365

326:                                              ; preds = %258
  %327 = load %struct.mddev*, %struct.mddev** %4, align 8
  %328 = getelementptr inbounds %struct.mddev, %struct.mddev* %327, i32 0, i32 11
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = icmp ne %struct.TYPE_8__* %329, null
  br i1 %330, label %334, label %331

331:                                              ; preds = %326
  %332 = load i32, i32* @ENOENT, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %3, align 4
  br label %370

334:                                              ; preds = %326
  %335 = load %struct.mddev*, %struct.mddev** %4, align 8
  %336 = getelementptr inbounds %struct.mddev, %struct.mddev* %335, i32 0, i32 11
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %334
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %3, align 4
  br label %370

345:                                              ; preds = %334
  %346 = load %struct.mddev*, %struct.mddev** %4, align 8
  %347 = getelementptr inbounds %struct.mddev, %struct.mddev* %346, i32 0, i32 10
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 1
  %350 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %349, align 8
  %351 = load %struct.mddev*, %struct.mddev** %4, align 8
  %352 = call i32 %350(%struct.mddev* %351, i32 1)
  %353 = load %struct.mddev*, %struct.mddev** %4, align 8
  %354 = call i32 @bitmap_destroy(%struct.mddev* %353)
  %355 = load %struct.mddev*, %struct.mddev** %4, align 8
  %356 = getelementptr inbounds %struct.mddev, %struct.mddev* %355, i32 0, i32 10
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 1
  %359 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %358, align 8
  %360 = load %struct.mddev*, %struct.mddev** %4, align 8
  %361 = call i32 %359(%struct.mddev* %360, i32 0)
  %362 = load %struct.mddev*, %struct.mddev** %4, align 8
  %363 = getelementptr inbounds %struct.mddev, %struct.mddev* %362, i32 0, i32 9
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 0
  store i64 0, i64* %364, align 8
  br label %365

365:                                              ; preds = %345, %318
  br label %366

366:                                              ; preds = %365, %225
  %367 = load %struct.mddev*, %struct.mddev** %4, align 8
  %368 = call i32 @md_update_sb(%struct.mddev* %367, i32 1)
  %369 = load i32, i32* %6, align 4
  store i32 %369, i32* %3, align 4
  br label %370

370:                                              ; preds = %366, %342, %331, %280, %271, %255, %242, %188, %164, %146, %142, %84
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i32 @update_size(%struct.mddev*, i32) #1

declare dso_local i32 @update_raid_disks(%struct.mddev*, i64) #1

declare dso_local i32 @bitmap_create(%struct.mddev*) #1

declare dso_local i32 @bitmap_load(%struct.mddev*) #1

declare dso_local i32 @bitmap_destroy(%struct.mddev*) #1

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
