; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_asic_ss_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_asic_ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.radeon_atom_ss = type { i8*, i32, i8* }
%union.asic_ss_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@ASIC_InternalSS_Info = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unsupported ASIC_InternalSS_Info table: %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %0, %struct.radeon_atom_ss* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_atom_ss*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_mode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.asic_ss_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_atom_ss* %1, %struct.radeon_atom_ss** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 1
  store %struct.radeon_mode_info* %20, %struct.radeon_mode_info** %10, align 8
  %21 = load i32, i32* @DATA, align 4
  %22 = load i32, i32* @ASIC_InternalSS_Info, align 4
  %23 = call i32 @GetIndexIntoMasterTable(i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %25 = call i32 @memset(%struct.radeon_atom_ss* %24, i32 0, i32 24)
  %26 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %10, align 8
  %27 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @atom_parse_data_header(%struct.TYPE_14__* %28, i32 %29, i64* %13, i32* %15, i32* %16, i64* %12)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %284

32:                                               ; preds = %4
  %33 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %10, align 8
  %34 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add nsw i64 %37, %38
  %40 = inttoptr i64 %39 to %union.asic_ss_info*
  store %union.asic_ss_info* %40, %union.asic_ss_info** %14, align 8
  %41 = load i32, i32* %15, align 4
  switch i32 %41, label %279 [
    i32 1, label %42
    i32 2, label %117
    i32 3, label %192
  ]

42:                                               ; preds = %32
  %43 = load i64, i64* %13, align 8
  %44 = sub i64 %43, 4
  %45 = udiv i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %113, %42
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %116

51:                                               ; preds = %47
  %52 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %53 = bitcast %union.asic_ss_info* %52 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %66 = bitcast %union.asic_ss_info* %65 to %struct.TYPE_9__*
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = icmp sle i32 %64, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %63
  %77 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %78 = bitcast %union.asic_ss_info* %77 to %struct.TYPE_9__*
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le16_to_cpu(i32 %85)
  %87 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %88 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %90 = bitcast %union.asic_ss_info* %89 to %struct.TYPE_9__*
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %99 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %101 = bitcast %union.asic_ss_info* %100 to %struct.TYPE_9__*
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @le16_to_cpu(i32 %108)
  %110 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %111 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  store i32 1, i32* %5, align 4
  br label %285

112:                                              ; preds = %63, %51
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %47

116:                                              ; preds = %47
  br label %283

117:                                              ; preds = %32
  %118 = load i64, i64* %13, align 8
  %119 = sub i64 %118, 4
  %120 = udiv i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %188, %117
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %191

126:                                              ; preds = %122
  %127 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %128 = bitcast %union.asic_ss_info* %127 to %struct.TYPE_11__*
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %187

138:                                              ; preds = %126
  %139 = load i32, i32* %9, align 4
  %140 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %141 = bitcast %union.asic_ss_info* %140 to %struct.TYPE_11__*
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le32_to_cpu(i32 %148)
  %150 = icmp sle i32 %139, %149
  br i1 %150, label %151, label %187

151:                                              ; preds = %138
  %152 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %153 = bitcast %union.asic_ss_info* %152 to %struct.TYPE_11__*
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @le16_to_cpu(i32 %160)
  %162 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %163 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %165 = bitcast %union.asic_ss_info* %164 to %struct.TYPE_11__*
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %174 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %176 = bitcast %union.asic_ss_info* %175 to %struct.TYPE_11__*
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @le16_to_cpu(i32 %183)
  %185 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %186 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  store i32 1, i32* %5, align 4
  br label %285

187:                                              ; preds = %138, %126
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %122

191:                                              ; preds = %122
  br label %283

192:                                              ; preds = %32
  %193 = load i64, i64* %13, align 8
  %194 = sub i64 %193, 4
  %195 = udiv i64 %194, 4
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %197

197:                                              ; preds = %275, %192
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %18, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %278

201:                                              ; preds = %197
  %202 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %203 = bitcast %union.asic_ss_info* %202 to %struct.TYPE_13__*
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %274

213:                                              ; preds = %201
  %214 = load i32, i32* %9, align 4
  %215 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %216 = bitcast %union.asic_ss_info* %215 to %struct.TYPE_13__*
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @le32_to_cpu(i32 %223)
  %225 = icmp sle i32 %214, %224
  br i1 %225, label %226, label %274

226:                                              ; preds = %213
  %227 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %228 = bitcast %union.asic_ss_info* %227 to %struct.TYPE_13__*
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @le16_to_cpu(i32 %235)
  %237 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %238 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %237, i32 0, i32 2
  store i8* %236, i8** %238, align 8
  %239 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %240 = bitcast %union.asic_ss_info* %239 to %struct.TYPE_13__*
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %249 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 8
  %250 = load %union.asic_ss_info*, %union.asic_ss_info** %14, align 8
  %251 = bitcast %union.asic_ss_info* %250 to %struct.TYPE_13__*
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = load i32, i32* %17, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i8* @le16_to_cpu(i32 %258)
  %260 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %261 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %260, i32 0, i32 0
  store i8* %259, i8** %261, align 8
  %262 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @RADEON_IS_IGP, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %226
  %269 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %270 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %7, align 8
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @radeon_atombios_get_igp_ss_overrides(%struct.radeon_device* %269, %struct.radeon_atom_ss* %270, i32 %271)
  br label %273

273:                                              ; preds = %268, %226
  store i32 1, i32* %5, align 4
  br label %285

274:                                              ; preds = %213, %201
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %17, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %17, align 4
  br label %197

278:                                              ; preds = %197
  br label %283

279:                                              ; preds = %32
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %16, align 4
  %282 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %279, %278, %191, %116
  br label %284

284:                                              ; preds = %283, %4
  store i32 0, i32* %5, align 4
  br label %285

285:                                              ; preds = %284, %273, %151, %76
  %286 = load i32, i32* %5, align 4
  ret i32 %286
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_14__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_get_igp_ss_overrides(%struct.radeon_device*, %struct.radeon_atom_ss*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
