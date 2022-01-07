; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_4_5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_4_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.radeon_mode_info }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.radeon_mode_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%union.pplib_clock_info = type { i32 }
%union.power_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RADEON_PM_MODE_NO_DISPLAY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @radeon_atombios_parse_power_table_4_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atombios_parse_power_table_4_5(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
  %5 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %6 = alloca %union.pplib_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.pplib_clock_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.power_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 2
  store %struct.radeon_mode_info* %19, %struct.radeon_mode_info** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @DATA, align 4
  %21 = load i32, i32* @PowerPlayInfo, align 4
  %22 = call i32 @GetIndexIntoMasterTable(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @atom_parse_data_header(%struct.TYPE_14__* %25, i32 %26, i32* null, i32* %16, i32* %17, i64* %15)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %356

31:                                               ; preds = %1
  %32 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %15, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to %union.power_info*
  store %union.power_info* %39, %union.power_info** %13, align 8
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load %union.power_info*, %union.power_info** %13, align 8
  %42 = bitcast %union.power_info* %41 to %struct.TYPE_9__*
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 7
  %44 = call i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device* %40, i32* %43)
  %45 = load %union.power_info*, %union.power_info** %13, align 8
  %46 = bitcast %union.power_info* %45 to %struct.TYPE_9__*
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %356

52:                                               ; preds = %31
  %53 = load %union.power_info*, %union.power_info** %13, align 8
  %54 = bitcast %union.power_info* %53 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kzalloc(i32 %59, i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_12__*
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %65, align 8
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %2, align 4
  br label %356

73:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %285, %73
  %75 = load i32, i32* %7, align 4
  %76 = load %union.power_info*, %union.power_info** %13, align 8
  %77 = bitcast %union.power_info* %76 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %288

81:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  %82 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %83 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %union.power_info*, %union.power_info** %13, align 8
  %90 = bitcast %union.power_info* %89 to %struct.TYPE_9__*
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le16_to_cpu(i32 %92)
  %94 = add nsw i64 %88, %93
  %95 = load i32, i32* %7, align 4
  %96 = load %union.power_info*, %union.power_info** %13, align 8
  %97 = bitcast %union.power_info* %96 to %struct.TYPE_9__*
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %95, %99
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %94, %101
  %103 = inttoptr i64 %102 to %union.pplib_power_state*
  store %union.pplib_power_state* %103, %union.pplib_power_state** %6, align 8
  %104 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %105 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %union.power_info*, %union.power_info** %13, align 8
  %112 = bitcast %union.power_info* %111 to %struct.TYPE_9__*
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le16_to_cpu(i32 %114)
  %116 = add nsw i64 %110, %115
  %117 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %118 = bitcast %union.pplib_power_state* %117 to %struct.TYPE_8__*
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %union.power_info*, %union.power_info** %13, align 8
  %122 = bitcast %union.power_info* %121 to %struct.TYPE_9__*
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %120, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %116, %126
  %128 = inttoptr i64 %127 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %128, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %129 = load %union.power_info*, %union.power_info** %13, align 8
  %130 = bitcast %union.power_info* %129 to %struct.TYPE_9__*
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %81
  %136 = load %union.power_info*, %union.power_info** %13, align 8
  %137 = bitcast %union.power_info* %136 to %struct.TYPE_9__*
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  br label %142

141:                                              ; preds = %81
  br label %142

142:                                              ; preds = %141, %135
  %143 = phi i32 [ %140, %135 ], [ 1, %141 ]
  %144 = sext i32 %143 to i64
  %145 = mul i64 4, %144
  %146 = trunc i64 %145 to i32
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kzalloc(i32 %146, i32 %147)
  %149 = bitcast i8* %148 to %struct.TYPE_11__*
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %157, align 8
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = icmp ne %struct.TYPE_11__* %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %142
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %2, align 4
  br label %356

170:                                              ; preds = %142
  %171 = load %union.power_info*, %union.power_info** %13, align 8
  %172 = bitcast %union.power_info* %171 to %struct.TYPE_9__*
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %231

177:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %227, %177
  %179 = load i32, i32* %8, align 4
  %180 = load %union.power_info*, %union.power_info** %13, align 8
  %181 = bitcast %union.power_info* %180 to %struct.TYPE_9__*
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp slt i32 %179, %184
  br i1 %185, label %186, label %230

186:                                              ; preds = %178
  %187 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %188 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %187, i32 0, i32 0
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %15, align 8
  %193 = add nsw i64 %191, %192
  %194 = load %union.power_info*, %union.power_info** %13, align 8
  %195 = bitcast %union.power_info* %194 to %struct.TYPE_9__*
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @le16_to_cpu(i32 %197)
  %199 = add nsw i64 %193, %198
  %200 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %201 = bitcast %union.pplib_power_state* %200 to %struct.TYPE_8__*
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %union.power_info*, %union.power_info** %13, align 8
  %209 = bitcast %union.power_info* %208 to %struct.TYPE_9__*
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %207, %211
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %199, %213
  %215 = inttoptr i64 %214 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %215, %union.pplib_clock_info** %11, align 8
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load %union.pplib_clock_info*, %union.pplib_clock_info** %11, align 8
  %220 = call i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device* %216, i32 %217, i32 %218, %union.pplib_clock_info* %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %186
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %223, %186
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %178

230:                                              ; preds = %178
  br label %264

231:                                              ; preds = %170
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  store i32 %235, i32* %246, align 4
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %252 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  store i32 %250, i32* %261, align 4
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %10, align 4
  br label %264

264:                                              ; preds = %231, %230
  %265 = load i32, i32* %10, align 4
  %266 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  store i32 %265, i32* %273, align 8
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %264
  %277 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %281 = call i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device* %277, i32 %278, i32 %279, %struct._ATOM_PPLIB_NONCLOCK_INFO* %280)
  %282 = load i32, i32* %9, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %284

284:                                              ; preds = %276, %264
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %7, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %7, align 4
  br label %74

288:                                              ; preds = %74
  store i32 0, i32* %7, align 4
  br label %289

289:                                              ; preds = %320, %288
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %9, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %323

293:                                              ; preds = %289
  %294 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %295 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp sgt i32 %302, 1
  br i1 %303, label %304, label %319

304:                                              ; preds = %293
  %305 = load i32, i32* @RADEON_PM_MODE_NO_DISPLAY, align 4
  %306 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %307 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %305
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %304, %293
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %7, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %7, align 4
  br label %289

323:                                              ; preds = %289
  %324 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %325 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, -1
  br i1 %328, label %329, label %354

329:                                              ; preds = %323
  %330 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %331 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %332 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i64 0
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 3
  store i32 %330, i32* %336, align 8
  %337 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %338 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 0
  store i32 0, i32* %339, align 8
  %340 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i64 0
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i64 0
  %348 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %349 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i64 0
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 2
  store %struct.TYPE_11__* %347, %struct.TYPE_11__** %353, align 8
  br label %354

354:                                              ; preds = %329, %323
  %355 = load i32, i32* %9, align 4
  store i32 %355, i32* %2, align 4
  br label %356

356:                                              ; preds = %354, %168, %71, %50, %29
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device*, i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device*, i32, i32, %union.pplib_clock_info*) #1

declare dso_local i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device*, i32, i32, %struct._ATOM_PPLIB_NONCLOCK_INFO*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
