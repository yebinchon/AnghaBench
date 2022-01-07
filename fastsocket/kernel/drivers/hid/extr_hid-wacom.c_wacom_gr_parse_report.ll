; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_gr_parse_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_gr_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.wacom_data = type { i32, i32 }
%struct.input_dev = type { i8* }

@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.wacom_data*, %struct.input_dev*, i8*)* @wacom_gr_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_gr_parse_report(%struct.hid_device* %0, %struct.wacom_data* %1, %struct.input_dev* %2, i8* %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.wacom_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.wacom_data* %1, %struct.wacom_data** %6, align 8
  store %struct.input_dev* %2, %struct.input_dev** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 144
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = ashr i32 %33, 5
  %35 = and i32 %34, 3
  switch i32 %35, label %42 [
    i32 0, label %36
    i32 1, label %38
    i32 2, label %40
    i32 3, label %40
  ]

36:                                               ; preds = %29
  %37 = load i32, i32* @BTN_TOOL_PEN, align 4
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  store i32 %39, i32* %9, align 4
  br label %42

40:                                               ; preds = %29, %29
  %41 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %29, %40, %38, %36
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 16
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %4
  %52 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %53 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %51
  %58 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %59 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %108

62:                                               ; preds = %57
  %63 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %64 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = load i32, i32* @BTN_LEFT, align 4
  %71 = call i32 @input_report_key(%struct.input_dev* %69, i32 %70, i32 0)
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = load i32, i32* @BTN_RIGHT, align 4
  %74 = call i32 @input_report_key(%struct.input_dev* %72, i32 %73, i32 0)
  %75 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %76 = load i32, i32* @BTN_MIDDLE, align 4
  %77 = call i32 @input_report_key(%struct.input_dev* %75, i32 %76, i32 0)
  %78 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %79 = load i64, i64* @ABS_DISTANCE, align 8
  %80 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* @ABS_DISTANCE, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @input_report_abs(%struct.input_dev* %78, i64 %79, i8 zeroext %85)
  br label %100

87:                                               ; preds = %62
  %88 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %89 = load i32, i32* @BTN_TOUCH, align 4
  %90 = call i32 @input_report_key(%struct.input_dev* %88, i32 %89, i32 0)
  %91 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %92 = load i32, i32* @BTN_STYLUS, align 4
  %93 = call i32 @input_report_key(%struct.input_dev* %91, i32 %92, i32 0)
  %94 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %95 = load i32, i32* @BTN_STYLUS2, align 4
  %96 = call i32 @input_report_key(%struct.input_dev* %94, i32 %95, i32 0)
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = load i64, i64* @ABS_PRESSURE, align 8
  %99 = call i32 @input_report_abs(%struct.input_dev* %97, i64 %98, i8 zeroext 0)
  br label %100

100:                                              ; preds = %87, %68
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %103 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @input_report_key(%struct.input_dev* %101, i32 %104, i32 0)
  %106 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %107 = call i32 @input_sync(%struct.input_dev* %106)
  br label %108

108:                                              ; preds = %100, %57
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %111 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @input_report_key(%struct.input_dev* %115, i32 %116, i32 1)
  br label %118

118:                                              ; preds = %114, %108
  br label %119

119:                                              ; preds = %118, %51
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %258

122:                                              ; preds = %119
  %123 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %124 = load i64, i64* @ABS_X, align 8
  %125 = load i32, i32* %10, align 4
  %126 = trunc i32 %125 to i8
  %127 = call i32 @input_report_abs(%struct.input_dev* %123, i64 %124, i8 zeroext %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %129 = load i64, i64* @ABS_Y, align 8
  %130 = load i32, i32* %11, align 4
  %131 = trunc i32 %130 to i8
  %132 = call i32 @input_report_abs(%struct.input_dev* %128, i64 %129, i8 zeroext %131)
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = ashr i32 %136, 5
  %138 = and i32 %137, 3
  switch i32 %138, label %207 [
    i32 2, label %139
    i32 3, label %170
  ]

139:                                              ; preds = %122
  %140 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %141 = load i32, i32* @BTN_MIDDLE, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %145, 4
  %147 = call i32 @input_report_key(%struct.input_dev* %140, i32 %141, i32 %146)
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 6
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %139
  br label %164

155:                                              ; preds = %139
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 6
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, 2
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  br label %164

164:                                              ; preds = %155, %154
  %165 = phi i32 [ -1, %154 ], [ %163, %155 ]
  store i32 %165, i32* %12, align 4
  %166 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %167 = load i32, i32* @REL_WHEEL, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @input_report_rel(%struct.input_dev* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %122, %164
  %171 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %172 = load i32, i32* @BTN_LEFT, align 4
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 1
  %178 = call i32 @input_report_key(%struct.input_dev* %171, i32 %172, i32 %177)
  %179 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %180 = load i32, i32* @BTN_RIGHT, align 4
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 2
  %186 = call i32 @input_report_key(%struct.input_dev* %179, i32 %180, i32 %185)
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 6
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = ashr i32 %190, 2
  %192 = sub nsw i32 44, %191
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %170
  store i32 0, i32* %12, align 4
  br label %201

196:                                              ; preds = %170
  %197 = load i32, i32* %12, align 4
  %198 = icmp sgt i32 %197, 31
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 31, i32* %12, align 4
  br label %200

200:                                              ; preds = %199, %196
  br label %201

201:                                              ; preds = %200, %195
  %202 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %203 = load i64, i64* @ABS_DISTANCE, align 8
  %204 = load i32, i32* %12, align 4
  %205 = trunc i32 %204 to i8
  %206 = call i32 @input_report_abs(%struct.input_dev* %202, i64 %203, i8 zeroext %205)
  br label %255

207:                                              ; preds = %122
  %208 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %209 = load i64, i64* @ABS_PRESSURE, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 6
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = and i32 %217, 8
  %219 = shl i32 %218, 5
  %220 = or i32 %213, %219
  %221 = trunc i32 %220 to i8
  %222 = call i32 @input_report_abs(%struct.input_dev* %208, i64 %209, i8 zeroext %221)
  %223 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %224 = load i32, i32* @BTN_TOUCH, align 4
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 1
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %228, 1
  %230 = call i32 @input_report_key(%struct.input_dev* %223, i32 %224, i32 %229)
  %231 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %232 = load i32, i32* @BTN_STYLUS, align 4
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 2
  %238 = call i32 @input_report_key(%struct.input_dev* %231, i32 %232, i32 %237)
  %239 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %240 = load i32, i32* @BTN_STYLUS2, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @BTN_TOOL_PEN, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %207
  %245 = load i8*, i8** %8, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 %248, 4
  %250 = icmp ne i32 %249, 0
  br label %251

251:                                              ; preds = %244, %207
  %252 = phi i1 [ false, %207 ], [ %250, %244 ]
  %253 = zext i1 %252 to i32
  %254 = call i32 @input_report_key(%struct.input_dev* %239, i32 %240, i32 %253)
  br label %255

255:                                              ; preds = %251, %201
  %256 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %257 = call i32 @input_sync(%struct.input_dev* %256)
  br label %258

258:                                              ; preds = %255, %119
  %259 = load i8*, i8** %8, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 7
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 %262, 3
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %266 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %264, %267
  br i1 %268, label %269, label %292

269:                                              ; preds = %258
  %270 = load i32, i32* %12, align 4
  %271 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %272 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %274 = load i32, i32* @BTN_0, align 4
  %275 = load i32, i32* %12, align 4
  %276 = and i32 %275, 2
  %277 = call i32 @input_report_key(%struct.input_dev* %273, i32 %274, i32 %276)
  %278 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %279 = load i32, i32* @BTN_1, align 4
  %280 = load i32, i32* %12, align 4
  %281 = and i32 %280, 1
  %282 = call i32 @input_report_key(%struct.input_dev* %278, i32 %279, i32 %281)
  %283 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %284 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %285 = call i32 @input_report_key(%struct.input_dev* %283, i32 %284, i32 240)
  %286 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %287 = load i32, i32* @EV_MSC, align 4
  %288 = load i32, i32* @MSC_SERIAL, align 4
  %289 = call i32 @input_event(%struct.input_dev* %286, i32 %287, i32 %288, i32 240)
  %290 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %291 = call i32 @input_sync(%struct.input_dev* %290)
  br label %292

292:                                              ; preds = %269, %258
  ret i32 1
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i64, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
