; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.radeon_mode_info }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.radeon_mode_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }
%union.pplib_clock_info = type { i32 }
%struct._StateArray = type { i32, i64 }
%struct._ClockInfoArray = type { i32, i32* }
%struct._NonClockInfoArray = type { i32* }
%union.power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RADEON_PM_MODE_NO_DISPLAY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @radeon_atombios_parse_power_table_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atombios_parse_power_table_6(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
  %5 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %6 = alloca %union.pplib_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.pplib_clock_info*, align 8
  %14 = alloca %struct._StateArray*, align 8
  %15 = alloca %struct._ClockInfoArray*, align 8
  %16 = alloca %struct._NonClockInfoArray*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %union.power_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 2
  store %struct.radeon_mode_info* %25, %struct.radeon_mode_info** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* @DATA, align 4
  %27 = load i32, i32* @PowerPlayInfo, align 4
  %28 = call i32 @GetIndexIntoMasterTable(i32 %26, i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @atom_parse_data_header(%struct.TYPE_14__* %31, i32 %32, i32* null, i32* %21, i32* %22, i64* %20)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %2, align 4
  br label %365

37:                                               ; preds = %1
  %38 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %39 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %20, align 8
  %44 = add nsw i64 %42, %43
  %45 = inttoptr i64 %44 to %union.power_info*
  store %union.power_info* %45, %union.power_info** %18, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = load %union.power_info*, %union.power_info** %18, align 8
  %48 = bitcast %union.power_info* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = call i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device* %46, i32* %49)
  %51 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %20, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %union.power_info*, %union.power_info** %18, align 8
  %59 = bitcast %union.power_info* %58 to %struct.TYPE_8__*
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = add nsw i64 %57, %62
  %64 = inttoptr i64 %63 to %struct._StateArray*
  store %struct._StateArray* %64, %struct._StateArray** %14, align 8
  %65 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %20, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %union.power_info*, %union.power_info** %18, align 8
  %73 = bitcast %union.power_info* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le16_to_cpu(i32 %75)
  %77 = add nsw i64 %71, %76
  %78 = inttoptr i64 %77 to %struct._ClockInfoArray*
  store %struct._ClockInfoArray* %78, %struct._ClockInfoArray** %15, align 8
  %79 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %80 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %20, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %union.power_info*, %union.power_info** %18, align 8
  %87 = bitcast %union.power_info* %86 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @le16_to_cpu(i32 %89)
  %91 = add nsw i64 %85, %90
  %92 = inttoptr i64 %91 to %struct._NonClockInfoArray*
  store %struct._NonClockInfoArray* %92, %struct._NonClockInfoArray** %16, align 8
  %93 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %94 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %37
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %2, align 4
  br label %365

99:                                               ; preds = %37
  %100 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %101 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @kzalloc(i32 %105, i32 %106)
  %108 = bitcast i8* %107 to %struct.TYPE_13__*
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %111, align 8
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = icmp ne %struct.TYPE_13__* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %2, align 4
  br label %365

119:                                              ; preds = %99
  %120 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %121 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %23, align 8
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %294, %119
  %125 = load i32, i32* %7, align 4
  %126 = load %struct._StateArray*, %struct._StateArray** %14, align 8
  %127 = getelementptr inbounds %struct._StateArray, %struct._StateArray* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %297

130:                                              ; preds = %124
  store i32 0, i32* %12, align 4
  %131 = load i32*, i32** %23, align 8
  %132 = bitcast i32* %131 to %union.pplib_power_state*
  store %union.pplib_power_state* %132, %union.pplib_power_state** %6, align 8
  %133 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %134 = bitcast %union.pplib_power_state* %133 to %struct.TYPE_10__*
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %9, align 4
  %137 = load %struct._NonClockInfoArray*, %struct._NonClockInfoArray** %16, align 8
  %138 = getelementptr inbounds %struct._NonClockInfoArray, %struct._NonClockInfoArray* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = bitcast i32* %142 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %143, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %144 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %145 = bitcast %union.pplib_power_state* %144 to %struct.TYPE_10__*
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %130
  %150 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %151 = bitcast %union.pplib_power_state* %150 to %struct.TYPE_10__*
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  br label %155

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154, %149
  %156 = phi i32 [ %153, %149 ], [ 1, %154 ]
  %157 = sext i32 %156 to i64
  %158 = mul i64 4, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i8* @kzalloc(i32 %159, i32 %160)
  %162 = bitcast i8* %161 to %struct.TYPE_12__*
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store %struct.TYPE_12__* %162, %struct.TYPE_12__** %170, align 8
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = icmp ne %struct.TYPE_12__* %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %155
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %2, align 4
  br label %365

183:                                              ; preds = %155
  %184 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %185 = bitcast %union.pplib_power_state* %184 to %struct.TYPE_10__*
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %232

189:                                              ; preds = %183
  store i32 0, i32* %8, align 4
  br label %190

190:                                              ; preds = %228, %189
  %191 = load i32, i32* %8, align 4
  %192 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %193 = bitcast %union.pplib_power_state* %192 to %struct.TYPE_10__*
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %191, %195
  br i1 %196, label %197, label %231

197:                                              ; preds = %190
  %198 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %199 = bitcast %union.pplib_power_state* %198 to %struct.TYPE_10__*
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %10, align 4
  %206 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %15, align 8
  %207 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load %struct._ClockInfoArray*, %struct._ClockInfoArray** %15, align 8
  %211 = getelementptr inbounds %struct._ClockInfoArray, %struct._ClockInfoArray* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %209, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = bitcast i32* %215 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %216, %union.pplib_clock_info** %13, align 8
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load %union.pplib_clock_info*, %union.pplib_clock_info** %13, align 8
  %221 = call i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device* %217, i32 %218, i32 %219, %union.pplib_clock_info* %220)
  store i32 %221, i32* %17, align 4
  %222 = load i32, i32* %17, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %197
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %224, %197
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %190

231:                                              ; preds = %190
  br label %265

232:                                              ; preds = %183
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  store i32 %236, i32* %247, align 4
  %248 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %254, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  store i32 %251, i32* %262, align 4
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %265

265:                                              ; preds = %232, %231
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %268 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  store i32 %266, i32* %274, align 8
  %275 = load i32, i32* %12, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %265
  %278 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %282 = call i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device* %278, i32 %279, i32 %280, %struct._ATOM_PPLIB_NONCLOCK_INFO* %281)
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %11, align 4
  br label %285

285:                                              ; preds = %277, %265
  %286 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %287 = bitcast %union.pplib_power_state* %286 to %struct.TYPE_10__*
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 2, %289
  %291 = load i32*, i32** %23, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %23, align 8
  br label %294

294:                                              ; preds = %285
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %7, align 4
  br label %124

297:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %298

298:                                              ; preds = %329, %297
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* %11, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %332

302:                                              ; preds = %298
  %303 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %304 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %305, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp sgt i32 %311, 1
  br i1 %312, label %313, label %328

313:                                              ; preds = %302
  %314 = load i32, i32* @RADEON_PM_MODE_NO_DISPLAY, align 4
  %315 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %316 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i64 0
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %314
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %313, %302
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %7, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %7, align 4
  br label %298

332:                                              ; preds = %298
  %333 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %363

338:                                              ; preds = %332
  %339 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %340 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i64 0
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 3
  store i32 %339, i32* %345, align 8
  %346 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %347 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 0
  store i32 0, i32* %348, align 8
  %349 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %350 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i64 0
  %357 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %358 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 1
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i64 0
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 2
  store %struct.TYPE_12__* %356, %struct.TYPE_12__** %362, align 8
  br label %363

363:                                              ; preds = %338, %332
  %364 = load i32, i32* %11, align 4
  store i32 %364, i32* %2, align 4
  br label %365

365:                                              ; preds = %363, %181, %117, %97, %35
  %366 = load i32, i32* %2, align 4
  ret i32 %366
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device*, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device*, i32, i32, %union.pplib_clock_info*) #1

declare dso_local i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device*, i32, i32, %struct._ATOM_PPLIB_NONCLOCK_INFO*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
