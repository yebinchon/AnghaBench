; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_input_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.urb = type { i32, %struct.TYPE_4__*, %struct.ati_remote* }
%struct.TYPE_4__ = type { i32 }
%struct.ati_remote = type { i8*, i64, i8*, i32, i64, %struct.TYPE_5__*, %struct.input_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.input_dev = type { i32 }

@channel_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Masked input from channel 0x%02x: data %02x,%02x, mask= 0x%02lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Unknown input from channel 0x%02x: data %02x,%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"channel 0x%02x; data %02x,%02x; index %d; keycode %d\0A\00", align 1
@ati_remote_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@KIND_LITERAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@KIND_FILTERED = common dso_local global i32 0, align 4
@repeat_filter = common dso_local global i32 0, align 4
@repeat_delay = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ati_remote kind=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ati_remote_input_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ati_remote_input_report(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ati_remote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load %struct.ati_remote*, %struct.ati_remote** %11, align 8
  store %struct.ati_remote* %12, %struct.ati_remote** %3, align 8
  %13 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %14 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %17 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %16, i32 0, i32 6
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %5, align 8
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %36, label %23

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 20
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 15
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29, %23, %1
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.urb*, %struct.urb** %2, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ati_remote_dump(i32* %40, i8* %41, i32 %44)
  br label %384

46:                                               ; preds = %29
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 4
  %52 = and i32 %51, 15
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @channel_mask, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = shl i32 1, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %46
  %60 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %61 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %60, i32 0, i32 5
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = load i32, i32* @channel_mask, align 4
  %72 = call i32 (i32*, i8*, i32, i8, i8, i32, ...) @dbginfo(i32* %63, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %64, i8 zeroext %67, i8 zeroext %70, i32 %71)
  br label %384

73:                                               ; preds = %46
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @ati_remote_event_lookup(i32 %74, i8 zeroext %77, i8 zeroext %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %73
  %85 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %86 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %85, i32 0, i32 5
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @dev_warn(i32* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %89, i8 zeroext %92, i8 zeroext %95)
  br label %384

97:                                               ; preds = %73
  %98 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %99 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %98, i32 0, i32 5
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %8, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32*, i8*, i32, i8, i8, i32, ...) @dbginfo(i32* %101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %102, i8 zeroext %105, i8 zeroext %108, i32 %109, i32 %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @KIND_LITERAL, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %97
  %126 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @input_event(%struct.input_dev* %126, i32 %132, i32 %138, i32 %144)
  %146 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %147 = call i32 @input_sync(%struct.input_dev* %146)
  %148 = load i8*, i8** @jiffies, align 8
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %151 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %384

152:                                              ; preds = %97
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @KIND_FILTERED, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %279

161:                                              ; preds = %152
  %162 = load i8*, i8** @jiffies, align 8
  %163 = ptrtoint i8* %162 to i64
  store i64 %163, i64* %9, align 8
  %164 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %165 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %169, %173
  br i1 %174, label %175, label %202

175:                                              ; preds = %161
  %176 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %177 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8*, i8** %4, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %181, %185
  br i1 %186, label %187, label %202

187:                                              ; preds = %175
  %188 = load i64, i64* %9, align 8
  %189 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %190 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @repeat_filter, align 4
  %193 = call i64 @msecs_to_jiffies(i32 %192)
  %194 = add i64 %191, %193
  %195 = call i64 @time_before(i64 %188, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %187
  %198 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %199 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %208

202:                                              ; preds = %187, %175, %161
  %203 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %204 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %203, i32 0, i32 3
  store i32 0, i32* %204, align 8
  %205 = load i64, i64* %9, align 8
  %206 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %207 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %206, i32 0, i32 4
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %197
  %209 = load i8*, i8** %4, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %213 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %212, i32 0, i32 2
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  store i8 %211, i8* %215, align 1
  %216 = load i8*, i8** %4, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  %218 = load i8, i8* %217, align 1
  %219 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %220 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  store i8 %218, i8* %222, align 1
  %223 = load i64, i64* %9, align 8
  %224 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %225 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  %226 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %227 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %208
  %231 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %232 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %233, 5
  br i1 %234, label %245, label %235

235:                                              ; preds = %230
  %236 = load i64, i64* %9, align 8
  %237 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %238 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @repeat_delay, align 4
  %241 = call i64 @msecs_to_jiffies(i32 %240)
  %242 = add i64 %239, %241
  %243 = call i64 @time_before(i64 %236, i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %235, %230
  br label %384

246:                                              ; preds = %235, %208
  %247 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @input_event(%struct.input_dev* %247, i32 %253, i32 %259, i32 1)
  %261 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %262 = call i32 @input_sync(%struct.input_dev* %261)
  %263 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %265 = load i32, i32* %6, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @input_event(%struct.input_dev* %263, i32 %269, i32 %275, i32 0)
  %277 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %278 = call i32 @input_sync(%struct.input_dev* %277)
  br label %384

279:                                              ; preds = %152
  %280 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %281 = call i32 @ati_remote_compute_accel(%struct.ati_remote* %280)
  store i32 %281, i32* %7, align 4
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  switch i32 %287, label %351 [
    i32 132, label %288
    i32 130, label %311
    i32 128, label %322
    i32 131, label %332
    i32 129, label %342
  ]

288:                                              ; preds = %279
  %289 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %7, align 4
  %309 = mul nsw i32 %307, %308
  %310 = call i32 @input_event(%struct.input_dev* %289, i32 %295, i32 %301, i32 %309)
  br label %363

311:                                              ; preds = %279
  %312 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %313 = load i32, i32* @REL_X, align 4
  %314 = load i32, i32* %7, align 4
  %315 = sub nsw i32 0, %314
  %316 = call i32 @input_report_rel(%struct.input_dev* %312, i32 %313, i32 %315)
  %317 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %318 = load i32, i32* @REL_Y, align 4
  %319 = load i32, i32* %7, align 4
  %320 = sub nsw i32 0, %319
  %321 = call i32 @input_report_rel(%struct.input_dev* %317, i32 %318, i32 %320)
  br label %363

322:                                              ; preds = %279
  %323 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %324 = load i32, i32* @REL_X, align 4
  %325 = load i32, i32* %7, align 4
  %326 = call i32 @input_report_rel(%struct.input_dev* %323, i32 %324, i32 %325)
  %327 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %328 = load i32, i32* @REL_Y, align 4
  %329 = load i32, i32* %7, align 4
  %330 = sub nsw i32 0, %329
  %331 = call i32 @input_report_rel(%struct.input_dev* %327, i32 %328, i32 %330)
  br label %363

332:                                              ; preds = %279
  %333 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %334 = load i32, i32* @REL_X, align 4
  %335 = load i32, i32* %7, align 4
  %336 = sub nsw i32 0, %335
  %337 = call i32 @input_report_rel(%struct.input_dev* %333, i32 %334, i32 %336)
  %338 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %339 = load i32, i32* @REL_Y, align 4
  %340 = load i32, i32* %7, align 4
  %341 = call i32 @input_report_rel(%struct.input_dev* %338, i32 %339, i32 %340)
  br label %363

342:                                              ; preds = %279
  %343 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %344 = load i32, i32* @REL_X, align 4
  %345 = load i32, i32* %7, align 4
  %346 = call i32 @input_report_rel(%struct.input_dev* %343, i32 %344, i32 %345)
  %347 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %348 = load i32, i32* @REL_Y, align 4
  %349 = load i32, i32* %7, align 4
  %350 = call i32 @input_report_rel(%struct.input_dev* %347, i32 %348, i32 %349)
  br label %363

351:                                              ; preds = %279
  %352 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %353 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %352, i32 0, i32 5
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @dev_dbg(i32* %355, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %361)
  br label %363

363:                                              ; preds = %351, %342, %332, %322, %311, %288
  %364 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %365 = call i32 @input_sync(%struct.input_dev* %364)
  %366 = load i8*, i8** @jiffies, align 8
  %367 = ptrtoint i8* %366 to i64
  %368 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %369 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %368, i32 0, i32 1
  store i64 %367, i64* %369, align 8
  %370 = load i8*, i8** %4, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 1
  %372 = load i8, i8* %371, align 1
  %373 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %374 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %373, i32 0, i32 2
  %375 = load i8*, i8** %374, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 0
  store i8 %372, i8* %376, align 1
  %377 = load i8*, i8** %4, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 2
  %379 = load i8, i8* %378, align 1
  %380 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %381 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %380, i32 0, i32 2
  %382 = load i8*, i8** %381, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 1
  store i8 %379, i8* %383, align 1
  br label %384

384:                                              ; preds = %36, %59, %84, %125, %245, %363, %246
  ret void
}

declare dso_local i32 @ati_remote_dump(i32*, i8*, i32) #1

declare dso_local i32 @dbginfo(i32*, i8*, i32, i8 zeroext, i8 zeroext, i32, ...) #1

declare dso_local i32 @ati_remote_event_lookup(i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ati_remote_compute_accel(%struct.ati_remote*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
