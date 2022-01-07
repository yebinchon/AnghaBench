; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_daemon_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_daemon_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.bitmap* }
%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.bitmap = type { i32, %struct.TYPE_9__, i32, i64, %struct.bitmap_counts, i32, i64 }
%struct.TYPE_9__ = type { i64, i32*, i32 }
%struct.bitmap_counts = type { i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@BITMAP_PAGE_PENDING = common dso_local global i32 0, align 4
@BITMAP_PAGE_NEEDWRITE = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@PAGE_COUNTER_RATIO = common dso_local global i64 0, align 8
@PAGE_COUNTER_SHIFT = common dso_local global i64 0, align 8
@PAGE_COUNTER_MASK = common dso_local global i64 0, align 8
@BITMAP_STALE = common dso_local global i32 0, align 4
@BITMAP_PAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_daemon_work(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_counts*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %11 = load %struct.mddev*, %struct.mddev** %2, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 2
  %17 = load %struct.bitmap*, %struct.bitmap** %16, align 8
  store %struct.bitmap* %17, %struct.bitmap** %3, align 8
  %18 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %19 = icmp eq %struct.bitmap* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.mddev*, %struct.mddev** %2, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %279

25:                                               ; preds = %1
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mddev*, %struct.mddev** %2, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = call i64 @time_before(i64 %26, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %260

38:                                               ; preds = %25
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %41 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %40, i32 0, i32 6
  store i64 %39, i64* %41, align 8
  %42 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %43 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i64 %47, i64* %51, align 8
  br label %260

52:                                               ; preds = %38
  %53 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %54 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i64 0, i64* %4, align 8
  br label %55

55:                                               ; preds = %74, %52
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i32, i32* @BITMAP_PAGE_PENDING, align 4
  %66 = call i64 @test_and_clear_page_attr(%struct.bitmap* %63, i64 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %72 = call i32 @set_page_attr(%struct.bitmap* %69, i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %62
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %55

77:                                               ; preds = %55
  %78 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %79 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %77
  %83 = load %struct.mddev*, %struct.mddev** %2, align 8
  %84 = getelementptr inbounds %struct.mddev, %struct.mddev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %82
  %89 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %90 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %92 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %88
  %97 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %98 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @KM_USER0, align 4
  %102 = call %struct.TYPE_12__* @kmap_atomic(i32 %100, i32 %101)
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %8, align 8
  %103 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %104 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cpu_to_le64(i32 %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = load i32, i32* @KM_USER0, align 4
  %111 = call i32 @kunmap_atomic(%struct.TYPE_12__* %109, i32 %110)
  %112 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %113 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %114 = call i32 @set_page_attr(%struct.bitmap* %112, i64 0, i32 %113)
  br label %115

115:                                              ; preds = %96, %88
  br label %116

116:                                              ; preds = %115, %82, %77
  %117 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %118 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %117, i32 0, i32 4
  store %struct.bitmap_counts* %118, %struct.bitmap_counts** %7, align 8
  %119 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %120 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %119, i32 0, i32 2
  %121 = call i32 @spin_lock_irq(i32* %120)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %122

122:                                              ; preds = %209, %116
  %123 = load i64, i64* %4, align 8
  %124 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %125 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %212

128:                                              ; preds = %122
  %129 = load i64, i64* %4, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %132 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = shl i32 %130, %133
  store i32 %134, i32* %10, align 4
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %128
  %139 = load i64, i64* @PAGE_COUNTER_RATIO, align 8
  %140 = load i64, i64* %5, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %5, align 8
  %142 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %143 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* @PAGE_COUNTER_SHIFT, align 8
  %147 = lshr i64 %145, %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %138
  %153 = load i64, i64* @PAGE_COUNTER_MASK, align 8
  %154 = load i64, i64* %4, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %4, align 8
  br label %209

156:                                              ; preds = %138
  %157 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %158 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %157, i32 0, i32 3
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* @PAGE_COUNTER_SHIFT, align 8
  %162 = lshr i64 %160, %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %156, %128
  %166 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32* @bitmap_get_counter(%struct.bitmap_counts* %166, i32 %167, i32* %6, i32 0)
  store i32* %168, i32** %9, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = load i64, i64* @PAGE_COUNTER_MASK, align 8
  %173 = load i64, i64* %4, align 8
  %174 = or i64 %173, %172
  store i64 %174, i64* %4, align 8
  br label %209

175:                                              ; preds = %165
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %181 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %179
  %185 = load i32*, i32** %9, align 8
  store i32 0, i32* %185, align 4
  %186 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @bitmap_count_page(%struct.bitmap_counts* %186, i32 %187, i32 -1)
  %189 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @bitmap_file_clear_bit(%struct.bitmap* %189, i32 %190)
  br label %208

192:                                              ; preds = %179, %175
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp sle i32 %198, 2
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load i32*, i32** %9, align 8
  store i32 1, i32* %201, align 4
  %202 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @bitmap_set_pending(%struct.bitmap_counts* %202, i32 %203)
  %205 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %206 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  br label %207

207:                                              ; preds = %200, %196, %192
  br label %208

208:                                              ; preds = %207, %184
  br label %209

209:                                              ; preds = %208, %171, %152
  %210 = load i64, i64* %4, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %4, align 8
  br label %122

212:                                              ; preds = %122
  %213 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %214 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %213, i32 0, i32 2
  %215 = call i32 @spin_unlock_irq(i32* %214)
  store i64 0, i64* %4, align 8
  br label %216

216:                                              ; preds = %256, %212
  %217 = load i64, i64* %4, align 8
  %218 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %219 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ult i64 %217, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load i32, i32* @BITMAP_STALE, align 4
  %225 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %226 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %225, i32 0, i32 2
  %227 = call i32 @test_bit(i32 %224, i32* %226)
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  br label %230

230:                                              ; preds = %223, %216
  %231 = phi i1 [ false, %216 ], [ %229, %223 ]
  br i1 %231, label %232, label %259

232:                                              ; preds = %230
  %233 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %234 = load i64, i64* %4, align 8
  %235 = load i32, i32* @BITMAP_PAGE_DIRTY, align 4
  %236 = call i64 @test_page_attr(%struct.bitmap* %233, i64 %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %259

239:                                              ; preds = %232
  %240 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %241 = load i64, i64* %4, align 8
  %242 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %243 = call i64 @test_and_clear_page_attr(%struct.bitmap* %240, i64 %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %239
  %246 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %247 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %248 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* %4, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @write_page(%struct.bitmap* %246, i32 %253, i32 0)
  br label %255

255:                                              ; preds = %245, %239
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %4, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %4, align 8
  br label %216

259:                                              ; preds = %238, %230
  br label %260

260:                                              ; preds = %259, %46, %37
  %261 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %262 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %260
  %266 = load %struct.mddev*, %struct.mddev** %2, align 8
  %267 = getelementptr inbounds %struct.mddev, %struct.mddev* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.mddev*, %struct.mddev** %2, align 8
  %271 = getelementptr inbounds %struct.mddev, %struct.mddev* %270, i32 0, i32 1
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  store i64 %269, i64* %273, align 8
  br label %274

274:                                              ; preds = %265, %260
  %275 = load %struct.mddev*, %struct.mddev** %2, align 8
  %276 = getelementptr inbounds %struct.mddev, %struct.mddev* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  %278 = call i32 @mutex_unlock(i32* %277)
  br label %279

279:                                              ; preds = %274, %20
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @test_and_clear_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @set_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local %struct.TYPE_12__* @kmap_atomic(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @kunmap_atomic(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32* @bitmap_get_counter(%struct.bitmap_counts*, i32, i32*, i32) #1

declare dso_local i32 @bitmap_count_page(%struct.bitmap_counts*, i32, i32) #1

declare dso_local i32 @bitmap_file_clear_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @bitmap_set_pending(%struct.bitmap_counts*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @write_page(%struct.bitmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
