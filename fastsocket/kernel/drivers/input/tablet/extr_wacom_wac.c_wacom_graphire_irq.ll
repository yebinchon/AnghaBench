; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_graphire_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_graphire_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i64*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"wacom_graphire_irq: received unknown report #%d\00", align 1
@BTN_TOOL_PEN = common dso_local global i64 0, align 8
@STYLUS_DEVICE_ID = common dso_local global i8 0, align 1
@BTN_TOOL_RUBBER = common dso_local global i64 0, align 8
@ERASER_DEVICE_ID = common dso_local global i8 0, align 1
@BTN_MIDDLE = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i64 0, align 8
@CURSOR_DEVICE_ID = common dso_local global i8 0, align 1
@BTN_LEFT = common dso_local global i64 0, align 8
@BTN_RIGHT = common dso_local global i64 0, align 8
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i64 0, align 8
@BTN_STYLUS = common dso_local global i64 0, align 8
@BTN_STYLUS2 = common dso_local global i64 0, align 8
@ABS_MISC = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i8* null, align 8
@BTN_0 = common dso_local global i64 0, align 8
@BTN_4 = common dso_local global i64 0, align 8
@BTN_TOOL_FINGER = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i64 0, align 8
@BTN_5 = common dso_local global i64 0, align 8
@ABS_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_graphire_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_graphire_irq(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8 zeroext %21)
  store i32 0, i32* %3, align 4
  br label %596

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %265

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 5
  %36 = and i32 %35, 3
  switch i32 %36, label %182 [
    i32 0, label %37
    i32 1, label %48
    i32 2, label %59
    i32 3, label %119
  ]

37:                                               ; preds = %30
  %38 = load i64, i64* @BTN_TOOL_PEN, align 8
  %39 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %40 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %38, i64* %42, align 8
  %43 = load i8, i8* @STYLUS_DEVICE_ID, align 1
  %44 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %45 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %43, i8* %47, align 1
  br label %182

48:                                               ; preds = %30
  %49 = load i64, i64* @BTN_TOOL_RUBBER, align 8
  %50 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %51 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 %49, i64* %53, align 8
  %54 = load i8, i8* @ERASER_DEVICE_ID, align 1
  %55 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %56 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %54, i8* %58, align 1
  br label %182

59:                                               ; preds = %30
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* @BTN_MIDDLE, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 4
  %67 = trunc i32 %66 to i8
  %68 = call i32 @wacom_report_key(i8* %60, i64 %61, i8 zeroext %67)
  %69 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %70 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 129
  br i1 %74, label %82, label %75

75:                                               ; preds = %59
  %76 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %77 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %109

82:                                               ; preds = %75, %59
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 7
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 7
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 3
  %95 = sub nsw i32 %94, 4
  br label %102

96:                                               ; preds = %82
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 7
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 3
  br label %102

102:                                              ; preds = %96, %89
  %103 = phi i32 [ %95, %89 ], [ %101, %96 ]
  store i32 %103, i32* %9, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* @REL_WHEEL, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 @wacom_report_rel(i8* %104, i32 %105, i32 %107)
  br label %118

109:                                              ; preds = %75
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* @REL_WHEEL, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 6
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 0, %115
  %117 = call i32 @wacom_report_rel(i8* %110, i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %109, %102
  br label %119

119:                                              ; preds = %30, %118
  %120 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %121 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %122 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  store i64 %120, i64* %124, align 8
  %125 = load i8, i8* @CURSOR_DEVICE_ID, align 1
  %126 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %127 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 %125, i8* %129, align 1
  %130 = load i8*, i8** %5, align 8
  %131 = load i64, i64* @BTN_LEFT, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 1
  %137 = trunc i32 %136 to i8
  %138 = call i32 @wacom_report_key(i8* %130, i64 %131, i8 zeroext %137)
  %139 = load i8*, i8** %5, align 8
  %140 = load i64, i64* @BTN_RIGHT, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 2
  %146 = trunc i32 %145 to i8
  %147 = call i32 @wacom_report_key(i8* %139, i64 %140, i8 zeroext %146)
  %148 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %149 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %148, i32 0, i32 3
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 129
  br i1 %153, label %161, label %154

154:                                              ; preds = %119
  %155 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %156 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %155, i32 0, i32 3
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 128
  br i1 %160, label %161, label %171

161:                                              ; preds = %154, %119
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* @ABS_DISTANCE, align 4
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 6
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 63
  %169 = trunc i32 %168 to i8
  %170 = call i32 @wacom_report_abs(i8* %162, i32 %163, i8 zeroext %169)
  br label %181

171:                                              ; preds = %154
  %172 = load i8*, i8** %5, align 8
  %173 = load i32, i32* @ABS_DISTANCE, align 4
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 7
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 63
  %179 = trunc i32 %178 to i8
  %180 = call i32 @wacom_report_abs(i8* %172, i32 %173, i8 zeroext %179)
  br label %181

181:                                              ; preds = %171, %161
  br label %182

182:                                              ; preds = %30, %181, %48, %37
  %183 = load i8*, i8** %6, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 2
  %185 = call i32 @wacom_le16_to_cpu(i8* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i8*, i8** %6, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 4
  %188 = call i32 @wacom_le16_to_cpu(i8* %187)
  store i32 %188, i32* %8, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = load i32, i32* @ABS_X, align 4
  %191 = load i32, i32* %7, align 4
  %192 = trunc i32 %191 to i8
  %193 = call i32 @wacom_report_abs(i8* %189, i32 %190, i8 zeroext %192)
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* @ABS_Y, align 4
  %196 = load i32, i32* %8, align 4
  %197 = trunc i32 %196 to i8
  %198 = call i32 @wacom_report_abs(i8* %194, i32 %195, i8 zeroext %197)
  %199 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %200 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %249

206:                                              ; preds = %182
  %207 = load i8*, i8** %5, align 8
  %208 = load i32, i32* @ABS_PRESSURE, align 4
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 6
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = load i8*, i8** %6, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 7
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = and i32 %216, 1
  %218 = shl i32 %217, 8
  %219 = or i32 %212, %218
  %220 = trunc i32 %219 to i8
  %221 = call i32 @wacom_report_abs(i8* %207, i32 %208, i8 zeroext %220)
  %222 = load i8*, i8** %5, align 8
  %223 = load i64, i64* @BTN_TOUCH, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = and i32 %227, 1
  %229 = trunc i32 %228 to i8
  %230 = call i32 @wacom_report_key(i8* %222, i64 %223, i8 zeroext %229)
  %231 = load i8*, i8** %5, align 8
  %232 = load i64, i64* @BTN_STYLUS, align 8
  %233 = load i8*, i8** %6, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 2
  %238 = trunc i32 %237 to i8
  %239 = call i32 @wacom_report_key(i8* %231, i64 %232, i8 zeroext %238)
  %240 = load i8*, i8** %5, align 8
  %241 = load i64, i64* @BTN_STYLUS2, align 8
  %242 = load i8*, i8** %6, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = and i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = call i32 @wacom_report_key(i8* %240, i64 %241, i8 zeroext %247)
  br label %249

249:                                              ; preds = %206, %182
  %250 = load i8*, i8** %5, align 8
  %251 = load i32, i32* @ABS_MISC, align 4
  %252 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %253 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 0
  %256 = load i8, i8* %255, align 1
  %257 = call i32 @wacom_report_abs(i8* %250, i32 %251, i8 zeroext %256)
  %258 = load i8*, i8** %5, align 8
  %259 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %260 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @wacom_report_key(i8* %258, i64 %263, i8 zeroext 1)
  br label %325

265:                                              ; preds = %23
  %266 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %267 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = icmp ne i8 %270, 0
  br i1 %271, label %272, label %324

272:                                              ; preds = %265
  %273 = load i8*, i8** %5, align 8
  %274 = load i32, i32* @ABS_X, align 4
  %275 = call i32 @wacom_report_abs(i8* %273, i32 %274, i8 zeroext 0)
  %276 = load i8*, i8** %5, align 8
  %277 = load i32, i32* @ABS_Y, align 4
  %278 = call i32 @wacom_report_abs(i8* %276, i32 %277, i8 zeroext 0)
  %279 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %280 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %279, i32 0, i32 1
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %272
  %287 = load i8*, i8** %5, align 8
  %288 = load i64, i64* @BTN_LEFT, align 8
  %289 = call i32 @wacom_report_key(i8* %287, i64 %288, i8 zeroext 0)
  %290 = load i8*, i8** %5, align 8
  %291 = load i64, i64* @BTN_RIGHT, align 8
  %292 = call i32 @wacom_report_key(i8* %290, i64 %291, i8 zeroext 0)
  %293 = load i8*, i8** %5, align 8
  %294 = load i32, i32* @ABS_DISTANCE, align 4
  %295 = call i32 @wacom_report_abs(i8* %293, i32 %294, i8 zeroext 0)
  br label %309

296:                                              ; preds = %272
  %297 = load i8*, i8** %5, align 8
  %298 = load i32, i32* @ABS_PRESSURE, align 4
  %299 = call i32 @wacom_report_abs(i8* %297, i32 %298, i8 zeroext 0)
  %300 = load i8*, i8** %5, align 8
  %301 = load i64, i64* @BTN_TOUCH, align 8
  %302 = call i32 @wacom_report_key(i8* %300, i64 %301, i8 zeroext 0)
  %303 = load i8*, i8** %5, align 8
  %304 = load i64, i64* @BTN_STYLUS, align 8
  %305 = call i32 @wacom_report_key(i8* %303, i64 %304, i8 zeroext 0)
  %306 = load i8*, i8** %5, align 8
  %307 = load i64, i64* @BTN_STYLUS2, align 8
  %308 = call i32 @wacom_report_key(i8* %306, i64 %307, i8 zeroext 0)
  br label %309

309:                                              ; preds = %296, %286
  %310 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %311 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %310, i32 0, i32 2
  %312 = load i8*, i8** %311, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 0
  store i8 0, i8* %313, align 1
  %314 = load i8*, i8** %5, align 8
  %315 = load i32, i32* @ABS_MISC, align 4
  %316 = call i32 @wacom_report_abs(i8* %314, i32 %315, i8 zeroext 0)
  %317 = load i8*, i8** %5, align 8
  %318 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %319 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %318, i32 0, i32 1
  %320 = load i64*, i64** %319, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 0
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @wacom_report_key(i8* %317, i64 %322, i8 zeroext 0)
  br label %324

324:                                              ; preds = %309, %265
  br label %325

325:                                              ; preds = %324, %249
  %326 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %327 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %326, i32 0, i32 3
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  switch i32 %330, label %595 [
    i32 129, label %331
    i32 128, label %441
  ]

331:                                              ; preds = %325
  %332 = load i8*, i8** %6, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 7
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = and i32 %335, 248
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %397

338:                                              ; preds = %331
  %339 = load i8*, i8** %5, align 8
  %340 = call i32 @wacom_input_sync(i8* %339)
  %341 = load i8*, i8** @PAD_DEVICE_ID, align 8
  %342 = ptrtoint i8* %341 to i8
  %343 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %344 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 1
  store i8 %342, i8* %346, align 1
  %347 = load i8*, i8** %5, align 8
  %348 = load i64, i64* @BTN_0, align 8
  %349 = load i8*, i8** %6, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 7
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = and i32 %352, 64
  %354 = trunc i32 %353 to i8
  %355 = call i32 @wacom_report_key(i8* %347, i64 %348, i8 zeroext %354)
  %356 = load i8*, i8** %5, align 8
  %357 = load i64, i64* @BTN_4, align 8
  %358 = load i8*, i8** %6, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 7
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = and i32 %361, 128
  %363 = trunc i32 %362 to i8
  %364 = call i32 @wacom_report_key(i8* %356, i64 %357, i8 zeroext %363)
  %365 = load i8*, i8** %6, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 7
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i32
  %369 = and i32 %368, 24
  %370 = ashr i32 %369, 3
  %371 = load i8*, i8** %6, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 7
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = and i32 %374, 32
  %376 = ashr i32 %375, 3
  %377 = sub nsw i32 %370, %376
  store i32 %377, i32* %9, align 4
  %378 = load i8*, i8** %5, align 8
  %379 = load i32, i32* @REL_WHEEL, align 4
  %380 = load i32, i32* %9, align 4
  %381 = call i32 @wacom_report_rel(i8* %378, i32 %379, i32 %380)
  %382 = load i8*, i8** %5, align 8
  %383 = load i64, i64* @BTN_TOOL_FINGER, align 8
  %384 = call i32 @wacom_report_key(i8* %382, i64 %383, i8 zeroext -16)
  %385 = load i8*, i8** %5, align 8
  %386 = load i32, i32* @ABS_MISC, align 4
  %387 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %388 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %387, i32 0, i32 2
  %389 = load i8*, i8** %388, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 1
  %391 = load i8, i8* %390, align 1
  %392 = call i32 @wacom_report_abs(i8* %385, i32 %386, i8 zeroext %391)
  %393 = load i8*, i8** %5, align 8
  %394 = load i32, i32* @EV_MSC, align 4
  %395 = load i32, i32* @MSC_SERIAL, align 4
  %396 = call i32 @wacom_input_event(i8* %393, i32 %394, i32 %395, i32 240)
  br label %440

397:                                              ; preds = %331
  %398 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %399 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %398, i32 0, i32 2
  %400 = load i8*, i8** %399, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 1
  %402 = load i8, i8* %401, align 1
  %403 = icmp ne i8 %402, 0
  br i1 %403, label %404, label %439

404:                                              ; preds = %397
  %405 = load i8*, i8** %5, align 8
  %406 = call i32 @wacom_input_sync(i8* %405)
  %407 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %408 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %407, i32 0, i32 2
  %409 = load i8*, i8** %408, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 1
  store i8 0, i8* %410, align 1
  %411 = load i8*, i8** %5, align 8
  %412 = load i64, i64* @BTN_0, align 8
  %413 = load i8*, i8** %6, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 7
  %415 = load i8, i8* %414, align 1
  %416 = zext i8 %415 to i32
  %417 = and i32 %416, 64
  %418 = trunc i32 %417 to i8
  %419 = call i32 @wacom_report_key(i8* %411, i64 %412, i8 zeroext %418)
  %420 = load i8*, i8** %5, align 8
  %421 = load i64, i64* @BTN_4, align 8
  %422 = load i8*, i8** %6, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 7
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  %426 = and i32 %425, 128
  %427 = trunc i32 %426 to i8
  %428 = call i32 @wacom_report_key(i8* %420, i64 %421, i8 zeroext %427)
  %429 = load i8*, i8** %5, align 8
  %430 = load i64, i64* @BTN_TOOL_FINGER, align 8
  %431 = call i32 @wacom_report_key(i8* %429, i64 %430, i8 zeroext 0)
  %432 = load i8*, i8** %5, align 8
  %433 = load i32, i32* @ABS_MISC, align 4
  %434 = call i32 @wacom_report_abs(i8* %432, i32 %433, i8 zeroext 0)
  %435 = load i8*, i8** %5, align 8
  %436 = load i32, i32* @EV_MSC, align 4
  %437 = load i32, i32* @MSC_SERIAL, align 4
  %438 = call i32 @wacom_input_event(i8* %435, i32 %436, i32 %437, i32 240)
  br label %439

439:                                              ; preds = %404, %397
  br label %440

440:                                              ; preds = %439, %338
  br label %595

441:                                              ; preds = %325
  %442 = load i8*, i8** %6, align 8
  %443 = getelementptr inbounds i8, i8* %442, i64 7
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i32
  %446 = and i32 %445, 248
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %455, label %448

448:                                              ; preds = %441
  %449 = load i8*, i8** %6, align 8
  %450 = getelementptr inbounds i8, i8* %449, i64 8
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = and i32 %452, 255
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %524

455:                                              ; preds = %448, %441
  %456 = load i8*, i8** %5, align 8
  %457 = call i32 @wacom_input_sync(i8* %456)
  %458 = load i8*, i8** @PAD_DEVICE_ID, align 8
  %459 = ptrtoint i8* %458 to i8
  %460 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %461 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %460, i32 0, i32 2
  %462 = load i8*, i8** %461, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 1
  store i8 %459, i8* %463, align 1
  %464 = load i8*, i8** %5, align 8
  %465 = load i64, i64* @BTN_0, align 8
  %466 = load i8*, i8** %6, align 8
  %467 = getelementptr inbounds i8, i8* %466, i64 7
  %468 = load i8, i8* %467, align 1
  %469 = zext i8 %468 to i32
  %470 = and i32 %469, 8
  %471 = trunc i32 %470 to i8
  %472 = call i32 @wacom_report_key(i8* %464, i64 %465, i8 zeroext %471)
  %473 = load i8*, i8** %5, align 8
  %474 = load i64, i64* @BTN_1, align 8
  %475 = load i8*, i8** %6, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 7
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i32
  %479 = and i32 %478, 32
  %480 = trunc i32 %479 to i8
  %481 = call i32 @wacom_report_key(i8* %473, i64 %474, i8 zeroext %480)
  %482 = load i8*, i8** %5, align 8
  %483 = load i64, i64* @BTN_4, align 8
  %484 = load i8*, i8** %6, align 8
  %485 = getelementptr inbounds i8, i8* %484, i64 7
  %486 = load i8, i8* %485, align 1
  %487 = zext i8 %486 to i32
  %488 = and i32 %487, 16
  %489 = trunc i32 %488 to i8
  %490 = call i32 @wacom_report_key(i8* %482, i64 %483, i8 zeroext %489)
  %491 = load i8*, i8** %5, align 8
  %492 = load i64, i64* @BTN_5, align 8
  %493 = load i8*, i8** %6, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 7
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i32
  %497 = and i32 %496, 64
  %498 = trunc i32 %497 to i8
  %499 = call i32 @wacom_report_key(i8* %491, i64 %492, i8 zeroext %498)
  %500 = load i8*, i8** %5, align 8
  %501 = load i32, i32* @ABS_WHEEL, align 4
  %502 = load i8*, i8** %6, align 8
  %503 = getelementptr inbounds i8, i8* %502, i64 8
  %504 = load i8, i8* %503, align 1
  %505 = zext i8 %504 to i32
  %506 = and i32 %505, 127
  %507 = trunc i32 %506 to i8
  %508 = call i32 @wacom_report_abs(i8* %500, i32 %501, i8 zeroext %507)
  %509 = load i8*, i8** %5, align 8
  %510 = load i64, i64* @BTN_TOOL_FINGER, align 8
  %511 = call i32 @wacom_report_key(i8* %509, i64 %510, i8 zeroext -16)
  %512 = load i8*, i8** %5, align 8
  %513 = load i32, i32* @ABS_MISC, align 4
  %514 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %515 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %514, i32 0, i32 2
  %516 = load i8*, i8** %515, align 8
  %517 = getelementptr inbounds i8, i8* %516, i64 1
  %518 = load i8, i8* %517, align 1
  %519 = call i32 @wacom_report_abs(i8* %512, i32 %513, i8 zeroext %518)
  %520 = load i8*, i8** %5, align 8
  %521 = load i32, i32* @EV_MSC, align 4
  %522 = load i32, i32* @MSC_SERIAL, align 4
  %523 = call i32 @wacom_input_event(i8* %520, i32 %521, i32 %522, i32 240)
  br label %594

524:                                              ; preds = %448
  %525 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %526 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %525, i32 0, i32 2
  %527 = load i8*, i8** %526, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 1
  %529 = load i8, i8* %528, align 1
  %530 = icmp ne i8 %529, 0
  br i1 %530, label %531, label %593

531:                                              ; preds = %524
  %532 = load i8*, i8** %5, align 8
  %533 = call i32 @wacom_input_sync(i8* %532)
  %534 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %535 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %534, i32 0, i32 2
  %536 = load i8*, i8** %535, align 8
  %537 = getelementptr inbounds i8, i8* %536, i64 1
  store i8 0, i8* %537, align 1
  %538 = load i8*, i8** %5, align 8
  %539 = load i64, i64* @BTN_0, align 8
  %540 = load i8*, i8** %6, align 8
  %541 = getelementptr inbounds i8, i8* %540, i64 7
  %542 = load i8, i8* %541, align 1
  %543 = zext i8 %542 to i32
  %544 = and i32 %543, 8
  %545 = trunc i32 %544 to i8
  %546 = call i32 @wacom_report_key(i8* %538, i64 %539, i8 zeroext %545)
  %547 = load i8*, i8** %5, align 8
  %548 = load i64, i64* @BTN_1, align 8
  %549 = load i8*, i8** %6, align 8
  %550 = getelementptr inbounds i8, i8* %549, i64 7
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i32
  %553 = and i32 %552, 32
  %554 = trunc i32 %553 to i8
  %555 = call i32 @wacom_report_key(i8* %547, i64 %548, i8 zeroext %554)
  %556 = load i8*, i8** %5, align 8
  %557 = load i64, i64* @BTN_4, align 8
  %558 = load i8*, i8** %6, align 8
  %559 = getelementptr inbounds i8, i8* %558, i64 7
  %560 = load i8, i8* %559, align 1
  %561 = zext i8 %560 to i32
  %562 = and i32 %561, 16
  %563 = trunc i32 %562 to i8
  %564 = call i32 @wacom_report_key(i8* %556, i64 %557, i8 zeroext %563)
  %565 = load i8*, i8** %5, align 8
  %566 = load i64, i64* @BTN_5, align 8
  %567 = load i8*, i8** %6, align 8
  %568 = getelementptr inbounds i8, i8* %567, i64 7
  %569 = load i8, i8* %568, align 1
  %570 = zext i8 %569 to i32
  %571 = and i32 %570, 64
  %572 = trunc i32 %571 to i8
  %573 = call i32 @wacom_report_key(i8* %565, i64 %566, i8 zeroext %572)
  %574 = load i8*, i8** %5, align 8
  %575 = load i32, i32* @ABS_WHEEL, align 4
  %576 = load i8*, i8** %6, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 8
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i32
  %580 = and i32 %579, 127
  %581 = trunc i32 %580 to i8
  %582 = call i32 @wacom_report_abs(i8* %574, i32 %575, i8 zeroext %581)
  %583 = load i8*, i8** %5, align 8
  %584 = load i64, i64* @BTN_TOOL_FINGER, align 8
  %585 = call i32 @wacom_report_key(i8* %583, i64 %584, i8 zeroext 0)
  %586 = load i8*, i8** %5, align 8
  %587 = load i32, i32* @ABS_MISC, align 4
  %588 = call i32 @wacom_report_abs(i8* %586, i32 %587, i8 zeroext 0)
  %589 = load i8*, i8** %5, align 8
  %590 = load i32, i32* @EV_MSC, align 4
  %591 = load i32, i32* @MSC_SERIAL, align 4
  %592 = call i32 @wacom_input_event(i8* %589, i32 %590, i32 %591, i32 240)
  br label %593

593:                                              ; preds = %531, %524
  br label %594

594:                                              ; preds = %593, %455
  br label %595

595:                                              ; preds = %325, %594, %440
  store i32 1, i32* %3, align 4
  br label %596

596:                                              ; preds = %595, %18
  %597 = load i32, i32* %3, align 4
  ret i32 %597
}

declare dso_local i32 @dbg(i8*, i8 zeroext) #1

declare dso_local i32 @wacom_report_key(i8*, i64, i8 zeroext) #1

declare dso_local i32 @wacom_report_rel(i8*, i32, i32) #1

declare dso_local i32 @wacom_report_abs(i8*, i32, i8 zeroext) #1

declare dso_local i32 @wacom_le16_to_cpu(i8*) #1

declare dso_local i32 @wacom_input_sync(i8*) #1

declare dso_local i32 @wacom_input_event(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
