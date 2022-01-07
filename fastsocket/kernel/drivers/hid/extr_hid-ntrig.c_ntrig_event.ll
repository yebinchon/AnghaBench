; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ntrig.c_ntrig_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ntrig.c_ntrig_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, {}* }
%struct.hid_field = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i32 }
%struct.ntrig_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @ntrig_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntrig_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca %struct.ntrig_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %13 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %10, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = call %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.ntrig_data* %18, %struct.ntrig_data** %11, align 8
  %19 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %276

25:                                               ; preds = %4
  %26 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %274 [
    i32 133, label %29
    i32 132, label %48
    i32 129, label %52
    i32 128, label %58
    i32 135, label %62
    i32 130, label %68
    i32 134, label %72
    i32 131, label %113
    i32 -16777214, label %174
  ]

29:                                               ; preds = %25
  %30 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %31 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %40 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %46 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %35
  store i32 0, i32* %5, align 4
  br label %300

48:                                               ; preds = %25
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %51 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %300

52:                                               ; preds = %25
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %55 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %57 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %56, i32 0, i32 4
  store i32 1, i32* %57, align 4
  br label %275

58:                                               ; preds = %25
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %61 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  br label %275

62:                                               ; preds = %25
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %65 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %67 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %66, i32 0, i32 7
  store i32 1, i32* %67, align 4
  br label %275

68:                                               ; preds = %25
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %71 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  br label %275

72:                                               ; preds = %25
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %75 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %77 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %112, label %80

80:                                               ; preds = %72
  %81 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %82 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %87 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %92 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %93 = call i32 @input_report_key(%struct.input_dev* %91, i32 %92, i32 0)
  %94 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %95 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %96 = call i32 @input_report_key(%struct.input_dev* %94, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %90, %85, %80
  %98 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %99 = load i32, i32* @EV_ABS, align 4
  %100 = load i32, i32* @ABS_X, align 4
  %101 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %102 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @input_event(%struct.input_dev* %98, i32 %99, i32 %100, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %106 = load i32, i32* @EV_ABS, align 4
  %107 = load i32, i32* @ABS_Y, align 4
  %108 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %109 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @input_event(%struct.input_dev* %105, i32 %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %97, %72
  br label %275

113:                                              ; preds = %25
  %114 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %115 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %173, label %118

118:                                              ; preds = %113
  %119 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %120 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %153

123:                                              ; preds = %118
  %124 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %125 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %123
  %129 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %130 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %131 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %138

136:                                              ; preds = %128
  %137 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i32 @input_report_key(%struct.input_dev* %129, i32 %139, i32 0)
  %141 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %142 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %143 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = call i32 @input_report_key(%struct.input_dev* %141, i32 %151, i32 1)
  br label %153

153:                                              ; preds = %150, %123, %118
  %154 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %155 = load i32, i32* @EV_ABS, align 4
  %156 = load i32, i32* @ABS_X, align 4
  %157 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %158 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @input_event(%struct.input_dev* %154, i32 %155, i32 %156, i32 %159)
  %161 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %162 = load i32, i32* @EV_ABS, align 4
  %163 = load i32, i32* @ABS_Y, align 4
  %164 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %165 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @input_event(%struct.input_dev* %161, i32 %162, i32 %163, i32 %166)
  %168 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %169 = load i32, i32* @EV_ABS, align 4
  %170 = load i32, i32* @ABS_PRESSURE, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @input_event(%struct.input_dev* %168, i32 %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %153, %113
  br label %275

174:                                              ; preds = %25
  %175 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %176 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %179, %174
  br label %275

183:                                              ; preds = %179
  %184 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %185 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %183
  %189 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %190 = load i32, i32* @EV_ABS, align 4
  %191 = load i32, i32* @ABS_X, align 4
  %192 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %193 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @input_event(%struct.input_dev* %189, i32 %190, i32 %191, i32 %194)
  %196 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %197 = load i32, i32* @EV_ABS, align 4
  %198 = load i32, i32* @ABS_Y, align 4
  %199 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %200 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @input_event(%struct.input_dev* %196, i32 %197, i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %188, %183
  %204 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %205 = load i32, i32* @EV_ABS, align 4
  %206 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %207 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %208 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @input_event(%struct.input_dev* %204, i32 %205, i32 %206, i32 %209)
  %211 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %212 = load i32, i32* @EV_ABS, align 4
  %213 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %214 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %215 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @input_event(%struct.input_dev* %211, i32 %212, i32 %213, i32 %216)
  %218 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %219 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %222 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %220, %223
  br i1 %224, label %225, label %244

225:                                              ; preds = %203
  %226 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %227 = load i32, i32* @EV_ABS, align 4
  %228 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %229 = call i32 @input_event(%struct.input_dev* %226, i32 %227, i32 %228, i32 1)
  %230 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %231 = load i32, i32* @EV_ABS, align 4
  %232 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %233 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %234 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @input_event(%struct.input_dev* %230, i32 %231, i32 %232, i32 %235)
  %237 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %238 = load i32, i32* @EV_ABS, align 4
  %239 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %240 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %241 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @input_event(%struct.input_dev* %237, i32 %238, i32 %239, i32 %242)
  br label %263

244:                                              ; preds = %203
  %245 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %246 = load i32, i32* @EV_ABS, align 4
  %247 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %248 = call i32 @input_event(%struct.input_dev* %245, i32 %246, i32 %247, i32 0)
  %249 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %250 = load i32, i32* @EV_ABS, align 4
  %251 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %252 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %253 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @input_event(%struct.input_dev* %249, i32 %250, i32 %251, i32 %254)
  %256 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %257 = load i32, i32* @EV_ABS, align 4
  %258 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %259 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %260 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @input_event(%struct.input_dev* %256, i32 %257, i32 %258, i32 %261)
  br label %263

263:                                              ; preds = %244, %225
  %264 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %265 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %264, i32 0, i32 1
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = load %struct.input_dev*, %struct.input_dev** %267, align 8
  %269 = call i32 @input_mt_sync(%struct.input_dev* %268)
  %270 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %271 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %270, i32 0, i32 4
  store i32 0, i32* %271, align 4
  %272 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %273 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %272, i32 0, i32 7
  store i32 0, i32* %273, align 4
  br label %275

274:                                              ; preds = %25
  store i32 0, i32* %5, align 4
  br label %300

275:                                              ; preds = %263, %182, %173, %112, %68, %62, %58, %52
  br label %276

276:                                              ; preds = %275, %4
  %277 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %278 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %276
  %284 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %285 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %284, i32 0, i32 1
  %286 = bitcast {}** %285 to i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)**
  %287 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %286, align 8
  %288 = icmp ne i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* %287, null
  br i1 %288, label %289, label %299

289:                                              ; preds = %283
  %290 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %291 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %290, i32 0, i32 1
  %292 = bitcast {}** %291 to i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)**
  %293 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %292, align 8
  %294 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %295 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %296 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %297 = load i32, i32* %9, align 4
  %298 = call i32 %293(%struct.hid_device* %294, %struct.hid_field* %295, %struct.hid_usage* %296, i32 %297)
  br label %299

299:                                              ; preds = %289, %283, %276
  store i32 1, i32* %5, align 4
  br label %300

300:                                              ; preds = %299, %274, %48, %47
  %301 = load i32, i32* %5, align 4
  ret i32 %301
}

declare dso_local %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_mt_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
