; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_intuos_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_intuos_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i64*, i8*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"wacom_intuos_irq: received unknown report #%d\00", align 1
@INTUOS = common dso_local global i64 0, align 8
@BTN_TOOL_FINGER = common dso_local global i64 0, align 8
@INTUOS4S = common dso_local global i64 0, align 8
@INTUOS4L = common dso_local global i64 0, align 8
@BTN_0 = common dso_local global i64 0, align 8
@BTN_1 = common dso_local global i64 0, align 8
@BTN_2 = common dso_local global i64 0, align 8
@BTN_3 = common dso_local global i64 0, align 8
@BTN_4 = common dso_local global i64 0, align 8
@BTN_5 = common dso_local global i64 0, align 8
@BTN_6 = common dso_local global i64 0, align 8
@ABS_WHEEL = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i64 0, align 8
@BTN_8 = common dso_local global i64 0, align 8
@ABS_MISC = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i8 0, align 1
@WACOM_24HD = common dso_local global i64 0, align 8
@BTN_9 = common dso_local global i64 0, align 8
@BTN_A = common dso_local global i64 0, align 8
@BTN_B = common dso_local global i64 0, align 8
@BTN_C = common dso_local global i64 0, align 8
@BTN_X = common dso_local global i64 0, align 8
@BTN_Y = common dso_local global i64 0, align 8
@BTN_Z = common dso_local global i64 0, align 8
@KEY_PROG1 = common dso_local global i64 0, align 8
@KEY_PROG2 = common dso_local global i64 0, align 8
@KEY_PROG3 = common dso_local global i64 0, align 8
@ABS_THROTTLE = common dso_local global i32 0, align 4
@INTUOS5S = common dso_local global i64 0, align 8
@INTUOS5L = common dso_local global i64 0, align 8
@WACOM_21UX2 = common dso_local global i64 0, align 8
@WACOM_22HD = common dso_local global i64 0, align 8
@BTN_BASE = common dso_local global i64 0, align 8
@BTN_BASE2 = common dso_local global i64 0, align 8
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@BTN_TOOL_LENS = common dso_local global i64 0, align 8
@INTUOS3 = common dso_local global i64 0, align 8
@INTUOS3S = common dso_local global i64 0, align 8
@INTUOS4 = common dso_local global i64 0, align 8
@INTUOS5 = common dso_local global i64 0, align 8
@CINTIQ = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i64 0, align 8
@BTN_MIDDLE = common dso_local global i64 0, align 8
@BTN_RIGHT = common dso_local global i64 0, align 8
@BTN_SIDE = common dso_local global i64 0, align 8
@BTN_EXTRA = common dso_local global i64 0, align 8
@BTN_TOOL_MOUSE = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@INTUOS3L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_intuos_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_intuos_irq(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 5
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 6
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 12
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8 zeroext %46)
  store i32 0, i32* %3, align 4
  br label %1693

48:                                               ; preds = %37, %31, %25, %19, %2
  %49 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %50 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INTUOS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %56, %48
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 12
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %993

74:                                               ; preds = %68, %62
  %75 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %76 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BTN_TOOL_FINGER, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i64, i64* @BTN_TOOL_FINGER, align 8
  %84 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %85 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 %83, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %90 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @INTUOS4S, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %247

96:                                               ; preds = %88
  %97 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %98 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @INTUOS4L, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %247

104:                                              ; preds = %96
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* @BTN_0, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 1
  %112 = call i32 @wacom_report_key(i8* %105, i64 %106, i32 %111)
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* @BTN_1, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 1
  %120 = call i32 @wacom_report_key(i8* %113, i64 %114, i32 %119)
  %121 = load i8*, i8** %5, align 8
  %122 = load i64, i64* @BTN_2, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 2
  %128 = call i32 @wacom_report_key(i8* %121, i64 %122, i32 %127)
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* @BTN_3, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 3
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 4
  %136 = call i32 @wacom_report_key(i8* %129, i64 %130, i32 %135)
  %137 = load i8*, i8** %5, align 8
  %138 = load i64, i64* @BTN_4, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 8
  %144 = call i32 @wacom_report_key(i8* %137, i64 %138, i32 %143)
  %145 = load i8*, i8** %5, align 8
  %146 = load i64, i64* @BTN_5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 3
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 16
  %152 = call i32 @wacom_report_key(i8* %145, i64 %146, i32 %151)
  %153 = load i8*, i8** %5, align 8
  %154 = load i64, i64* @BTN_6, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 3
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 32
  %160 = call i32 @wacom_report_key(i8* %153, i64 %154, i32 %159)
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, 128
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %104
  %168 = load i8*, i8** %5, align 8
  %169 = load i32, i32* @ABS_WHEEL, align 4
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 127
  %175 = trunc i32 %174 to i8
  %176 = call i32 @wacom_report_abs(i8* %168, i32 %169, i8 zeroext %175)
  br label %181

177:                                              ; preds = %104
  %178 = load i8*, i8** %5, align 8
  %179 = load i32, i32* @ABS_WHEEL, align 4
  %180 = call i32 @wacom_report_abs(i8* %178, i32 %179, i8 zeroext 0)
  br label %181

181:                                              ; preds = %177, %167
  %182 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %183 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %182, i32 0, i32 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @INTUOS4S, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %181
  %190 = load i8*, i8** %5, align 8
  %191 = load i64, i64* @BTN_7, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 64
  %197 = call i32 @wacom_report_key(i8* %190, i64 %191, i32 %196)
  %198 = load i8*, i8** %5, align 8
  %199 = load i64, i64* @BTN_8, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 3
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %203, 128
  %205 = call i32 @wacom_report_key(i8* %198, i64 %199, i32 %204)
  br label %206

206:                                              ; preds = %189, %181
  %207 = load i8*, i8** %6, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = and i32 %214, 1
  %216 = or i32 %210, %215
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 3
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = or i32 %216, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %206
  %224 = load i8*, i8** %5, align 8
  %225 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %226 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @wacom_report_key(i8* %224, i64 %229, i32 1)
  %231 = load i8*, i8** %5, align 8
  %232 = load i32, i32* @ABS_MISC, align 4
  %233 = load i8, i8* @PAD_DEVICE_ID, align 1
  %234 = call i32 @wacom_report_abs(i8* %231, i32 %232, i8 zeroext %233)
  br label %246

235:                                              ; preds = %206
  %236 = load i8*, i8** %5, align 8
  %237 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %238 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 1
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @wacom_report_key(i8* %236, i64 %241, i32 0)
  %243 = load i8*, i8** %5, align 8
  %244 = load i32, i32* @ABS_MISC, align 4
  %245 = call i32 @wacom_report_abs(i8* %243, i32 %244, i8 zeroext 0)
  br label %246

246:                                              ; preds = %235, %223
  br label %988

247:                                              ; preds = %96, %88
  %248 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %249 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %248, i32 0, i32 4
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @WACOM_24HD, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %505

255:                                              ; preds = %247
  %256 = load i8*, i8** %5, align 8
  %257 = load i64, i64* @BTN_0, align 8
  %258 = load i8*, i8** %6, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 6
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %261, 1
  %263 = call i32 @wacom_report_key(i8* %256, i64 %257, i32 %262)
  %264 = load i8*, i8** %5, align 8
  %265 = load i64, i64* @BTN_1, align 8
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 6
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 %269, 2
  %271 = call i32 @wacom_report_key(i8* %264, i64 %265, i32 %270)
  %272 = load i8*, i8** %5, align 8
  %273 = load i64, i64* @BTN_2, align 8
  %274 = load i8*, i8** %6, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 6
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = and i32 %277, 4
  %279 = call i32 @wacom_report_key(i8* %272, i64 %273, i32 %278)
  %280 = load i8*, i8** %5, align 8
  %281 = load i64, i64* @BTN_3, align 8
  %282 = load i8*, i8** %6, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 6
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = and i32 %285, 8
  %287 = call i32 @wacom_report_key(i8* %280, i64 %281, i32 %286)
  %288 = load i8*, i8** %5, align 8
  %289 = load i64, i64* @BTN_4, align 8
  %290 = load i8*, i8** %6, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 6
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = and i32 %293, 16
  %295 = call i32 @wacom_report_key(i8* %288, i64 %289, i32 %294)
  %296 = load i8*, i8** %5, align 8
  %297 = load i64, i64* @BTN_5, align 8
  %298 = load i8*, i8** %6, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 6
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = and i32 %301, 32
  %303 = call i32 @wacom_report_key(i8* %296, i64 %297, i32 %302)
  %304 = load i8*, i8** %5, align 8
  %305 = load i64, i64* @BTN_6, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 6
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = and i32 %309, 64
  %311 = call i32 @wacom_report_key(i8* %304, i64 %305, i32 %310)
  %312 = load i8*, i8** %5, align 8
  %313 = load i64, i64* @BTN_7, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 6
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = and i32 %317, 128
  %319 = call i32 @wacom_report_key(i8* %312, i64 %313, i32 %318)
  %320 = load i8*, i8** %5, align 8
  %321 = load i64, i64* @BTN_8, align 8
  %322 = load i8*, i8** %6, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 8
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = and i32 %325, 1
  %327 = call i32 @wacom_report_key(i8* %320, i64 %321, i32 %326)
  %328 = load i8*, i8** %5, align 8
  %329 = load i64, i64* @BTN_9, align 8
  %330 = load i8*, i8** %6, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 8
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = and i32 %333, 2
  %335 = call i32 @wacom_report_key(i8* %328, i64 %329, i32 %334)
  %336 = load i8*, i8** %5, align 8
  %337 = load i64, i64* @BTN_A, align 8
  %338 = load i8*, i8** %6, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 8
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = and i32 %341, 4
  %343 = call i32 @wacom_report_key(i8* %336, i64 %337, i32 %342)
  %344 = load i8*, i8** %5, align 8
  %345 = load i64, i64* @BTN_B, align 8
  %346 = load i8*, i8** %6, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 8
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = and i32 %349, 8
  %351 = call i32 @wacom_report_key(i8* %344, i64 %345, i32 %350)
  %352 = load i8*, i8** %5, align 8
  %353 = load i64, i64* @BTN_C, align 8
  %354 = load i8*, i8** %6, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 8
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = and i32 %357, 16
  %359 = call i32 @wacom_report_key(i8* %352, i64 %353, i32 %358)
  %360 = load i8*, i8** %5, align 8
  %361 = load i64, i64* @BTN_X, align 8
  %362 = load i8*, i8** %6, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 8
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = and i32 %365, 32
  %367 = call i32 @wacom_report_key(i8* %360, i64 %361, i32 %366)
  %368 = load i8*, i8** %5, align 8
  %369 = load i64, i64* @BTN_Y, align 8
  %370 = load i8*, i8** %6, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 8
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i32
  %374 = and i32 %373, 64
  %375 = call i32 @wacom_report_key(i8* %368, i64 %369, i32 %374)
  %376 = load i8*, i8** %5, align 8
  %377 = load i64, i64* @BTN_Z, align 8
  %378 = load i8*, i8** %6, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 8
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = and i32 %381, 128
  %383 = call i32 @wacom_report_key(i8* %376, i64 %377, i32 %382)
  %384 = load i8*, i8** %5, align 8
  %385 = load i64, i64* @KEY_PROG1, align 8
  %386 = load i8*, i8** %6, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 4
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = and i32 %389, 7
  %391 = call i32 @wacom_report_key(i8* %384, i64 %385, i32 %390)
  %392 = load i8*, i8** %5, align 8
  %393 = load i64, i64* @KEY_PROG2, align 8
  %394 = load i8*, i8** %6, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 4
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = and i32 %397, 224
  %399 = call i32 @wacom_report_key(i8* %392, i64 %393, i32 %398)
  %400 = load i8*, i8** %5, align 8
  %401 = load i64, i64* @KEY_PROG3, align 8
  %402 = load i8*, i8** %6, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 3
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i32
  %406 = and i32 %405, 28
  %407 = call i32 @wacom_report_key(i8* %400, i64 %401, i32 %406)
  %408 = load i8*, i8** %6, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 1
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = and i32 %411, 128
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %424

414:                                              ; preds = %255
  %415 = load i8*, i8** %5, align 8
  %416 = load i32, i32* @ABS_WHEEL, align 4
  %417 = load i8*, i8** %6, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 1
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i32
  %421 = and i32 %420, 127
  %422 = trunc i32 %421 to i8
  %423 = call i32 @wacom_report_abs(i8* %415, i32 %416, i8 zeroext %422)
  br label %428

424:                                              ; preds = %255
  %425 = load i8*, i8** %5, align 8
  %426 = load i32, i32* @ABS_WHEEL, align 4
  %427 = call i32 @wacom_report_abs(i8* %425, i32 %426, i8 zeroext 0)
  br label %428

428:                                              ; preds = %424, %414
  %429 = load i8*, i8** %6, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 2
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  %433 = and i32 %432, 128
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %445

435:                                              ; preds = %428
  %436 = load i8*, i8** %5, align 8
  %437 = load i32, i32* @ABS_THROTTLE, align 4
  %438 = load i8*, i8** %6, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 2
  %440 = load i8, i8* %439, align 1
  %441 = zext i8 %440 to i32
  %442 = and i32 %441, 127
  %443 = trunc i32 %442 to i8
  %444 = call i32 @wacom_report_abs(i8* %436, i32 %437, i8 zeroext %443)
  br label %449

445:                                              ; preds = %428
  %446 = load i8*, i8** %5, align 8
  %447 = load i32, i32* @ABS_THROTTLE, align 4
  %448 = call i32 @wacom_report_abs(i8* %446, i32 %447, i8 zeroext 0)
  br label %449

449:                                              ; preds = %445, %435
  %450 = load i8*, i8** %6, align 8
  %451 = getelementptr inbounds i8, i8* %450, i64 1
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i32
  %454 = load i8*, i8** %6, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 2
  %456 = load i8, i8* %455, align 1
  %457 = zext i8 %456 to i32
  %458 = or i32 %453, %457
  %459 = load i8*, i8** %6, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 3
  %461 = load i8, i8* %460, align 1
  %462 = zext i8 %461 to i32
  %463 = and i32 %462, 31
  %464 = or i32 %458, %463
  %465 = load i8*, i8** %6, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 4
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = or i32 %464, %468
  %470 = load i8*, i8** %6, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 6
  %472 = load i8, i8* %471, align 1
  %473 = zext i8 %472 to i32
  %474 = or i32 %469, %473
  %475 = load i8*, i8** %6, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 8
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i32
  %479 = or i32 %474, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %493

481:                                              ; preds = %449
  %482 = load i8*, i8** %5, align 8
  %483 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %484 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %483, i32 0, i32 1
  %485 = load i64*, i64** %484, align 8
  %486 = getelementptr inbounds i64, i64* %485, i64 1
  %487 = load i64, i64* %486, align 8
  %488 = call i32 @wacom_report_key(i8* %482, i64 %487, i32 1)
  %489 = load i8*, i8** %5, align 8
  %490 = load i32, i32* @ABS_MISC, align 4
  %491 = load i8, i8* @PAD_DEVICE_ID, align 1
  %492 = call i32 @wacom_report_abs(i8* %489, i32 %490, i8 zeroext %491)
  br label %504

493:                                              ; preds = %449
  %494 = load i8*, i8** %5, align 8
  %495 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %496 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %495, i32 0, i32 1
  %497 = load i64*, i64** %496, align 8
  %498 = getelementptr inbounds i64, i64* %497, i64 1
  %499 = load i64, i64* %498, align 8
  %500 = call i32 @wacom_report_key(i8* %494, i64 %499, i32 0)
  %501 = load i8*, i8** %5, align 8
  %502 = load i32, i32* @ABS_MISC, align 4
  %503 = call i32 @wacom_report_abs(i8* %501, i32 %502, i8 zeroext 0)
  br label %504

504:                                              ; preds = %493, %481
  br label %987

505:                                              ; preds = %247
  %506 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %507 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %506, i32 0, i32 4
  %508 = load %struct.TYPE_2__*, %struct.TYPE_2__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %508, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = load i64, i64* @INTUOS5S, align 8
  %512 = icmp sge i64 %510, %511
  br i1 %512, label %513, label %612

513:                                              ; preds = %505
  %514 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %515 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %514, i32 0, i32 4
  %516 = load %struct.TYPE_2__*, %struct.TYPE_2__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @INTUOS5L, align 8
  %520 = icmp sle i64 %518, %519
  br i1 %520, label %521, label %612

521:                                              ; preds = %513
  %522 = load i8*, i8** %5, align 8
  %523 = load i64, i64* @BTN_0, align 8
  %524 = load i8*, i8** %6, align 8
  %525 = getelementptr inbounds i8, i8* %524, i64 3
  %526 = load i8, i8* %525, align 1
  %527 = zext i8 %526 to i32
  %528 = and i32 %527, 1
  %529 = call i32 @wacom_report_key(i8* %522, i64 %523, i32 %528)
  store i32 0, i32* %10, align 4
  br label %530

530:                                              ; preds = %547, %521
  %531 = load i32, i32* %10, align 4
  %532 = icmp slt i32 %531, 8
  br i1 %532, label %533, label %550

533:                                              ; preds = %530
  %534 = load i8*, i8** %5, align 8
  %535 = load i64, i64* @BTN_1, align 8
  %536 = load i32, i32* %10, align 4
  %537 = sext i32 %536 to i64
  %538 = add nsw i64 %535, %537
  %539 = load i8*, i8** %6, align 8
  %540 = getelementptr inbounds i8, i8* %539, i64 4
  %541 = load i8, i8* %540, align 1
  %542 = zext i8 %541 to i32
  %543 = load i32, i32* %10, align 4
  %544 = shl i32 1, %543
  %545 = and i32 %542, %544
  %546 = call i32 @wacom_report_key(i8* %534, i64 %538, i32 %545)
  br label %547

547:                                              ; preds = %533
  %548 = load i32, i32* %10, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %10, align 4
  br label %530

550:                                              ; preds = %530
  %551 = load i8*, i8** %6, align 8
  %552 = getelementptr inbounds i8, i8* %551, i64 2
  %553 = load i8, i8* %552, align 1
  %554 = zext i8 %553 to i32
  %555 = and i32 %554, 128
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %567

557:                                              ; preds = %550
  %558 = load i8*, i8** %5, align 8
  %559 = load i32, i32* @ABS_WHEEL, align 4
  %560 = load i8*, i8** %6, align 8
  %561 = getelementptr inbounds i8, i8* %560, i64 2
  %562 = load i8, i8* %561, align 1
  %563 = zext i8 %562 to i32
  %564 = and i32 %563, 127
  %565 = trunc i32 %564 to i8
  %566 = call i32 @wacom_report_abs(i8* %558, i32 %559, i8 zeroext %565)
  br label %571

567:                                              ; preds = %550
  %568 = load i8*, i8** %5, align 8
  %569 = load i32, i32* @ABS_WHEEL, align 4
  %570 = call i32 @wacom_report_abs(i8* %568, i32 %569, i8 zeroext 0)
  br label %571

571:                                              ; preds = %567, %557
  %572 = load i8*, i8** %6, align 8
  %573 = getelementptr inbounds i8, i8* %572, i64 2
  %574 = load i8, i8* %573, align 1
  %575 = zext i8 %574 to i32
  %576 = load i8*, i8** %6, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 3
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i32
  %580 = and i32 %579, 1
  %581 = or i32 %575, %580
  %582 = load i8*, i8** %6, align 8
  %583 = getelementptr inbounds i8, i8* %582, i64 4
  %584 = load i8, i8* %583, align 1
  %585 = zext i8 %584 to i32
  %586 = or i32 %581, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %600

588:                                              ; preds = %571
  %589 = load i8*, i8** %5, align 8
  %590 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %591 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %590, i32 0, i32 1
  %592 = load i64*, i64** %591, align 8
  %593 = getelementptr inbounds i64, i64* %592, i64 1
  %594 = load i64, i64* %593, align 8
  %595 = call i32 @wacom_report_key(i8* %589, i64 %594, i32 1)
  %596 = load i8*, i8** %5, align 8
  %597 = load i32, i32* @ABS_MISC, align 4
  %598 = load i8, i8* @PAD_DEVICE_ID, align 1
  %599 = call i32 @wacom_report_abs(i8* %596, i32 %597, i8 zeroext %598)
  br label %611

600:                                              ; preds = %571
  %601 = load i8*, i8** %5, align 8
  %602 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %603 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %602, i32 0, i32 1
  %604 = load i64*, i64** %603, align 8
  %605 = getelementptr inbounds i64, i64* %604, i64 1
  %606 = load i64, i64* %605, align 8
  %607 = call i32 @wacom_report_key(i8* %601, i64 %606, i32 0)
  %608 = load i8*, i8** %5, align 8
  %609 = load i32, i32* @ABS_MISC, align 4
  %610 = call i32 @wacom_report_abs(i8* %608, i32 %609, i8 zeroext 0)
  br label %611

611:                                              ; preds = %600, %588
  br label %986

612:                                              ; preds = %513, %505
  %613 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %614 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %613, i32 0, i32 4
  %615 = load %struct.TYPE_2__*, %struct.TYPE_2__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %615, i32 0, i32 0
  %617 = load i64, i64* %616, align 8
  %618 = load i64, i64* @WACOM_21UX2, align 8
  %619 = icmp eq i64 %617, %618
  br i1 %619, label %628, label %620

620:                                              ; preds = %612
  %621 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %622 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %621, i32 0, i32 4
  %623 = load %struct.TYPE_2__*, %struct.TYPE_2__** %622, align 8
  %624 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %623, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = load i64, i64* @WACOM_22HD, align 8
  %627 = icmp eq i64 %625, %626
  br i1 %627, label %628, label %806

628:                                              ; preds = %620, %612
  %629 = load i8*, i8** %5, align 8
  %630 = load i64, i64* @BTN_0, align 8
  %631 = load i8*, i8** %6, align 8
  %632 = getelementptr inbounds i8, i8* %631, i64 5
  %633 = load i8, i8* %632, align 1
  %634 = zext i8 %633 to i32
  %635 = and i32 %634, 1
  %636 = call i32 @wacom_report_key(i8* %629, i64 %630, i32 %635)
  %637 = load i8*, i8** %5, align 8
  %638 = load i64, i64* @BTN_1, align 8
  %639 = load i8*, i8** %6, align 8
  %640 = getelementptr inbounds i8, i8* %639, i64 6
  %641 = load i8, i8* %640, align 1
  %642 = zext i8 %641 to i32
  %643 = and i32 %642, 1
  %644 = call i32 @wacom_report_key(i8* %637, i64 %638, i32 %643)
  %645 = load i8*, i8** %5, align 8
  %646 = load i64, i64* @BTN_2, align 8
  %647 = load i8*, i8** %6, align 8
  %648 = getelementptr inbounds i8, i8* %647, i64 6
  %649 = load i8, i8* %648, align 1
  %650 = zext i8 %649 to i32
  %651 = and i32 %650, 2
  %652 = call i32 @wacom_report_key(i8* %645, i64 %646, i32 %651)
  %653 = load i8*, i8** %5, align 8
  %654 = load i64, i64* @BTN_3, align 8
  %655 = load i8*, i8** %6, align 8
  %656 = getelementptr inbounds i8, i8* %655, i64 6
  %657 = load i8, i8* %656, align 1
  %658 = zext i8 %657 to i32
  %659 = and i32 %658, 4
  %660 = call i32 @wacom_report_key(i8* %653, i64 %654, i32 %659)
  %661 = load i8*, i8** %5, align 8
  %662 = load i64, i64* @BTN_4, align 8
  %663 = load i8*, i8** %6, align 8
  %664 = getelementptr inbounds i8, i8* %663, i64 6
  %665 = load i8, i8* %664, align 1
  %666 = zext i8 %665 to i32
  %667 = and i32 %666, 8
  %668 = call i32 @wacom_report_key(i8* %661, i64 %662, i32 %667)
  %669 = load i8*, i8** %5, align 8
  %670 = load i64, i64* @BTN_5, align 8
  %671 = load i8*, i8** %6, align 8
  %672 = getelementptr inbounds i8, i8* %671, i64 6
  %673 = load i8, i8* %672, align 1
  %674 = zext i8 %673 to i32
  %675 = and i32 %674, 16
  %676 = call i32 @wacom_report_key(i8* %669, i64 %670, i32 %675)
  %677 = load i8*, i8** %5, align 8
  %678 = load i64, i64* @BTN_6, align 8
  %679 = load i8*, i8** %6, align 8
  %680 = getelementptr inbounds i8, i8* %679, i64 6
  %681 = load i8, i8* %680, align 1
  %682 = zext i8 %681 to i32
  %683 = and i32 %682, 32
  %684 = call i32 @wacom_report_key(i8* %677, i64 %678, i32 %683)
  %685 = load i8*, i8** %5, align 8
  %686 = load i64, i64* @BTN_7, align 8
  %687 = load i8*, i8** %6, align 8
  %688 = getelementptr inbounds i8, i8* %687, i64 6
  %689 = load i8, i8* %688, align 1
  %690 = zext i8 %689 to i32
  %691 = and i32 %690, 64
  %692 = call i32 @wacom_report_key(i8* %685, i64 %686, i32 %691)
  %693 = load i8*, i8** %5, align 8
  %694 = load i64, i64* @BTN_8, align 8
  %695 = load i8*, i8** %6, align 8
  %696 = getelementptr inbounds i8, i8* %695, i64 6
  %697 = load i8, i8* %696, align 1
  %698 = zext i8 %697 to i32
  %699 = and i32 %698, 128
  %700 = call i32 @wacom_report_key(i8* %693, i64 %694, i32 %699)
  %701 = load i8*, i8** %5, align 8
  %702 = load i64, i64* @BTN_9, align 8
  %703 = load i8*, i8** %6, align 8
  %704 = getelementptr inbounds i8, i8* %703, i64 7
  %705 = load i8, i8* %704, align 1
  %706 = zext i8 %705 to i32
  %707 = and i32 %706, 1
  %708 = call i32 @wacom_report_key(i8* %701, i64 %702, i32 %707)
  %709 = load i8*, i8** %5, align 8
  %710 = load i64, i64* @BTN_A, align 8
  %711 = load i8*, i8** %6, align 8
  %712 = getelementptr inbounds i8, i8* %711, i64 8
  %713 = load i8, i8* %712, align 1
  %714 = zext i8 %713 to i32
  %715 = and i32 %714, 1
  %716 = call i32 @wacom_report_key(i8* %709, i64 %710, i32 %715)
  %717 = load i8*, i8** %5, align 8
  %718 = load i64, i64* @BTN_B, align 8
  %719 = load i8*, i8** %6, align 8
  %720 = getelementptr inbounds i8, i8* %719, i64 8
  %721 = load i8, i8* %720, align 1
  %722 = zext i8 %721 to i32
  %723 = and i32 %722, 2
  %724 = call i32 @wacom_report_key(i8* %717, i64 %718, i32 %723)
  %725 = load i8*, i8** %5, align 8
  %726 = load i64, i64* @BTN_C, align 8
  %727 = load i8*, i8** %6, align 8
  %728 = getelementptr inbounds i8, i8* %727, i64 8
  %729 = load i8, i8* %728, align 1
  %730 = zext i8 %729 to i32
  %731 = and i32 %730, 4
  %732 = call i32 @wacom_report_key(i8* %725, i64 %726, i32 %731)
  %733 = load i8*, i8** %5, align 8
  %734 = load i64, i64* @BTN_X, align 8
  %735 = load i8*, i8** %6, align 8
  %736 = getelementptr inbounds i8, i8* %735, i64 8
  %737 = load i8, i8* %736, align 1
  %738 = zext i8 %737 to i32
  %739 = and i32 %738, 8
  %740 = call i32 @wacom_report_key(i8* %733, i64 %734, i32 %739)
  %741 = load i8*, i8** %5, align 8
  %742 = load i64, i64* @BTN_Y, align 8
  %743 = load i8*, i8** %6, align 8
  %744 = getelementptr inbounds i8, i8* %743, i64 8
  %745 = load i8, i8* %744, align 1
  %746 = zext i8 %745 to i32
  %747 = and i32 %746, 16
  %748 = call i32 @wacom_report_key(i8* %741, i64 %742, i32 %747)
  %749 = load i8*, i8** %5, align 8
  %750 = load i64, i64* @BTN_Z, align 8
  %751 = load i8*, i8** %6, align 8
  %752 = getelementptr inbounds i8, i8* %751, i64 8
  %753 = load i8, i8* %752, align 1
  %754 = zext i8 %753 to i32
  %755 = and i32 %754, 32
  %756 = call i32 @wacom_report_key(i8* %749, i64 %750, i32 %755)
  %757 = load i8*, i8** %5, align 8
  %758 = load i64, i64* @BTN_BASE, align 8
  %759 = load i8*, i8** %6, align 8
  %760 = getelementptr inbounds i8, i8* %759, i64 8
  %761 = load i8, i8* %760, align 1
  %762 = zext i8 %761 to i32
  %763 = and i32 %762, 64
  %764 = call i32 @wacom_report_key(i8* %757, i64 %758, i32 %763)
  %765 = load i8*, i8** %5, align 8
  %766 = load i64, i64* @BTN_BASE2, align 8
  %767 = load i8*, i8** %6, align 8
  %768 = getelementptr inbounds i8, i8* %767, i64 8
  %769 = load i8, i8* %768, align 1
  %770 = zext i8 %769 to i32
  %771 = and i32 %770, 128
  %772 = call i32 @wacom_report_key(i8* %765, i64 %766, i32 %771)
  %773 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %774 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %773, i32 0, i32 4
  %775 = load %struct.TYPE_2__*, %struct.TYPE_2__** %774, align 8
  %776 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %775, i32 0, i32 0
  %777 = load i64, i64* %776, align 8
  %778 = load i64, i64* @WACOM_22HD, align 8
  %779 = icmp eq i64 %777, %778
  br i1 %779, label %780, label %805

780:                                              ; preds = %628
  %781 = load i8*, i8** %5, align 8
  %782 = load i64, i64* @KEY_PROG1, align 8
  %783 = load i8*, i8** %6, align 8
  %784 = getelementptr inbounds i8, i8* %783, i64 9
  %785 = load i8, i8* %784, align 1
  %786 = zext i8 %785 to i32
  %787 = and i32 %786, 1
  %788 = call i32 @wacom_report_key(i8* %781, i64 %782, i32 %787)
  %789 = load i8*, i8** %5, align 8
  %790 = load i64, i64* @KEY_PROG2, align 8
  %791 = load i8*, i8** %6, align 8
  %792 = getelementptr inbounds i8, i8* %791, i64 9
  %793 = load i8, i8* %792, align 1
  %794 = zext i8 %793 to i32
  %795 = and i32 %794, 2
  %796 = call i32 @wacom_report_key(i8* %789, i64 %790, i32 %795)
  %797 = load i8*, i8** %5, align 8
  %798 = load i64, i64* @KEY_PROG3, align 8
  %799 = load i8*, i8** %6, align 8
  %800 = getelementptr inbounds i8, i8* %799, i64 9
  %801 = load i8, i8* %800, align 1
  %802 = zext i8 %801 to i32
  %803 = and i32 %802, 4
  %804 = call i32 @wacom_report_key(i8* %797, i64 %798, i32 %803)
  br label %805

805:                                              ; preds = %780, %628
  br label %887

806:                                              ; preds = %620
  %807 = load i8*, i8** %5, align 8
  %808 = load i64, i64* @BTN_0, align 8
  %809 = load i8*, i8** %6, align 8
  %810 = getelementptr inbounds i8, i8* %809, i64 5
  %811 = load i8, i8* %810, align 1
  %812 = zext i8 %811 to i32
  %813 = and i32 %812, 1
  %814 = call i32 @wacom_report_key(i8* %807, i64 %808, i32 %813)
  %815 = load i8*, i8** %5, align 8
  %816 = load i64, i64* @BTN_1, align 8
  %817 = load i8*, i8** %6, align 8
  %818 = getelementptr inbounds i8, i8* %817, i64 5
  %819 = load i8, i8* %818, align 1
  %820 = zext i8 %819 to i32
  %821 = and i32 %820, 2
  %822 = call i32 @wacom_report_key(i8* %815, i64 %816, i32 %821)
  %823 = load i8*, i8** %5, align 8
  %824 = load i64, i64* @BTN_2, align 8
  %825 = load i8*, i8** %6, align 8
  %826 = getelementptr inbounds i8, i8* %825, i64 5
  %827 = load i8, i8* %826, align 1
  %828 = zext i8 %827 to i32
  %829 = and i32 %828, 4
  %830 = call i32 @wacom_report_key(i8* %823, i64 %824, i32 %829)
  %831 = load i8*, i8** %5, align 8
  %832 = load i64, i64* @BTN_3, align 8
  %833 = load i8*, i8** %6, align 8
  %834 = getelementptr inbounds i8, i8* %833, i64 5
  %835 = load i8, i8* %834, align 1
  %836 = zext i8 %835 to i32
  %837 = and i32 %836, 8
  %838 = call i32 @wacom_report_key(i8* %831, i64 %832, i32 %837)
  %839 = load i8*, i8** %5, align 8
  %840 = load i64, i64* @BTN_4, align 8
  %841 = load i8*, i8** %6, align 8
  %842 = getelementptr inbounds i8, i8* %841, i64 6
  %843 = load i8, i8* %842, align 1
  %844 = zext i8 %843 to i32
  %845 = and i32 %844, 1
  %846 = call i32 @wacom_report_key(i8* %839, i64 %840, i32 %845)
  %847 = load i8*, i8** %5, align 8
  %848 = load i64, i64* @BTN_5, align 8
  %849 = load i8*, i8** %6, align 8
  %850 = getelementptr inbounds i8, i8* %849, i64 6
  %851 = load i8, i8* %850, align 1
  %852 = zext i8 %851 to i32
  %853 = and i32 %852, 2
  %854 = call i32 @wacom_report_key(i8* %847, i64 %848, i32 %853)
  %855 = load i8*, i8** %5, align 8
  %856 = load i64, i64* @BTN_6, align 8
  %857 = load i8*, i8** %6, align 8
  %858 = getelementptr inbounds i8, i8* %857, i64 6
  %859 = load i8, i8* %858, align 1
  %860 = zext i8 %859 to i32
  %861 = and i32 %860, 4
  %862 = call i32 @wacom_report_key(i8* %855, i64 %856, i32 %861)
  %863 = load i8*, i8** %5, align 8
  %864 = load i64, i64* @BTN_7, align 8
  %865 = load i8*, i8** %6, align 8
  %866 = getelementptr inbounds i8, i8* %865, i64 6
  %867 = load i8, i8* %866, align 1
  %868 = zext i8 %867 to i32
  %869 = and i32 %868, 8
  %870 = call i32 @wacom_report_key(i8* %863, i64 %864, i32 %869)
  %871 = load i8*, i8** %5, align 8
  %872 = load i64, i64* @BTN_8, align 8
  %873 = load i8*, i8** %6, align 8
  %874 = getelementptr inbounds i8, i8* %873, i64 5
  %875 = load i8, i8* %874, align 1
  %876 = zext i8 %875 to i32
  %877 = and i32 %876, 16
  %878 = call i32 @wacom_report_key(i8* %871, i64 %872, i32 %877)
  %879 = load i8*, i8** %5, align 8
  %880 = load i64, i64* @BTN_9, align 8
  %881 = load i8*, i8** %6, align 8
  %882 = getelementptr inbounds i8, i8* %881, i64 6
  %883 = load i8, i8* %882, align 1
  %884 = zext i8 %883 to i32
  %885 = and i32 %884, 16
  %886 = call i32 @wacom_report_key(i8* %879, i64 %880, i32 %885)
  br label %887

887:                                              ; preds = %806, %805
  %888 = load i8*, i8** %5, align 8
  %889 = load i32, i32* @ABS_RX, align 4
  %890 = load i8*, i8** %6, align 8
  %891 = getelementptr inbounds i8, i8* %890, i64 1
  %892 = load i8, i8* %891, align 1
  %893 = zext i8 %892 to i32
  %894 = and i32 %893, 31
  %895 = shl i32 %894, 8
  %896 = load i8*, i8** %6, align 8
  %897 = getelementptr inbounds i8, i8* %896, i64 2
  %898 = load i8, i8* %897, align 1
  %899 = zext i8 %898 to i32
  %900 = or i32 %895, %899
  %901 = trunc i32 %900 to i8
  %902 = call i32 @wacom_report_abs(i8* %888, i32 %889, i8 zeroext %901)
  %903 = load i8*, i8** %5, align 8
  %904 = load i32, i32* @ABS_RY, align 4
  %905 = load i8*, i8** %6, align 8
  %906 = getelementptr inbounds i8, i8* %905, i64 3
  %907 = load i8, i8* %906, align 1
  %908 = zext i8 %907 to i32
  %909 = and i32 %908, 31
  %910 = shl i32 %909, 8
  %911 = load i8*, i8** %6, align 8
  %912 = getelementptr inbounds i8, i8* %911, i64 4
  %913 = load i8, i8* %912, align 1
  %914 = zext i8 %913 to i32
  %915 = or i32 %910, %914
  %916 = trunc i32 %915 to i8
  %917 = call i32 @wacom_report_abs(i8* %903, i32 %904, i8 zeroext %916)
  %918 = load i8*, i8** %6, align 8
  %919 = getelementptr inbounds i8, i8* %918, i64 5
  %920 = load i8, i8* %919, align 1
  %921 = zext i8 %920 to i32
  %922 = and i32 %921, 31
  %923 = load i8*, i8** %6, align 8
  %924 = getelementptr inbounds i8, i8* %923, i64 6
  %925 = load i8, i8* %924, align 1
  %926 = zext i8 %925 to i32
  %927 = or i32 %922, %926
  %928 = load i8*, i8** %6, align 8
  %929 = getelementptr inbounds i8, i8* %928, i64 1
  %930 = load i8, i8* %929, align 1
  %931 = zext i8 %930 to i32
  %932 = and i32 %931, 31
  %933 = or i32 %927, %932
  %934 = load i8*, i8** %6, align 8
  %935 = getelementptr inbounds i8, i8* %934, i64 2
  %936 = load i8, i8* %935, align 1
  %937 = zext i8 %936 to i32
  %938 = or i32 %933, %937
  %939 = load i8*, i8** %6, align 8
  %940 = getelementptr inbounds i8, i8* %939, i64 3
  %941 = load i8, i8* %940, align 1
  %942 = zext i8 %941 to i32
  %943 = and i32 %942, 31
  %944 = or i32 %938, %943
  %945 = load i8*, i8** %6, align 8
  %946 = getelementptr inbounds i8, i8* %945, i64 4
  %947 = load i8, i8* %946, align 1
  %948 = zext i8 %947 to i32
  %949 = or i32 %944, %948
  %950 = load i8*, i8** %6, align 8
  %951 = getelementptr inbounds i8, i8* %950, i64 8
  %952 = load i8, i8* %951, align 1
  %953 = zext i8 %952 to i32
  %954 = or i32 %949, %953
  %955 = load i8*, i8** %6, align 8
  %956 = getelementptr inbounds i8, i8* %955, i64 7
  %957 = load i8, i8* %956, align 1
  %958 = zext i8 %957 to i32
  %959 = and i32 %958, 1
  %960 = or i32 %954, %959
  %961 = icmp ne i32 %960, 0
  br i1 %961, label %962, label %974

962:                                              ; preds = %887
  %963 = load i8*, i8** %5, align 8
  %964 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %965 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %964, i32 0, i32 1
  %966 = load i64*, i64** %965, align 8
  %967 = getelementptr inbounds i64, i64* %966, i64 1
  %968 = load i64, i64* %967, align 8
  %969 = call i32 @wacom_report_key(i8* %963, i64 %968, i32 1)
  %970 = load i8*, i8** %5, align 8
  %971 = load i32, i32* @ABS_MISC, align 4
  %972 = load i8, i8* @PAD_DEVICE_ID, align 1
  %973 = call i32 @wacom_report_abs(i8* %970, i32 %971, i8 zeroext %972)
  br label %985

974:                                              ; preds = %887
  %975 = load i8*, i8** %5, align 8
  %976 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %977 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %976, i32 0, i32 1
  %978 = load i64*, i64** %977, align 8
  %979 = getelementptr inbounds i64, i64* %978, i64 1
  %980 = load i64, i64* %979, align 8
  %981 = call i32 @wacom_report_key(i8* %975, i64 %980, i32 0)
  %982 = load i8*, i8** %5, align 8
  %983 = load i32, i32* @ABS_MISC, align 4
  %984 = call i32 @wacom_report_abs(i8* %982, i32 %983, i8 zeroext 0)
  br label %985

985:                                              ; preds = %974, %962
  br label %986

986:                                              ; preds = %985, %611
  br label %987

987:                                              ; preds = %986, %504
  br label %988

988:                                              ; preds = %987, %246
  %989 = load i8*, i8** %5, align 8
  %990 = load i32, i32* @EV_MSC, align 4
  %991 = load i32, i32* @MSC_SERIAL, align 4
  %992 = call i32 @wacom_input_event(i8* %989, i32 %990, i32 %991, i32 -1)
  store i32 1, i32* %3, align 4
  br label %1693

993:                                              ; preds = %68
  %994 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %995 = load i8*, i8** %5, align 8
  %996 = call i32 @wacom_intuos_inout(%struct.wacom_wac* %994, i8* %995)
  store i32 %996, i32* %9, align 4
  %997 = load i32, i32* %9, align 4
  %998 = icmp ne i32 %997, 0
  br i1 %998, label %999, label %1002

999:                                              ; preds = %993
  %1000 = load i32, i32* %9, align 4
  %1001 = sub nsw i32 %1000, 1
  store i32 %1001, i32* %3, align 4
  br label %1693

1002:                                             ; preds = %993
  %1003 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1004 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1003, i32 0, i32 2
  %1005 = load i8*, i8** %1004, align 8
  %1006 = load i32, i32* %8, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds i8, i8* %1005, i64 %1007
  %1009 = load i8, i8* %1008, align 1
  %1010 = icmp ne i8 %1009, 0
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1002
  store i32 0, i32* %3, align 4
  br label %1693

1012:                                             ; preds = %1002
  %1013 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1014 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1013, i32 0, i32 1
  %1015 = load i64*, i64** %1014, align 8
  %1016 = load i32, i32* %8, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds i64, i64* %1015, i64 %1017
  %1019 = load i64, i64* %1018, align 8
  %1020 = load i64, i64* @BTN_TOOL_LENS, align 8
  %1021 = icmp eq i64 %1019, %1020
  br i1 %1021, label %1022, label %1071

1022:                                             ; preds = %1012
  %1023 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1024 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1023, i32 0, i32 4
  %1025 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1024, align 8
  %1026 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1025, i32 0, i32 0
  %1027 = load i64, i64* %1026, align 8
  %1028 = load i64, i64* @INTUOS3, align 8
  %1029 = icmp eq i64 %1027, %1028
  br i1 %1029, label %1070, label %1030

1030:                                             ; preds = %1022
  %1031 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1032 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1031, i32 0, i32 4
  %1033 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1032, align 8
  %1034 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1033, i32 0, i32 0
  %1035 = load i64, i64* %1034, align 8
  %1036 = load i64, i64* @INTUOS3S, align 8
  %1037 = icmp eq i64 %1035, %1036
  br i1 %1037, label %1070, label %1038

1038:                                             ; preds = %1030
  %1039 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1040 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1039, i32 0, i32 4
  %1041 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1040, align 8
  %1042 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1041, i32 0, i32 0
  %1043 = load i64, i64* %1042, align 8
  %1044 = load i64, i64* @INTUOS4, align 8
  %1045 = icmp eq i64 %1043, %1044
  br i1 %1045, label %1070, label %1046

1046:                                             ; preds = %1038
  %1047 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1048 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1047, i32 0, i32 4
  %1049 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1048, align 8
  %1050 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1049, i32 0, i32 0
  %1051 = load i64, i64* %1050, align 8
  %1052 = load i64, i64* @INTUOS4S, align 8
  %1053 = icmp eq i64 %1051, %1052
  br i1 %1053, label %1070, label %1054

1054:                                             ; preds = %1046
  %1055 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1056 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1055, i32 0, i32 4
  %1057 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1056, align 8
  %1058 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1057, i32 0, i32 0
  %1059 = load i64, i64* %1058, align 8
  %1060 = load i64, i64* @INTUOS5, align 8
  %1061 = icmp eq i64 %1059, %1060
  br i1 %1061, label %1070, label %1062

1062:                                             ; preds = %1054
  %1063 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1064 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1063, i32 0, i32 4
  %1065 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1064, align 8
  %1066 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1065, i32 0, i32 0
  %1067 = load i64, i64* %1066, align 8
  %1068 = load i64, i64* @INTUOS5S, align 8
  %1069 = icmp eq i64 %1067, %1068
  br i1 %1069, label %1070, label %1071

1070:                                             ; preds = %1062, %1054, %1046, %1038, %1030, %1022
  store i32 0, i32* %3, align 4
  br label %1693

1071:                                             ; preds = %1062, %1012
  %1072 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1073 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1072, i32 0, i32 4
  %1074 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1073, align 8
  %1075 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1074, i32 0, i32 0
  %1076 = load i64, i64* %1075, align 8
  %1077 = load i64, i64* @CINTIQ, align 8
  %1078 = icmp eq i64 %1076, %1077
  br i1 %1078, label %1079, label %1087

1079:                                             ; preds = %1071
  %1080 = load i8*, i8** %6, align 8
  %1081 = getelementptr inbounds i8, i8* %1080, i64 1
  %1082 = load i8, i8* %1081, align 1
  %1083 = zext i8 %1082 to i32
  %1084 = and i32 %1083, 64
  %1085 = icmp ne i32 %1084, 0
  br i1 %1085, label %1087, label %1086

1086:                                             ; preds = %1079
  store i32 0, i32* %3, align 4
  br label %1693

1087:                                             ; preds = %1079, %1071
  %1088 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1089 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1088, i32 0, i32 4
  %1090 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1089, align 8
  %1091 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1090, i32 0, i32 0
  %1092 = load i64, i64* %1091, align 8
  %1093 = load i64, i64* @INTUOS3S, align 8
  %1094 = icmp sge i64 %1092, %1093
  br i1 %1094, label %1095, label %1149

1095:                                             ; preds = %1087
  %1096 = load i8*, i8** %5, align 8
  %1097 = load i32, i32* @ABS_X, align 4
  %1098 = load i8*, i8** %6, align 8
  %1099 = getelementptr inbounds i8, i8* %1098, i64 2
  %1100 = load i8, i8* %1099, align 1
  %1101 = zext i8 %1100 to i32
  %1102 = shl i32 %1101, 9
  %1103 = load i8*, i8** %6, align 8
  %1104 = getelementptr inbounds i8, i8* %1103, i64 3
  %1105 = load i8, i8* %1104, align 1
  %1106 = zext i8 %1105 to i32
  %1107 = shl i32 %1106, 1
  %1108 = or i32 %1102, %1107
  %1109 = load i8*, i8** %6, align 8
  %1110 = getelementptr inbounds i8, i8* %1109, i64 9
  %1111 = load i8, i8* %1110, align 1
  %1112 = zext i8 %1111 to i32
  %1113 = ashr i32 %1112, 1
  %1114 = and i32 %1113, 1
  %1115 = or i32 %1108, %1114
  %1116 = trunc i32 %1115 to i8
  %1117 = call i32 @wacom_report_abs(i8* %1096, i32 %1097, i8 zeroext %1116)
  %1118 = load i8*, i8** %5, align 8
  %1119 = load i32, i32* @ABS_Y, align 4
  %1120 = load i8*, i8** %6, align 8
  %1121 = getelementptr inbounds i8, i8* %1120, i64 4
  %1122 = load i8, i8* %1121, align 1
  %1123 = zext i8 %1122 to i32
  %1124 = shl i32 %1123, 9
  %1125 = load i8*, i8** %6, align 8
  %1126 = getelementptr inbounds i8, i8* %1125, i64 5
  %1127 = load i8, i8* %1126, align 1
  %1128 = zext i8 %1127 to i32
  %1129 = shl i32 %1128, 1
  %1130 = or i32 %1124, %1129
  %1131 = load i8*, i8** %6, align 8
  %1132 = getelementptr inbounds i8, i8* %1131, i64 9
  %1133 = load i8, i8* %1132, align 1
  %1134 = zext i8 %1133 to i32
  %1135 = and i32 %1134, 1
  %1136 = or i32 %1130, %1135
  %1137 = trunc i32 %1136 to i8
  %1138 = call i32 @wacom_report_abs(i8* %1118, i32 %1119, i8 zeroext %1137)
  %1139 = load i8*, i8** %5, align 8
  %1140 = load i32, i32* @ABS_DISTANCE, align 4
  %1141 = load i8*, i8** %6, align 8
  %1142 = getelementptr inbounds i8, i8* %1141, i64 9
  %1143 = load i8, i8* %1142, align 1
  %1144 = zext i8 %1143 to i32
  %1145 = ashr i32 %1144, 2
  %1146 = and i32 %1145, 63
  %1147 = trunc i32 %1146 to i8
  %1148 = call i32 @wacom_report_abs(i8* %1139, i32 %1140, i8 zeroext %1147)
  br label %1172

1149:                                             ; preds = %1087
  %1150 = load i8*, i8** %5, align 8
  %1151 = load i32, i32* @ABS_X, align 4
  %1152 = load i8*, i8** %6, align 8
  %1153 = getelementptr inbounds i8, i8* %1152, i64 2
  %1154 = call zeroext i8 @wacom_be16_to_cpu(i8* %1153)
  %1155 = call i32 @wacom_report_abs(i8* %1150, i32 %1151, i8 zeroext %1154)
  %1156 = load i8*, i8** %5, align 8
  %1157 = load i32, i32* @ABS_Y, align 4
  %1158 = load i8*, i8** %6, align 8
  %1159 = getelementptr inbounds i8, i8* %1158, i64 4
  %1160 = call zeroext i8 @wacom_be16_to_cpu(i8* %1159)
  %1161 = call i32 @wacom_report_abs(i8* %1156, i32 %1157, i8 zeroext %1160)
  %1162 = load i8*, i8** %5, align 8
  %1163 = load i32, i32* @ABS_DISTANCE, align 4
  %1164 = load i8*, i8** %6, align 8
  %1165 = getelementptr inbounds i8, i8* %1164, i64 9
  %1166 = load i8, i8* %1165, align 1
  %1167 = zext i8 %1166 to i32
  %1168 = ashr i32 %1167, 3
  %1169 = and i32 %1168, 31
  %1170 = trunc i32 %1169 to i8
  %1171 = call i32 @wacom_report_abs(i8* %1162, i32 %1163, i8 zeroext %1170)
  br label %1172

1172:                                             ; preds = %1149, %1095
  %1173 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1174 = load i8*, i8** %5, align 8
  %1175 = call i32 @wacom_intuos_general(%struct.wacom_wac* %1173, i8* %1174)
  %1176 = load i8*, i8** %6, align 8
  %1177 = getelementptr inbounds i8, i8* %1176, i64 1
  %1178 = load i8, i8* %1177, align 1
  %1179 = zext i8 %1178 to i32
  %1180 = and i32 %1179, 188
  %1181 = icmp eq i32 %1180, 168
  br i1 %1181, label %1196, label %1182

1182:                                             ; preds = %1172
  %1183 = load i8*, i8** %6, align 8
  %1184 = getelementptr inbounds i8, i8* %1183, i64 1
  %1185 = load i8, i8* %1184, align 1
  %1186 = zext i8 %1185 to i32
  %1187 = and i32 %1186, 190
  %1188 = icmp eq i32 %1187, 176
  br i1 %1188, label %1196, label %1189

1189:                                             ; preds = %1182
  %1190 = load i8*, i8** %6, align 8
  %1191 = getelementptr inbounds i8, i8* %1190, i64 1
  %1192 = load i8, i8* %1191, align 1
  %1193 = zext i8 %1192 to i32
  %1194 = and i32 %1193, 188
  %1195 = icmp eq i32 %1194, 172
  br i1 %1195, label %1196, label %1662

1196:                                             ; preds = %1189, %1182, %1172
  %1197 = load i8*, i8** %6, align 8
  %1198 = getelementptr inbounds i8, i8* %1197, i64 1
  %1199 = load i8, i8* %1198, align 1
  %1200 = zext i8 %1199 to i32
  %1201 = and i32 %1200, 2
  %1202 = icmp ne i32 %1201, 0
  br i1 %1202, label %1203, label %1290

1203:                                             ; preds = %1196
  %1204 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1205 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1204, i32 0, i32 4
  %1206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1205, align 8
  %1207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1206, i32 0, i32 0
  %1208 = load i64, i64* %1207, align 8
  %1209 = load i64, i64* @INTUOS3S, align 8
  %1210 = icmp sge i64 %1208, %1209
  br i1 %1210, label %1211, label %1256

1211:                                             ; preds = %1203
  %1212 = load i8*, i8** %6, align 8
  %1213 = getelementptr inbounds i8, i8* %1212, i64 6
  %1214 = load i8, i8* %1213, align 1
  %1215 = zext i8 %1214 to i32
  %1216 = shl i32 %1215, 3
  %1217 = load i8*, i8** %6, align 8
  %1218 = getelementptr inbounds i8, i8* %1217, i64 7
  %1219 = load i8, i8* %1218, align 1
  %1220 = zext i8 %1219 to i32
  %1221 = ashr i32 %1220, 5
  %1222 = and i32 %1221, 7
  %1223 = or i32 %1216, %1222
  store i32 %1223, i32* %7, align 4
  %1224 = load i8*, i8** %6, align 8
  %1225 = getelementptr inbounds i8, i8* %1224, i64 7
  %1226 = load i8, i8* %1225, align 1
  %1227 = zext i8 %1226 to i32
  %1228 = and i32 %1227, 32
  %1229 = icmp ne i32 %1228, 0
  br i1 %1229, label %1230, label %1245

1230:                                             ; preds = %1211
  %1231 = load i32, i32* %7, align 4
  %1232 = icmp ugt i32 %1231, 900
  br i1 %1232, label %1233, label %1238

1233:                                             ; preds = %1230
  %1234 = load i32, i32* %7, align 4
  %1235 = sub i32 %1234, 1
  %1236 = udiv i32 %1235, 2
  %1237 = sub i32 %1236, 1350
  br label %1243

1238:                                             ; preds = %1230
  %1239 = load i32, i32* %7, align 4
  %1240 = sub i32 %1239, 1
  %1241 = udiv i32 %1240, 2
  %1242 = add i32 %1241, 450
  br label %1243

1243:                                             ; preds = %1238, %1233
  %1244 = phi i32 [ %1237, %1233 ], [ %1242, %1238 ]
  br label %1249

1245:                                             ; preds = %1211
  %1246 = load i32, i32* %7, align 4
  %1247 = udiv i32 %1246, 2
  %1248 = sub i32 450, %1247
  br label %1249

1249:                                             ; preds = %1245, %1243
  %1250 = phi i32 [ %1244, %1243 ], [ %1248, %1245 ]
  store i32 %1250, i32* %7, align 4
  %1251 = load i8*, i8** %5, align 8
  %1252 = load i32, i32* @ABS_Z, align 4
  %1253 = load i32, i32* %7, align 4
  %1254 = trunc i32 %1253 to i8
  %1255 = call i32 @wacom_report_abs(i8* %1251, i32 %1252, i8 zeroext %1254)
  br label %1289

1256:                                             ; preds = %1203
  %1257 = load i8*, i8** %6, align 8
  %1258 = getelementptr inbounds i8, i8* %1257, i64 6
  %1259 = load i8, i8* %1258, align 1
  %1260 = zext i8 %1259 to i32
  %1261 = shl i32 %1260, 3
  %1262 = load i8*, i8** %6, align 8
  %1263 = getelementptr inbounds i8, i8* %1262, i64 7
  %1264 = load i8, i8* %1263, align 1
  %1265 = zext i8 %1264 to i32
  %1266 = ashr i32 %1265, 5
  %1267 = and i32 %1266, 7
  %1268 = or i32 %1261, %1267
  store i32 %1268, i32* %7, align 4
  %1269 = load i8*, i8** %5, align 8
  %1270 = load i32, i32* @ABS_RZ, align 4
  %1271 = load i8*, i8** %6, align 8
  %1272 = getelementptr inbounds i8, i8* %1271, i64 7
  %1273 = load i8, i8* %1272, align 1
  %1274 = zext i8 %1273 to i32
  %1275 = and i32 %1274, 32
  %1276 = icmp ne i32 %1275, 0
  br i1 %1276, label %1277, label %1281

1277:                                             ; preds = %1256
  %1278 = load i32, i32* %7, align 4
  %1279 = sub i32 %1278, 1
  %1280 = udiv i32 %1279, 2
  br label %1285

1281:                                             ; preds = %1256
  %1282 = load i32, i32* %7, align 4
  %1283 = sub i32 0, %1282
  %1284 = udiv i32 %1283, 2
  br label %1285

1285:                                             ; preds = %1281, %1277
  %1286 = phi i32 [ %1280, %1277 ], [ %1284, %1281 ]
  %1287 = trunc i32 %1286 to i8
  %1288 = call i32 @wacom_report_abs(i8* %1269, i32 %1270, i8 zeroext %1287)
  br label %1289

1289:                                             ; preds = %1285, %1249
  br label %1661

1290:                                             ; preds = %1196
  %1291 = load i8*, i8** %6, align 8
  %1292 = getelementptr inbounds i8, i8* %1291, i64 1
  %1293 = load i8, i8* %1292, align 1
  %1294 = zext i8 %1293 to i32
  %1295 = and i32 %1294, 16
  %1296 = icmp ne i32 %1295, 0
  br i1 %1296, label %1375, label %1297

1297:                                             ; preds = %1290
  %1298 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1299 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1298, i32 0, i32 4
  %1300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1299, align 8
  %1301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1300, i32 0, i32 0
  %1302 = load i64, i64* %1301, align 8
  %1303 = load i64, i64* @INTUOS3S, align 8
  %1304 = icmp slt i64 %1302, %1303
  br i1 %1304, label %1305, label %1375

1305:                                             ; preds = %1297
  %1306 = load i8*, i8** %5, align 8
  %1307 = load i64, i64* @BTN_LEFT, align 8
  %1308 = load i8*, i8** %6, align 8
  %1309 = getelementptr inbounds i8, i8* %1308, i64 8
  %1310 = load i8, i8* %1309, align 1
  %1311 = zext i8 %1310 to i32
  %1312 = and i32 %1311, 1
  %1313 = call i32 @wacom_report_key(i8* %1306, i64 %1307, i32 %1312)
  %1314 = load i8*, i8** %5, align 8
  %1315 = load i64, i64* @BTN_MIDDLE, align 8
  %1316 = load i8*, i8** %6, align 8
  %1317 = getelementptr inbounds i8, i8* %1316, i64 8
  %1318 = load i8, i8* %1317, align 1
  %1319 = zext i8 %1318 to i32
  %1320 = and i32 %1319, 2
  %1321 = call i32 @wacom_report_key(i8* %1314, i64 %1315, i32 %1320)
  %1322 = load i8*, i8** %5, align 8
  %1323 = load i64, i64* @BTN_RIGHT, align 8
  %1324 = load i8*, i8** %6, align 8
  %1325 = getelementptr inbounds i8, i8* %1324, i64 8
  %1326 = load i8, i8* %1325, align 1
  %1327 = zext i8 %1326 to i32
  %1328 = and i32 %1327, 4
  %1329 = call i32 @wacom_report_key(i8* %1322, i64 %1323, i32 %1328)
  %1330 = load i8*, i8** %5, align 8
  %1331 = load i64, i64* @BTN_SIDE, align 8
  %1332 = load i8*, i8** %6, align 8
  %1333 = getelementptr inbounds i8, i8* %1332, i64 8
  %1334 = load i8, i8* %1333, align 1
  %1335 = zext i8 %1334 to i32
  %1336 = and i32 %1335, 32
  %1337 = call i32 @wacom_report_key(i8* %1330, i64 %1331, i32 %1336)
  %1338 = load i8*, i8** %5, align 8
  %1339 = load i64, i64* @BTN_EXTRA, align 8
  %1340 = load i8*, i8** %6, align 8
  %1341 = getelementptr inbounds i8, i8* %1340, i64 8
  %1342 = load i8, i8* %1341, align 1
  %1343 = zext i8 %1342 to i32
  %1344 = and i32 %1343, 16
  %1345 = call i32 @wacom_report_key(i8* %1338, i64 %1339, i32 %1344)
  %1346 = load i8*, i8** %6, align 8
  %1347 = getelementptr inbounds i8, i8* %1346, i64 6
  %1348 = load i8, i8* %1347, align 1
  %1349 = zext i8 %1348 to i32
  %1350 = shl i32 %1349, 2
  %1351 = load i8*, i8** %6, align 8
  %1352 = getelementptr inbounds i8, i8* %1351, i64 7
  %1353 = load i8, i8* %1352, align 1
  %1354 = zext i8 %1353 to i32
  %1355 = ashr i32 %1354, 6
  %1356 = and i32 %1355, 3
  %1357 = or i32 %1350, %1356
  store i32 %1357, i32* %7, align 4
  %1358 = load i8*, i8** %5, align 8
  %1359 = load i32, i32* @ABS_THROTTLE, align 4
  %1360 = load i8*, i8** %6, align 8
  %1361 = getelementptr inbounds i8, i8* %1360, i64 8
  %1362 = load i8, i8* %1361, align 1
  %1363 = zext i8 %1362 to i32
  %1364 = and i32 %1363, 8
  %1365 = icmp ne i32 %1364, 0
  br i1 %1365, label %1366, label %1369

1366:                                             ; preds = %1305
  %1367 = load i32, i32* %7, align 4
  %1368 = sub i32 0, %1367
  br label %1371

1369:                                             ; preds = %1305
  %1370 = load i32, i32* %7, align 4
  br label %1371

1371:                                             ; preds = %1369, %1366
  %1372 = phi i32 [ %1368, %1366 ], [ %1370, %1369 ]
  %1373 = trunc i32 %1372 to i8
  %1374 = call i32 @wacom_report_abs(i8* %1358, i32 %1359, i8 zeroext %1373)
  br label %1660

1375:                                             ; preds = %1297, %1290
  %1376 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1377 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1376, i32 0, i32 1
  %1378 = load i64*, i64** %1377, align 8
  %1379 = load i32, i32* %8, align 4
  %1380 = sext i32 %1379 to i64
  %1381 = getelementptr inbounds i64, i64* %1378, i64 %1380
  %1382 = load i64, i64* %1381, align 8
  %1383 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %1384 = icmp eq i64 %1382, %1383
  br i1 %1384, label %1385, label %1575

1385:                                             ; preds = %1375
  %1386 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1387 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1386, i32 0, i32 4
  %1388 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1387, align 8
  %1389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1388, i32 0, i32 0
  %1390 = load i64, i64* %1389, align 8
  %1391 = load i64, i64* @INTUOS4S, align 8
  %1392 = icmp sge i64 %1390, %1391
  br i1 %1392, label %1393, label %1401

1393:                                             ; preds = %1385
  %1394 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1395 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1394, i32 0, i32 4
  %1396 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1395, align 8
  %1397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1396, i32 0, i32 0
  %1398 = load i64, i64* %1397, align 8
  %1399 = load i64, i64* @INTUOS4L, align 8
  %1400 = icmp sle i64 %1398, %1399
  br i1 %1400, label %1417, label %1401

1401:                                             ; preds = %1393, %1385
  %1402 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1403 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1402, i32 0, i32 4
  %1404 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1403, align 8
  %1405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1404, i32 0, i32 0
  %1406 = load i64, i64* %1405, align 8
  %1407 = load i64, i64* @INTUOS5S, align 8
  %1408 = icmp sge i64 %1406, %1407
  br i1 %1408, label %1409, label %1500

1409:                                             ; preds = %1401
  %1410 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1411 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1410, i32 0, i32 4
  %1412 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1411, align 8
  %1413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1412, i32 0, i32 0
  %1414 = load i64, i64* %1413, align 8
  %1415 = load i64, i64* @INTUOS5L, align 8
  %1416 = icmp sle i64 %1414, %1415
  br i1 %1416, label %1417, label %1500

1417:                                             ; preds = %1409, %1393
  %1418 = load i8*, i8** %5, align 8
  %1419 = load i64, i64* @BTN_LEFT, align 8
  %1420 = load i8*, i8** %6, align 8
  %1421 = getelementptr inbounds i8, i8* %1420, i64 6
  %1422 = load i8, i8* %1421, align 1
  %1423 = zext i8 %1422 to i32
  %1424 = and i32 %1423, 1
  %1425 = call i32 @wacom_report_key(i8* %1418, i64 %1419, i32 %1424)
  %1426 = load i8*, i8** %5, align 8
  %1427 = load i64, i64* @BTN_MIDDLE, align 8
  %1428 = load i8*, i8** %6, align 8
  %1429 = getelementptr inbounds i8, i8* %1428, i64 6
  %1430 = load i8, i8* %1429, align 1
  %1431 = zext i8 %1430 to i32
  %1432 = and i32 %1431, 2
  %1433 = call i32 @wacom_report_key(i8* %1426, i64 %1427, i32 %1432)
  %1434 = load i8*, i8** %5, align 8
  %1435 = load i64, i64* @BTN_RIGHT, align 8
  %1436 = load i8*, i8** %6, align 8
  %1437 = getelementptr inbounds i8, i8* %1436, i64 6
  %1438 = load i8, i8* %1437, align 1
  %1439 = zext i8 %1438 to i32
  %1440 = and i32 %1439, 4
  %1441 = call i32 @wacom_report_key(i8* %1434, i64 %1435, i32 %1440)
  %1442 = load i8*, i8** %5, align 8
  %1443 = load i32, i32* @REL_WHEEL, align 4
  %1444 = load i8*, i8** %6, align 8
  %1445 = getelementptr inbounds i8, i8* %1444, i64 7
  %1446 = load i8, i8* %1445, align 1
  %1447 = zext i8 %1446 to i32
  %1448 = and i32 %1447, 128
  %1449 = ashr i32 %1448, 7
  %1450 = load i8*, i8** %6, align 8
  %1451 = getelementptr inbounds i8, i8* %1450, i64 7
  %1452 = load i8, i8* %1451, align 1
  %1453 = zext i8 %1452 to i32
  %1454 = and i32 %1453, 64
  %1455 = ashr i32 %1454, 6
  %1456 = sub nsw i32 %1449, %1455
  %1457 = trunc i32 %1456 to i8
  %1458 = call i32 @wacom_report_rel(i8* %1442, i32 %1443, i8 zeroext %1457)
  %1459 = load i8*, i8** %5, align 8
  %1460 = load i64, i64* @BTN_SIDE, align 8
  %1461 = load i8*, i8** %6, align 8
  %1462 = getelementptr inbounds i8, i8* %1461, i64 6
  %1463 = load i8, i8* %1462, align 1
  %1464 = zext i8 %1463 to i32
  %1465 = and i32 %1464, 8
  %1466 = call i32 @wacom_report_key(i8* %1459, i64 %1460, i32 %1465)
  %1467 = load i8*, i8** %5, align 8
  %1468 = load i64, i64* @BTN_EXTRA, align 8
  %1469 = load i8*, i8** %6, align 8
  %1470 = getelementptr inbounds i8, i8* %1469, i64 6
  %1471 = load i8, i8* %1470, align 1
  %1472 = zext i8 %1471 to i32
  %1473 = and i32 %1472, 16
  %1474 = call i32 @wacom_report_key(i8* %1467, i64 %1468, i32 %1473)
  %1475 = load i8*, i8** %5, align 8
  %1476 = load i32, i32* @ABS_TILT_X, align 4
  %1477 = load i8*, i8** %6, align 8
  %1478 = getelementptr inbounds i8, i8* %1477, i64 7
  %1479 = load i8, i8* %1478, align 1
  %1480 = zext i8 %1479 to i32
  %1481 = shl i32 %1480, 1
  %1482 = and i32 %1481, 126
  %1483 = load i8*, i8** %6, align 8
  %1484 = getelementptr inbounds i8, i8* %1483, i64 8
  %1485 = load i8, i8* %1484, align 1
  %1486 = zext i8 %1485 to i32
  %1487 = ashr i32 %1486, 7
  %1488 = or i32 %1482, %1487
  %1489 = trunc i32 %1488 to i8
  %1490 = call i32 @wacom_report_abs(i8* %1475, i32 %1476, i8 zeroext %1489)
  %1491 = load i8*, i8** %5, align 8
  %1492 = load i32, i32* @ABS_TILT_Y, align 4
  %1493 = load i8*, i8** %6, align 8
  %1494 = getelementptr inbounds i8, i8* %1493, i64 8
  %1495 = load i8, i8* %1494, align 1
  %1496 = zext i8 %1495 to i32
  %1497 = and i32 %1496, 127
  %1498 = trunc i32 %1497 to i8
  %1499 = call i32 @wacom_report_abs(i8* %1491, i32 %1492, i8 zeroext %1498)
  br label %1574

1500:                                             ; preds = %1409, %1401
  %1501 = load i8*, i8** %5, align 8
  %1502 = load i64, i64* @BTN_LEFT, align 8
  %1503 = load i8*, i8** %6, align 8
  %1504 = getelementptr inbounds i8, i8* %1503, i64 8
  %1505 = load i8, i8* %1504, align 1
  %1506 = zext i8 %1505 to i32
  %1507 = and i32 %1506, 4
  %1508 = call i32 @wacom_report_key(i8* %1501, i64 %1502, i32 %1507)
  %1509 = load i8*, i8** %5, align 8
  %1510 = load i64, i64* @BTN_MIDDLE, align 8
  %1511 = load i8*, i8** %6, align 8
  %1512 = getelementptr inbounds i8, i8* %1511, i64 8
  %1513 = load i8, i8* %1512, align 1
  %1514 = zext i8 %1513 to i32
  %1515 = and i32 %1514, 8
  %1516 = call i32 @wacom_report_key(i8* %1509, i64 %1510, i32 %1515)
  %1517 = load i8*, i8** %5, align 8
  %1518 = load i64, i64* @BTN_RIGHT, align 8
  %1519 = load i8*, i8** %6, align 8
  %1520 = getelementptr inbounds i8, i8* %1519, i64 8
  %1521 = load i8, i8* %1520, align 1
  %1522 = zext i8 %1521 to i32
  %1523 = and i32 %1522, 16
  %1524 = call i32 @wacom_report_key(i8* %1517, i64 %1518, i32 %1523)
  %1525 = load i8*, i8** %5, align 8
  %1526 = load i32, i32* @REL_WHEEL, align 4
  %1527 = load i8*, i8** %6, align 8
  %1528 = getelementptr inbounds i8, i8* %1527, i64 8
  %1529 = load i8, i8* %1528, align 1
  %1530 = zext i8 %1529 to i32
  %1531 = and i32 %1530, 1
  %1532 = load i8*, i8** %6, align 8
  %1533 = getelementptr inbounds i8, i8* %1532, i64 8
  %1534 = load i8, i8* %1533, align 1
  %1535 = zext i8 %1534 to i32
  %1536 = and i32 %1535, 2
  %1537 = ashr i32 %1536, 1
  %1538 = sub nsw i32 %1531, %1537
  %1539 = trunc i32 %1538 to i8
  %1540 = call i32 @wacom_report_rel(i8* %1525, i32 %1526, i8 zeroext %1539)
  %1541 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1542 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1541, i32 0, i32 4
  %1543 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1542, align 8
  %1544 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1543, i32 0, i32 0
  %1545 = load i64, i64* %1544, align 8
  %1546 = load i64, i64* @INTUOS3S, align 8
  %1547 = icmp sge i64 %1545, %1546
  br i1 %1547, label %1548, label %1573

1548:                                             ; preds = %1500
  %1549 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1550 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1549, i32 0, i32 4
  %1551 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1550, align 8
  %1552 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1551, i32 0, i32 0
  %1553 = load i64, i64* %1552, align 8
  %1554 = load i64, i64* @INTUOS3L, align 8
  %1555 = icmp sle i64 %1553, %1554
  br i1 %1555, label %1556, label %1573

1556:                                             ; preds = %1548
  %1557 = load i8*, i8** %5, align 8
  %1558 = load i64, i64* @BTN_SIDE, align 8
  %1559 = load i8*, i8** %6, align 8
  %1560 = getelementptr inbounds i8, i8* %1559, i64 8
  %1561 = load i8, i8* %1560, align 1
  %1562 = zext i8 %1561 to i32
  %1563 = and i32 %1562, 64
  %1564 = call i32 @wacom_report_key(i8* %1557, i64 %1558, i32 %1563)
  %1565 = load i8*, i8** %5, align 8
  %1566 = load i64, i64* @BTN_EXTRA, align 8
  %1567 = load i8*, i8** %6, align 8
  %1568 = getelementptr inbounds i8, i8* %1567, i64 8
  %1569 = load i8, i8* %1568, align 1
  %1570 = zext i8 %1569 to i32
  %1571 = and i32 %1570, 32
  %1572 = call i32 @wacom_report_key(i8* %1565, i64 %1566, i32 %1571)
  br label %1573

1573:                                             ; preds = %1556, %1548, %1500
  br label %1574

1574:                                             ; preds = %1573, %1417
  br label %1659

1575:                                             ; preds = %1375
  %1576 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1577 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1576, i32 0, i32 4
  %1578 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1577, align 8
  %1579 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1578, i32 0, i32 0
  %1580 = load i64, i64* %1579, align 8
  %1581 = load i64, i64* @INTUOS3S, align 8
  %1582 = icmp slt i64 %1580, %1581
  br i1 %1582, label %1607, label %1583

1583:                                             ; preds = %1575
  %1584 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1585 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1584, i32 0, i32 4
  %1586 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1585, align 8
  %1587 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1586, i32 0, i32 0
  %1588 = load i64, i64* %1587, align 8
  %1589 = load i64, i64* @INTUOS3L, align 8
  %1590 = icmp eq i64 %1588, %1589
  br i1 %1590, label %1607, label %1591

1591:                                             ; preds = %1583
  %1592 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1593 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1592, i32 0, i32 4
  %1594 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1593, align 8
  %1595 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1594, i32 0, i32 0
  %1596 = load i64, i64* %1595, align 8
  %1597 = load i64, i64* @INTUOS4L, align 8
  %1598 = icmp eq i64 %1596, %1597
  br i1 %1598, label %1607, label %1599

1599:                                             ; preds = %1591
  %1600 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1601 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1600, i32 0, i32 4
  %1602 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1601, align 8
  %1603 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1602, i32 0, i32 0
  %1604 = load i64, i64* %1603, align 8
  %1605 = load i64, i64* @INTUOS5L, align 8
  %1606 = icmp eq i64 %1604, %1605
  br i1 %1606, label %1607, label %1658

1607:                                             ; preds = %1599, %1591, %1583, %1575
  %1608 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1609 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1608, i32 0, i32 1
  %1610 = load i64*, i64** %1609, align 8
  %1611 = load i32, i32* %8, align 4
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds i64, i64* %1610, i64 %1612
  %1614 = load i64, i64* %1613, align 8
  %1615 = load i64, i64* @BTN_TOOL_LENS, align 8
  %1616 = icmp eq i64 %1614, %1615
  br i1 %1616, label %1617, label %1658

1617:                                             ; preds = %1607
  %1618 = load i8*, i8** %5, align 8
  %1619 = load i64, i64* @BTN_LEFT, align 8
  %1620 = load i8*, i8** %6, align 8
  %1621 = getelementptr inbounds i8, i8* %1620, i64 8
  %1622 = load i8, i8* %1621, align 1
  %1623 = zext i8 %1622 to i32
  %1624 = and i32 %1623, 1
  %1625 = call i32 @wacom_report_key(i8* %1618, i64 %1619, i32 %1624)
  %1626 = load i8*, i8** %5, align 8
  %1627 = load i64, i64* @BTN_MIDDLE, align 8
  %1628 = load i8*, i8** %6, align 8
  %1629 = getelementptr inbounds i8, i8* %1628, i64 8
  %1630 = load i8, i8* %1629, align 1
  %1631 = zext i8 %1630 to i32
  %1632 = and i32 %1631, 2
  %1633 = call i32 @wacom_report_key(i8* %1626, i64 %1627, i32 %1632)
  %1634 = load i8*, i8** %5, align 8
  %1635 = load i64, i64* @BTN_RIGHT, align 8
  %1636 = load i8*, i8** %6, align 8
  %1637 = getelementptr inbounds i8, i8* %1636, i64 8
  %1638 = load i8, i8* %1637, align 1
  %1639 = zext i8 %1638 to i32
  %1640 = and i32 %1639, 4
  %1641 = call i32 @wacom_report_key(i8* %1634, i64 %1635, i32 %1640)
  %1642 = load i8*, i8** %5, align 8
  %1643 = load i64, i64* @BTN_SIDE, align 8
  %1644 = load i8*, i8** %6, align 8
  %1645 = getelementptr inbounds i8, i8* %1644, i64 8
  %1646 = load i8, i8* %1645, align 1
  %1647 = zext i8 %1646 to i32
  %1648 = and i32 %1647, 16
  %1649 = call i32 @wacom_report_key(i8* %1642, i64 %1643, i32 %1648)
  %1650 = load i8*, i8** %5, align 8
  %1651 = load i64, i64* @BTN_EXTRA, align 8
  %1652 = load i8*, i8** %6, align 8
  %1653 = getelementptr inbounds i8, i8* %1652, i64 8
  %1654 = load i8, i8* %1653, align 1
  %1655 = zext i8 %1654 to i32
  %1656 = and i32 %1655, 8
  %1657 = call i32 @wacom_report_key(i8* %1650, i64 %1651, i32 %1656)
  br label %1658

1658:                                             ; preds = %1617, %1607, %1599
  br label %1659

1659:                                             ; preds = %1658, %1574
  br label %1660

1660:                                             ; preds = %1659, %1371
  br label %1661

1661:                                             ; preds = %1660, %1289
  br label %1662

1662:                                             ; preds = %1661, %1189
  %1663 = load i8*, i8** %5, align 8
  %1664 = load i32, i32* @ABS_MISC, align 4
  %1665 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1666 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1665, i32 0, i32 2
  %1667 = load i8*, i8** %1666, align 8
  %1668 = load i32, i32* %8, align 4
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds i8, i8* %1667, i64 %1669
  %1671 = load i8, i8* %1670, align 1
  %1672 = call i32 @wacom_report_abs(i8* %1663, i32 %1664, i8 zeroext %1671)
  %1673 = load i8*, i8** %5, align 8
  %1674 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1675 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1674, i32 0, i32 1
  %1676 = load i64*, i64** %1675, align 8
  %1677 = load i32, i32* %8, align 4
  %1678 = sext i32 %1677 to i64
  %1679 = getelementptr inbounds i64, i64* %1676, i64 %1678
  %1680 = load i64, i64* %1679, align 8
  %1681 = call i32 @wacom_report_key(i8* %1673, i64 %1680, i32 1)
  %1682 = load i8*, i8** %5, align 8
  %1683 = load i32, i32* @EV_MSC, align 4
  %1684 = load i32, i32* @MSC_SERIAL, align 4
  %1685 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %1686 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %1685, i32 0, i32 3
  %1687 = load i32*, i32** %1686, align 8
  %1688 = load i32, i32* %8, align 4
  %1689 = sext i32 %1688 to i64
  %1690 = getelementptr inbounds i32, i32* %1687, i64 %1689
  %1691 = load i32, i32* %1690, align 4
  %1692 = call i32 @wacom_input_event(i8* %1682, i32 %1683, i32 %1684, i32 %1691)
  store i32 1, i32* %3, align 4
  br label %1693

1693:                                             ; preds = %1662, %1086, %1070, %1011, %999, %988, %43
  %1694 = load i32, i32* %3, align 4
  ret i32 %1694
}

declare dso_local i32 @dbg(i8*, i8 zeroext) #1

declare dso_local i32 @wacom_report_key(i8*, i64, i32) #1

declare dso_local i32 @wacom_report_abs(i8*, i32, i8 zeroext) #1

declare dso_local i32 @wacom_input_event(i8*, i32, i32, i32) #1

declare dso_local i32 @wacom_intuos_inout(%struct.wacom_wac*, i8*) #1

declare dso_local zeroext i8 @wacom_be16_to_cpu(i8*) #1

declare dso_local i32 @wacom_intuos_general(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_report_rel(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
