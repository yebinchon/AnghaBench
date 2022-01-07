; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_intuos_inout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_intuos_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i8*, i8*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@INTUOS = common dso_local global i64 0, align 8
@BTN_TOOL_PENCIL = common dso_local global i64 0, align 8
@BTN_TOOL_PEN = common dso_local global i8* null, align 8
@BTN_TOOL_BRUSH = common dso_local global i64 0, align 8
@BTN_TOOL_MOUSE = common dso_local global i64 0, align 8
@BTN_TOOL_LENS = common dso_local global i64 0, align 8
@BTN_TOOL_RUBBER = common dso_local global i64 0, align 8
@BTN_TOOL_AIRBRUSH = common dso_local global i64 0, align 8
@WACOM_21UX2 = common dso_local global i64 0, align 8
@WACOM_24HD = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i64 0, align 8
@BTN_MIDDLE = common dso_local global i64 0, align 8
@BTN_RIGHT = common dso_local global i64 0, align 8
@BTN_SIDE = common dso_local global i64 0, align 8
@BTN_EXTRA = common dso_local global i64 0, align 8
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i64 0, align 8
@BTN_STYLUS2 = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i64 0, align 8
@ABS_WHEEL = common dso_local global i32 0, align 4
@INTUOS3S = common dso_local global i64 0, align 8
@ABS_Z = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_intuos_inout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_intuos_inout(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %9 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTUOS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 252
  %30 = icmp eq i32 %29, 192
  br i1 %30, label %31, label %177

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = shl i32 %36, 28
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 20
  %43 = add nsw i32 %37, %42
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 12
  %49 = add nsw i32 %43, %48
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 4
  %55 = add nsw i32 %49, %54
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = ashr i32 %59, 4
  %61 = add nsw i32 %55, %60
  %62 = trunc i32 %61 to i8
  %63 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %64 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %62, i8* %68, align 1
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 4
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = ashr i32 %77, 4
  %79 = or i32 %73, %78
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 7
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 15
  %85 = shl i32 %84, 20
  %86 = or i32 %79, %85
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 240
  %92 = shl i32 %91, 12
  %93 = or i32 %86, %92
  %94 = trunc i32 %93 to i8
  %95 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %96 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %94, i8* %100, align 1
  %101 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %102 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 1048575
  switch i32 %109, label %167 [
    i32 2066, label %110
    i32 2049, label %110
    i32 133122, label %110
    i32 18, label %110
    i32 2082, label %118
    i32 2114, label %118
    i32 2130, label %118
    i32 2083, label %118
    i32 2067, label %118
    i32 2181, label %118
    i32 2050, label %118
    i32 2052, label %118
    i32 264194, label %118
    i32 34, label %118
    i32 2098, label %127
    i32 50, label %127
    i32 7, label %135
    i32 156, label %135
    i32 148, label %135
    i32 23, label %135
    i32 2054, label %135
    i32 150, label %143
    i32 151, label %143
    i32 6, label %143
    i32 2090, label %151
    i32 2138, label %151
    i32 2330, label %151
    i32 3354, label %151
    i32 250, label %151
    i32 2091, label %151
    i32 2075, label %151
    i32 2331, label %151
    i32 2060, label %151
    i32 2058, label %151
    i32 264202, label %151
    i32 2314, label %151
    i32 3346, label %159
    i32 2322, label %159
    i32 274, label %159
    i32 2323, label %159
    i32 2306, label %159
  ]

110:                                              ; preds = %31, %31, %31, %31
  %111 = load i64, i64* @BTN_TOOL_PENCIL, align 8
  %112 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %113 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %111, i64* %117, align 8
  br label %176

118:                                              ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %119 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %122 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %120, i64* %126, align 8
  br label %176

127:                                              ; preds = %31, %31
  %128 = load i64, i64* @BTN_TOOL_BRUSH, align 8
  %129 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %130 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 %128, i64* %134, align 8
  br label %176

135:                                              ; preds = %31, %31, %31, %31, %31
  %136 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %137 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %138 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %137, i32 0, i32 3
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %136, i64* %142, align 8
  br label %176

143:                                              ; preds = %31, %31, %31
  %144 = load i64, i64* @BTN_TOOL_LENS, align 8
  %145 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %146 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %145, i32 0, i32 3
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 %144, i64* %150, align 8
  br label %176

151:                                              ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %152 = load i64, i64* @BTN_TOOL_RUBBER, align 8
  %153 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %154 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %153, i32 0, i32 3
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 %152, i64* %158, align 8
  br label %176

159:                                              ; preds = %31, %31, %31, %31, %31
  %160 = load i64, i64* @BTN_TOOL_AIRBRUSH, align 8
  %161 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %162 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %161, i32 0, i32 3
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 %160, i64* %166, align 8
  br label %176

167:                                              ; preds = %31
  %168 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %171 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %170, i32 0, i32 3
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %169, i64* %175, align 8
  br label %176

176:                                              ; preds = %167, %159, %151, %143, %135, %127, %118, %110
  store i32 1, i32* %3, align 4
  br label %319

177:                                              ; preds = %24
  %178 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %179 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = ashr i32 %185, 20
  %187 = and i32 %186, 1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %206, label %189

189:                                              ; preds = %177
  %190 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %191 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @WACOM_21UX2, align 8
  %196 = icmp sge i64 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %189
  %198 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %199 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %198, i32 0, i32 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @WACOM_24HD, align 8
  %204 = icmp sle i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 1, i32* %3, align 4
  br label %319

206:                                              ; preds = %197, %189, %177
  %207 = load i8*, i8** %6, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = and i32 %210, 254
  %212 = icmp eq i32 %211, 128
  br i1 %212, label %213, label %318

213:                                              ; preds = %206
  %214 = load i8*, i8** %5, align 8
  %215 = load i32, i32* @ABS_X, align 4
  %216 = call i32 @wacom_report_abs(i8* %214, i32 %215, i32 0)
  %217 = load i8*, i8** %5, align 8
  %218 = load i32, i32* @ABS_Y, align 4
  %219 = call i32 @wacom_report_abs(i8* %217, i32 %218, i32 0)
  %220 = load i8*, i8** %5, align 8
  %221 = load i32, i32* @ABS_DISTANCE, align 4
  %222 = call i32 @wacom_report_abs(i8* %220, i32 %221, i32 0)
  %223 = load i8*, i8** %5, align 8
  %224 = load i32, i32* @ABS_TILT_X, align 4
  %225 = call i32 @wacom_report_abs(i8* %223, i32 %224, i32 0)
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* @ABS_TILT_Y, align 4
  %228 = call i32 @wacom_report_abs(i8* %226, i32 %227, i32 0)
  %229 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %230 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %229, i32 0, i32 3
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %237 = icmp sge i64 %235, %236
  br i1 %237, label %238, label %260

238:                                              ; preds = %213
  %239 = load i8*, i8** %5, align 8
  %240 = load i64, i64* @BTN_LEFT, align 8
  %241 = call i32 @wacom_report_key(i8* %239, i64 %240, i32 0)
  %242 = load i8*, i8** %5, align 8
  %243 = load i64, i64* @BTN_MIDDLE, align 8
  %244 = call i32 @wacom_report_key(i8* %242, i64 %243, i32 0)
  %245 = load i8*, i8** %5, align 8
  %246 = load i64, i64* @BTN_RIGHT, align 8
  %247 = call i32 @wacom_report_key(i8* %245, i64 %246, i32 0)
  %248 = load i8*, i8** %5, align 8
  %249 = load i64, i64* @BTN_SIDE, align 8
  %250 = call i32 @wacom_report_key(i8* %248, i64 %249, i32 0)
  %251 = load i8*, i8** %5, align 8
  %252 = load i64, i64* @BTN_EXTRA, align 8
  %253 = call i32 @wacom_report_key(i8* %251, i64 %252, i32 0)
  %254 = load i8*, i8** %5, align 8
  %255 = load i32, i32* @ABS_THROTTLE, align 4
  %256 = call i32 @wacom_report_abs(i8* %254, i32 %255, i32 0)
  %257 = load i8*, i8** %5, align 8
  %258 = load i32, i32* @ABS_RZ, align 4
  %259 = call i32 @wacom_report_abs(i8* %257, i32 %258, i32 0)
  br label %288

260:                                              ; preds = %213
  %261 = load i8*, i8** %5, align 8
  %262 = load i32, i32* @ABS_PRESSURE, align 4
  %263 = call i32 @wacom_report_abs(i8* %261, i32 %262, i32 0)
  %264 = load i8*, i8** %5, align 8
  %265 = load i64, i64* @BTN_STYLUS, align 8
  %266 = call i32 @wacom_report_key(i8* %264, i64 %265, i32 0)
  %267 = load i8*, i8** %5, align 8
  %268 = load i64, i64* @BTN_STYLUS2, align 8
  %269 = call i32 @wacom_report_key(i8* %267, i64 %268, i32 0)
  %270 = load i8*, i8** %5, align 8
  %271 = load i64, i64* @BTN_TOUCH, align 8
  %272 = call i32 @wacom_report_key(i8* %270, i64 %271, i32 0)
  %273 = load i8*, i8** %5, align 8
  %274 = load i32, i32* @ABS_WHEEL, align 4
  %275 = call i32 @wacom_report_abs(i8* %273, i32 %274, i32 0)
  %276 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %277 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %276, i32 0, i32 4
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @INTUOS3S, align 8
  %282 = icmp sge i64 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %260
  %284 = load i8*, i8** %5, align 8
  %285 = load i32, i32* @ABS_Z, align 4
  %286 = call i32 @wacom_report_abs(i8* %284, i32 %285, i32 0)
  br label %287

287:                                              ; preds = %283, %260
  br label %288

288:                                              ; preds = %287, %238
  %289 = load i8*, i8** %5, align 8
  %290 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %291 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %290, i32 0, i32 3
  %292 = load i64*, i64** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @wacom_report_key(i8* %289, i64 %296, i32 0)
  %298 = load i8*, i8** %5, align 8
  %299 = load i32, i32* @ABS_MISC, align 4
  %300 = call i32 @wacom_report_abs(i8* %298, i32 %299, i32 0)
  %301 = load i8*, i8** %5, align 8
  %302 = load i32, i32* @EV_MSC, align 4
  %303 = load i32, i32* @MSC_SERIAL, align 4
  %304 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %305 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %304, i32 0, i32 1
  %306 = load i8*, i8** %305, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = call i32 @wacom_input_event(i8* %301, i32 %302, i32 %303, i8 zeroext %310)
  %312 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %313 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %312, i32 0, i32 2
  %314 = load i8*, i8** %313, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  store i8 0, i8* %317, align 1
  store i32 2, i32* %3, align 4
  br label %319

318:                                              ; preds = %206
  store i32 0, i32* %3, align 4
  br label %319

319:                                              ; preds = %318, %288, %205, %176
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @wacom_report_abs(i8*, i32, i32) #1

declare dso_local i32 @wacom_report_key(i8*, i64, i32) #1

declare dso_local i32 @wacom_input_event(i8*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
