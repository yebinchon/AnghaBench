; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.radeon_mode_info, %struct.TYPE_9__ }
%struct.radeon_mode_info = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, i8*, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll }
%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%union.firmware_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_clock_info(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.firmware_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_pll*, align 8
  %11 = alloca %struct.radeon_pll*, align 8
  %12 = alloca %struct.radeon_pll*, align 8
  %13 = alloca %struct.radeon_pll*, align 8
  %14 = alloca %struct.radeon_pll*, align 8
  %15 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %4, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  store %struct.radeon_mode_info* %20, %struct.radeon_mode_info** %5, align 8
  %21 = load i32, i32* @DATA, align 4
  %22 = load i32, i32* @FirmwareInfo, align 4
  %23 = call i32 @GetIndexIntoMasterTable(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 9
  store %struct.radeon_pll* %26, %struct.radeon_pll** %10, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 8
  store %struct.radeon_pll* %29, %struct.radeon_pll** %11, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 7
  store %struct.radeon_pll* %32, %struct.radeon_pll** %12, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 6
  store %struct.radeon_pll* %35, %struct.radeon_pll** %13, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  store %struct.radeon_pll* %38, %struct.radeon_pll** %14, align 8
  %39 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @atom_parse_data_header(%struct.TYPE_14__* %41, i32 %42, i32* null, i32* %8, i32* %9, i64* %15)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %400

45:                                               ; preds = %1
  %46 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = add nsw i64 %50, %51
  %53 = inttoptr i64 %52 to %union.firmware_info*
  store %union.firmware_info* %53, %union.firmware_info** %7, align 8
  %54 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %55 = bitcast %union.firmware_info* %54 to %struct.TYPE_13__*
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %60 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %62 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %73

65:                                               ; preds = %45
  %66 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %67 = bitcast %union.firmware_info* %66 to %struct.TYPE_13__*
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %72 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %82

73:                                               ; preds = %45
  %74 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %75 = bitcast %union.firmware_info* %74 to %struct.TYPE_10__*
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %81 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %65
  %83 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %84 = bitcast %union.firmware_info* %83 to %struct.TYPE_13__*
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 15
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le32_to_cpu(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %90 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = icmp sge i32 %91, 4
  br i1 %92, label %93, label %132

93:                                               ; preds = %82
  %94 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %95 = bitcast %union.firmware_info* %94 to %struct.TYPE_11__*
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = mul nsw i32 %98, 100
  %100 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %101 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %103 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %108 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %111 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %93
  %113 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %114 = bitcast %union.firmware_info* %113 to %struct.TYPE_11__*
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = mul nsw i32 %117, 100
  %119 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %120 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %122 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %112
  %126 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %127 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %130 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %112
  br label %143

132:                                              ; preds = %82
  %133 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %134 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %137 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %139 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %142 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %132, %131
  %144 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %145 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %150 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %154 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %153, i32 0, i32 1
  store i32 64800, i32* %154, align 4
  br label %158

155:                                              ; preds = %148
  %156 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %157 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %156, i32 0, i32 1
  store i32 20000, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %143
  %160 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %161 = bitcast %union.firmware_info* %160 to %struct.TYPE_13__*
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le16_to_cpu(i32 %163)
  %165 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %166 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %168 = bitcast %union.firmware_info* %167 to %struct.TYPE_13__*
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @le16_to_cpu(i32 %170)
  %172 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %173 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  %174 = load %struct.radeon_pll*, %struct.radeon_pll** %11, align 8
  %175 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %176 = bitcast %struct.radeon_pll* %174 to i8*
  %177 = bitcast %struct.radeon_pll* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 40, i1 false)
  %178 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %179 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %159
  %182 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %183 = bitcast %union.firmware_info* %182 to %struct.TYPE_12__*
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @le16_to_cpu(i32 %185)
  %187 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %188 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %197

189:                                              ; preds = %159
  %190 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %191 = bitcast %union.firmware_info* %190 to %struct.TYPE_13__*
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le16_to_cpu(i32 %193)
  %195 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %196 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %189, %181
  %198 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %199 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %198, i32 0, i32 7
  store i64 0, i64* %199, align 8
  %200 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %201 = bitcast %union.firmware_info* %200 to %struct.TYPE_13__*
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 12
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le16_to_cpu(i32 %203)
  %205 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %206 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %208 = bitcast %union.firmware_info* %207 to %struct.TYPE_13__*
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 11
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @le32_to_cpu(i32 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %214 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %216 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %197
  %220 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %221 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %225 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %224, i32 0, i32 1
  store i32 64800, i32* %225, align 4
  br label %229

226:                                              ; preds = %219
  %227 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %228 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %227, i32 0, i32 1
  store i32 20000, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %197
  %231 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %232 = bitcast %union.firmware_info* %231 to %struct.TYPE_13__*
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 10
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le16_to_cpu(i32 %234)
  %236 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %237 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  %238 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %239 = bitcast %union.firmware_info* %238 to %struct.TYPE_13__*
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @le16_to_cpu(i32 %241)
  %243 = load %struct.radeon_pll*, %struct.radeon_pll** %13, align 8
  %244 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 8
  %245 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %246 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %230
  %249 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %250 = bitcast %union.firmware_info* %249 to %struct.TYPE_12__*
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @le16_to_cpu(i32 %252)
  %254 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %255 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  br label %264

256:                                              ; preds = %230
  %257 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %258 = bitcast %union.firmware_info* %257 to %struct.TYPE_13__*
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @le16_to_cpu(i32 %260)
  %262 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %263 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %256, %248
  %265 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %266 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %265, i32 0, i32 7
  store i64 0, i64* %266, align 8
  %267 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %268 = bitcast %union.firmware_info* %267 to %struct.TYPE_13__*
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @le16_to_cpu(i32 %270)
  %272 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %273 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %275 = bitcast %union.firmware_info* %274 to %struct.TYPE_13__*
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = call i8* @le32_to_cpu(i32 %277)
  %279 = ptrtoint i8* %278 to i32
  %280 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %281 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %283 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %297

286:                                              ; preds = %264
  %287 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %288 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %292 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %291, i32 0, i32 1
  store i32 64800, i32* %292, align 4
  br label %296

293:                                              ; preds = %286
  %294 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %295 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %294, i32 0, i32 1
  store i32 20000, i32* %295, align 4
  br label %296

296:                                              ; preds = %293, %290
  br label %297

297:                                              ; preds = %296, %264
  %298 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %299 = bitcast %union.firmware_info* %298 to %struct.TYPE_13__*
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @le16_to_cpu(i32 %301)
  %303 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %304 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %303, i32 0, i32 5
  store i32 %302, i32* %304, align 4
  %305 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %306 = bitcast %union.firmware_info* %305 to %struct.TYPE_13__*
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @le16_to_cpu(i32 %308)
  %310 = load %struct.radeon_pll*, %struct.radeon_pll** %14, align 8
  %311 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %310, i32 0, i32 6
  store i32 %309, i32* %311, align 8
  %312 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %313 = bitcast %union.firmware_info* %312 to %struct.TYPE_13__*
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @le32_to_cpu(i32 %315)
  %317 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %318 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 4
  store i8* %316, i8** %319, align 8
  %320 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %321 = bitcast %union.firmware_info* %320 to %struct.TYPE_13__*
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = call i8* @le32_to_cpu(i32 %323)
  %325 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %326 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 3
  store i8* %324, i8** %327, align 8
  %328 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %329 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %368

331:                                              ; preds = %297
  %332 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %333 = bitcast %union.firmware_info* %332 to %struct.TYPE_12__*
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i8* @le32_to_cpu(i32 %335)
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %339 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  store i32 %337, i32* %340, align 8
  %341 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %342 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %331
  %347 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %348 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %352 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 0
  store i32 54000, i32* %353, align 8
  br label %358

354:                                              ; preds = %346
  %355 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %356 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  store i32 60000, i32* %357, align 8
  br label %358

358:                                              ; preds = %354, %350
  br label %359

359:                                              ; preds = %358, %331
  %360 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %361 = bitcast %union.firmware_info* %360 to %struct.TYPE_12__*
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @le16_to_cpu(i32 %363)
  %365 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %366 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 1
  store i32 %364, i32* %367, align 4
  br label %368

368:                                              ; preds = %359, %297
  %369 = load %struct.radeon_pll*, %struct.radeon_pll** %12, align 8
  %370 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %371 = bitcast %struct.radeon_pll* %369 to i8*
  %372 = bitcast %struct.radeon_pll* %370 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %371, i8* align 8 %372, i64 40, i1 false)
  %373 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %374 = bitcast %union.firmware_info* %373 to %struct.TYPE_13__*
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @le16_to_cpu(i32 %376)
  %378 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %379 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 2
  store i32 %377, i32* %380, align 8
  %381 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %382 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %368
  %387 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %388 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 2
  store i32 40000, i32* %389, align 8
  br label %390

390:                                              ; preds = %386, %368
  %391 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %392 = bitcast %union.firmware_info* %391 to %struct.TYPE_13__*
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @le16_to_cpu(i32 %395)
  %397 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %398 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %398, i32 0, i32 0
  store i32 %396, i32* %399, align 8
  store i32 1, i32* %2, align 4
  br label %401

400:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %401

401:                                              ; preds = %400, %390
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
