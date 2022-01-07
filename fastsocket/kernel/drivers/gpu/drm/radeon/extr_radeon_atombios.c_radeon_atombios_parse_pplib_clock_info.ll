; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i8*, i8* }
%union.pplib_clock_info = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CHIP_PALM = common dso_local global i64 0, align 8
@VOLTAGE_SW = common dso_local global i8* null, align 8
@VOLTAGE_TYPE_VDDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %union.pplib_clock_info*)* @radeon_atombios_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device* %0, i32 %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.pplib_clock_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %9, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RADEON_IS_IGP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_PALM, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %27 = bitcast %union.pplib_clock_info* %26 to %struct.TYPE_11__*
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le16_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %33 = bitcast %union.pplib_clock_info* %32 to %struct.TYPE_11__*
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i32 %39, i32* %52, align 8
  br label %81

53:                                               ; preds = %19
  %54 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %55 = bitcast %union.pplib_clock_info* %54 to %struct.TYPE_12__*
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %61 = bitcast %union.pplib_clock_info* %60 to %struct.TYPE_12__*
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 %67, i32* %80, align 8
  br label %81

81:                                               ; preds = %53, %25
  br label %400

82:                                               ; preds = %4
  %83 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %84 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %195

86:                                               ; preds = %82
  %87 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %88 = bitcast %union.pplib_clock_info* %87 to %struct.TYPE_13__*
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le16_to_cpu(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %10, align 4
  %93 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %94 = bitcast %union.pplib_clock_info* %93 to %struct.TYPE_13__*
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 16
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %101 = bitcast %union.pplib_clock_info* %100 to %struct.TYPE_13__*
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le16_to_cpu(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %107 = bitcast %union.pplib_clock_info* %106 to %struct.TYPE_13__*
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 16
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  store i32 %113, i32* %126, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i32 %127, i32* %140, align 8
  %141 = load i8*, i8** @VOLTAGE_SW, align 8
  %142 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store i8* %141, i8** %155, align 8
  %156 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %157 = bitcast %union.pplib_clock_info* %156 to %struct.TYPE_13__*
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @le16_to_cpu(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  store i32 %161, i32* %175, align 8
  %176 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %177 = bitcast %union.pplib_clock_info* %176 to %struct.TYPE_13__*
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @le16_to_cpu(i32 %179)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  store i8* %180, i8** %194, align 8
  br label %399

195:                                              ; preds = %82
  %196 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %197 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %308

199:                                              ; preds = %195
  %200 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %201 = bitcast %union.pplib_clock_info* %200 to %struct.TYPE_18__*
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @le16_to_cpu(i32 %203)
  %205 = ptrtoint i8* %204 to i32
  store i32 %205, i32* %10, align 4
  %206 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %207 = bitcast %union.pplib_clock_info* %206 to %struct.TYPE_18__*
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 16
  %211 = load i32, i32* %10, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %10, align 4
  %213 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %214 = bitcast %union.pplib_clock_info* %213 to %struct.TYPE_18__*
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @le16_to_cpu(i32 %216)
  %218 = ptrtoint i8* %217 to i32
  store i32 %218, i32* %11, align 4
  %219 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %220 = bitcast %union.pplib_clock_info* %219 to %struct.TYPE_18__*
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 16
  %224 = load i32, i32* %11, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  store i32 %226, i32* %239, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  store i32 %240, i32* %253, align 8
  %254 = load i8*, i8** @VOLTAGE_SW, align 8
  %255 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %256 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  store i8* %254, i8** %268, align 8
  %269 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %270 = bitcast %union.pplib_clock_info* %269 to %struct.TYPE_18__*
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call i8* @le16_to_cpu(i32 %272)
  %274 = ptrtoint i8* %273 to i32
  %275 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %276 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  store i32 %274, i32* %288, align 8
  %289 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %290 = bitcast %union.pplib_clock_info* %289 to %struct.TYPE_18__*
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @le16_to_cpu(i32 %292)
  %294 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %295 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 2
  store i8* %293, i8** %307, align 8
  br label %398

308:                                              ; preds = %195
  %309 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %310 = bitcast %union.pplib_clock_info* %309 to %struct.TYPE_10__*
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = call i8* @le16_to_cpu(i32 %312)
  %314 = ptrtoint i8* %313 to i32
  store i32 %314, i32* %10, align 4
  %315 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %316 = bitcast %union.pplib_clock_info* %315 to %struct.TYPE_10__*
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = shl i32 %318, 16
  %320 = load i32, i32* %10, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %10, align 4
  %322 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %323 = bitcast %union.pplib_clock_info* %322 to %struct.TYPE_10__*
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i8* @le16_to_cpu(i32 %325)
  %327 = ptrtoint i8* %326 to i32
  store i32 %327, i32* %11, align 4
  %328 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %329 = bitcast %union.pplib_clock_info* %328 to %struct.TYPE_10__*
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = shl i32 %331, 16
  %333 = load i32, i32* %11, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %11, align 4
  %335 = load i32, i32* %11, align 4
  %336 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %337 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %338, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 1
  store i32 %335, i32* %348, align 4
  %349 = load i32, i32* %10, align 4
  %350 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %351 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %352, align 8
  %354 = load i32, i32* %7, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %357, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  store i32 %349, i32* %362, align 8
  %363 = load i8*, i8** @VOLTAGE_SW, align 8
  %364 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %365 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %371, align 8
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 1
  store i8* %363, i8** %377, align 8
  %378 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %379 = bitcast %union.pplib_clock_info* %378 to %struct.TYPE_10__*
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = call i8* @le16_to_cpu(i32 %381)
  %383 = ptrtoint i8* %382 to i32
  %384 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %385 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %386, align 8
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 0
  store i32 %383, i32* %397, align 8
  br label %398

398:                                              ; preds = %308, %199
  br label %399

399:                                              ; preds = %398, %86
  br label %400

400:                                              ; preds = %399, %81
  %401 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %402 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %403, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  switch i32 %415, label %453 [
    i32 131, label %416
    i32 130, label %416
    i32 129, label %416
    i32 128, label %416
  ]

416:                                              ; preds = %400, %400, %400, %400
  %417 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %418 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %419 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %420 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %419, i32 0, i32 2
  %421 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %420, i32 0, i32 0
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %421, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %426, align 8
  %428 = load i32, i32* %8, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @radeon_atom_get_max_vddc(%struct.radeon_device* %417, i32 %418, i32 %433, i32* %12)
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %452

436:                                              ; preds = %416
  %437 = load i32, i32* %12, align 4
  %438 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %439 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %440, align 8
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %445, align 8
  %447 = load i32, i32* %8, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 0
  store i32 %437, i32* %451, align 8
  br label %452

452:                                              ; preds = %436, %416
  br label %454

453:                                              ; preds = %400
  br label %454

454:                                              ; preds = %453, %452
  %455 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %456 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @RADEON_IS_IGP, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %479

461:                                              ; preds = %454
  %462 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %463 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %462, i32 0, i32 2
  %464 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_16__*, %struct.TYPE_16__** %464, align 8
  %466 = load i32, i32* %7, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_15__*, %struct.TYPE_15__** %469, align 8
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %461
  store i32 0, i32* %5, align 4
  br label %514

478:                                              ; preds = %461
  br label %513

479:                                              ; preds = %454
  %480 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %481 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %480, i32 0, i32 2
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %482, align 8
  %484 = load i32, i32* %7, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 0
  %488 = load %struct.TYPE_15__*, %struct.TYPE_15__** %487, align 8
  %489 = load i32, i32* %8, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %511, label %495

495:                                              ; preds = %479
  %496 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %497 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %497, i32 0, i32 0
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %498, align 8
  %500 = load i32, i32* %7, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 0
  %504 = load %struct.TYPE_15__*, %struct.TYPE_15__** %503, align 8
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %495, %479
  store i32 0, i32* %5, align 4
  br label %514

512:                                              ; preds = %495
  br label %513

513:                                              ; preds = %512, %478
  store i32 1, i32* %5, align 4
  br label %514

514:                                              ; preds = %513, %511, %477
  %515 = load i32, i32* %5, align 4
  ret i32 %515
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_max_vddc(%struct.radeon_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
