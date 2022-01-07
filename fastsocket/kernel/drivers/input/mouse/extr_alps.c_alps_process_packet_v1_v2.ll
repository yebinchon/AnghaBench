; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_packet_v1_v2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_packet_v1_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { i64, i32, i32, %struct.input_dev* }

@ALPS_PROTO_V1 = common dso_local global i64 0, align 8
@ALPS_FW_BK_1 = common dso_local global i32 0, align 4
@ALPS_FW_BK_2 = common dso_local global i32 0, align 4
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ALPS_WHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@ALPS_FOUR_BUTTONS = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_packet_v1_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_packet_v1_v2(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 2
  %19 = load %struct.alps_data*, %struct.alps_data** %18, align 8
  store %struct.alps_data* %19, %struct.alps_data** %3, align 8
  %20 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  %23 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 1
  %25 = load %struct.input_dev*, %struct.input_dev** %24, align 8
  store %struct.input_dev* %25, %struct.input_dev** %5, align 8
  %26 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %27 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %26, i32 0, i32 3
  %28 = load %struct.input_dev*, %struct.input_dev** %27, align 8
  store %struct.input_dev* %28, %struct.input_dev** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %30 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ALPS_PROTO_V1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 16
  store i32 %39, i32* %12, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 8
  store i32 %44, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 7
  %54 = shl i32 %53, 7
  %55 = or i32 %48, %54
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 7
  %65 = shl i32 %64, 7
  %66 = or i32 %59, %65
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 5
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %113

71:                                               ; preds = %1
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 2
  store i32 %81, i32* %13, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 4
  store i32 %86, i32* %14, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 120
  %96 = shl i32 %95, 4
  %97 = or i32 %90, %96
  store i32 %97, i32* %7, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 112
  %107 = shl i32 %106, 3
  %108 = or i32 %101, %107
  store i32 %108, i32* %8, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %71, %34
  %114 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %115 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ALPS_FW_BK_1, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 16
  store i32 %125, i32* %15, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 4
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %120, %113
  %132 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %133 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ALPS_FW_BK_2, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %131
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 4
  store i32 %143, i32* %15, align 4
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 2
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %151, %138
  %155 = phi i1 [ false, %138 ], [ %153, %151 ]
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %14, align 4
  br i1 %155, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %158

158:                                              ; preds = %157, %154
  br label %159

159:                                              ; preds = %158, %131
  %160 = load i8*, i8** %4, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 1
  store i32 %164, i32* %10, align 4
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 2
  store i32 %169, i32* %11, align 4
  %170 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %171 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ALPS_DUALPOINT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %216

176:                                              ; preds = %159
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %177, 127
  br i1 %178, label %179, label %216

179:                                              ; preds = %176
  %180 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %181 = load i32, i32* @REL_X, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp sgt i32 %182, 383
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 %185, 768
  br label %189

187:                                              ; preds = %179
  %188 = load i32, i32* %7, align 4
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i32 [ %186, %184 ], [ %188, %187 ]
  %191 = trunc i32 %190 to i8
  %192 = call i32 @input_report_rel(%struct.input_dev* %180, i32 %181, i8 zeroext %191)
  %193 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %194 = load i32, i32* @REL_Y, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp sgt i32 %195, 255
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 %198, 512
  br label %202

200:                                              ; preds = %189
  %201 = load i32, i32* %8, align 4
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %199, %197 ], [ %201, %200 ]
  %204 = sub nsw i32 0, %203
  %205 = trunc i32 %204 to i8
  %206 = call i32 @input_report_rel(%struct.input_dev* %193, i32 %194, i8 zeroext %205)
  %207 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %208 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %209 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @alps_report_buttons(%struct.psmouse* %207, %struct.input_dev* %208, %struct.input_dev* %209, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %215 = call i32 @input_sync(%struct.input_dev* %214)
  br label %390

216:                                              ; preds = %176, %159
  %217 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %218 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %219 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @alps_report_buttons(%struct.psmouse* %217, %struct.input_dev* %218, %struct.input_dev* %219, i32 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %216
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  store i32 40, i32* %9, align 4
  br label %230

230:                                              ; preds = %229, %226, %216
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %258

233:                                              ; preds = %230
  %234 = load i32, i32* %11, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %258

236:                                              ; preds = %233
  %237 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %238 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %258, label %241

241:                                              ; preds = %236
  %242 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %243 = load i32, i32* @ABS_X, align 4
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @input_report_abs(%struct.input_dev* %242, i32 %243, i32 %244)
  %246 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %247 = load i32, i32* @ABS_Y, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @input_report_abs(%struct.input_dev* %246, i32 %247, i32 %248)
  %250 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %251 = load i32, i32* @ABS_PRESSURE, align 4
  %252 = call i32 @input_report_abs(%struct.input_dev* %250, i32 %251, i32 0)
  %253 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %254 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %255 = call i32 @input_report_key(%struct.input_dev* %253, i32 %254, i8 zeroext 0)
  %256 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %257 = call i32 @input_sync(%struct.input_dev* %256)
  br label %258

258:                                              ; preds = %241, %236, %233, %230
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %261 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp sgt i32 %262, 30
  br i1 %263, label %264, label %268

264:                                              ; preds = %258
  %265 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %266 = load i32, i32* @BTN_TOUCH, align 4
  %267 = call i32 @input_report_key(%struct.input_dev* %265, i32 %266, i8 zeroext 1)
  br label %268

268:                                              ; preds = %264, %258
  %269 = load i32, i32* %9, align 4
  %270 = icmp slt i32 %269, 25
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %273 = load i32, i32* @BTN_TOUCH, align 4
  %274 = call i32 @input_report_key(%struct.input_dev* %272, i32 %273, i8 zeroext 0)
  br label %275

275:                                              ; preds = %271, %268
  %276 = load i32, i32* %9, align 4
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %275
  %279 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %280 = load i32, i32* @ABS_X, align 4
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @input_report_abs(%struct.input_dev* %279, i32 %280, i32 %281)
  %283 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %284 = load i32, i32* @ABS_Y, align 4
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @input_report_abs(%struct.input_dev* %283, i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %278, %275
  %288 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %289 = load i32, i32* @ABS_PRESSURE, align 4
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @input_report_abs(%struct.input_dev* %288, i32 %289, i32 %290)
  %292 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %293 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp sgt i32 %294, 0
  %296 = zext i1 %295 to i32
  %297 = trunc i32 %296 to i8
  %298 = call i32 @input_report_key(%struct.input_dev* %292, i32 %293, i8 zeroext %297)
  %299 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %300 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @ALPS_WHEEL, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %323

305:                                              ; preds = %287
  %306 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %307 = load i32, i32* @REL_WHEEL, align 4
  %308 = load i8*, i8** %4, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 2
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = shl i32 %311, 1
  %313 = and i32 %312, 8
  %314 = load i8*, i8** %4, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 0
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = ashr i32 %317, 4
  %319 = and i32 %318, 7
  %320 = sub nsw i32 %313, %319
  %321 = trunc i32 %320 to i8
  %322 = call i32 @input_report_rel(%struct.input_dev* %306, i32 %307, i8 zeroext %321)
  br label %323

323:                                              ; preds = %305, %287
  %324 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %325 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @ALPS_FW_BK_1, align 4
  %328 = load i32, i32* @ALPS_FW_BK_2, align 4
  %329 = or i32 %327, %328
  %330 = and i32 %326, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %323
  %333 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %334 = load i32, i32* @BTN_FORWARD, align 4
  %335 = load i32, i32* %16, align 4
  %336 = trunc i32 %335 to i8
  %337 = call i32 @input_report_key(%struct.input_dev* %333, i32 %334, i8 zeroext %336)
  %338 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %339 = load i32, i32* @BTN_BACK, align 4
  %340 = load i32, i32* %15, align 4
  %341 = trunc i32 %340 to i8
  %342 = call i32 @input_report_key(%struct.input_dev* %338, i32 %339, i8 zeroext %341)
  br label %343

343:                                              ; preds = %332, %323
  %344 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %345 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @ALPS_FOUR_BUTTONS, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %387

350:                                              ; preds = %343
  %351 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %352 = load i32, i32* @BTN_0, align 4
  %353 = load i8*, i8** %4, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 2
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = and i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = call i32 @input_report_key(%struct.input_dev* %351, i32 %352, i8 zeroext %358)
  %360 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %361 = load i32, i32* @BTN_1, align 4
  %362 = load i8*, i8** %4, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 0
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = and i32 %365, 16
  %367 = trunc i32 %366 to i8
  %368 = call i32 @input_report_key(%struct.input_dev* %360, i32 %361, i8 zeroext %367)
  %369 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %370 = load i32, i32* @BTN_2, align 4
  %371 = load i8*, i8** %4, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 3
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = and i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = call i32 @input_report_key(%struct.input_dev* %369, i32 %370, i8 zeroext %376)
  %378 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %379 = load i32, i32* @BTN_3, align 4
  %380 = load i8*, i8** %4, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 0
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = and i32 %383, 32
  %385 = trunc i32 %384 to i8
  %386 = call i32 @input_report_key(%struct.input_dev* %378, i32 %379, i8 zeroext %385)
  br label %387

387:                                              ; preds = %350, %343
  %388 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %389 = call i32 @input_sync(%struct.input_dev* %388)
  br label %390

390:                                              ; preds = %387, %202
  ret void
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @alps_report_buttons(%struct.psmouse*, %struct.input_dev*, %struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
