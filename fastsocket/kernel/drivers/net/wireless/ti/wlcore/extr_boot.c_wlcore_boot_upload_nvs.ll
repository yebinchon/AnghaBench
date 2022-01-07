; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_upload_nvs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_upload_nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64*, i32, i32, i32, i32*, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64* }
%struct.wl1271_nvs_file = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.wl128x_nvs_file = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"NVS file is needed during boot\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WLCORE_QUIRK_LEGACY_NVS = common dso_local global i32 0, align 4
@WL1271_INI_LEGACY_NVS_FILE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"nvs size is not as expected: %zu != %zu\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"nvs burst write 0x%x: 0x%x\00", align 1
@PART_WORK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_CMD_MBOX_ADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"nvs data is malformed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_boot_upload_nvs(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wl1271_nvs_file*, align 8
  %13 = alloca %struct.wl128x_nvs_file*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %14 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %354

22:                                               ; preds = %1
  %23 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WLCORE_QUIRK_LEGACY_NVS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %22
  %30 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = bitcast i64* %32 to %struct.wl1271_nvs_file*
  store %struct.wl1271_nvs_file* %33, %struct.wl1271_nvs_file** %12, align 8
  %34 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 16
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WL1271_INI_LEGACY_NVS_FILE_SIZE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39, %29
  %46 = load %struct.wl1271_nvs_file*, %struct.wl1271_nvs_file** %12, align 8
  %47 = getelementptr inbounds %struct.wl1271_nvs_file, %struct.wl1271_nvs_file* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 3
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 16
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WL1271_INI_LEGACY_NVS_FILE_SIZE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67, %61
  %73 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 16)
  %77 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @kfree(i64* %79)
  %81 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 0
  store i64* null, i64** %82, align 8
  %83 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @EILSEQ, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %354

87:                                               ; preds = %67, %55
  store i64 8, i64* %4, align 8
  %88 = load %struct.wl1271_nvs_file*, %struct.wl1271_nvs_file** %12, align 8
  %89 = getelementptr inbounds %struct.wl1271_nvs_file, %struct.wl1271_nvs_file* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i64*
  store i64* %91, i64** %9, align 8
  br label %132

92:                                               ; preds = %22
  %93 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %94 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = bitcast i64* %95 to %struct.wl128x_nvs_file*
  store %struct.wl128x_nvs_file* %96, %struct.wl128x_nvs_file** %13, align 8
  %97 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %100, 16
  br i1 %101, label %102, label %112

102:                                              ; preds = %92
  %103 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %13, align 8
  %104 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %110 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %109, i32 0, i32 3
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %102
  br label %127

112:                                              ; preds = %92
  %113 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %114 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %115, i64 16)
  %117 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %118 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = call i32 @kfree(i64* %119)
  %121 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %122 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %121, i32 0, i32 0
  store i64* null, i64** %122, align 8
  %123 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %124 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %123, i32 0, i32 2
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* @EILSEQ, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %354

127:                                              ; preds = %111
  store i64 8, i64* %4, align 8
  %128 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %13, align 8
  %129 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i64*
  store i64* %131, i64** %9, align 8
  br label %132

132:                                              ; preds = %127, %87
  %133 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %134 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %133, i32 0, i32 6
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 11
  store i64 %140, i64* %142, align 8
  %143 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %144 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %143, i32 0, i32 6
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %9, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 10
  store i64 %150, i64* %152, align 8
  %153 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %154 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %153, i32 0, i32 6
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %9, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 6
  store i64 %160, i64* %162, align 8
  %163 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %164 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %163, i32 0, i32 6
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** %9, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 5
  store i64 %170, i64* %172, align 8
  %173 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %174 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %173, i32 0, i32 6
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 4
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 4
  store i64 %180, i64* %182, align 8
  %183 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %184 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %183, i32 0, i32 6
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 5
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** %9, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 3
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %283, %132
  %194 = load i64*, i64** %9, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %284

198:                                              ; preds = %193
  %199 = load i64*, i64** %9, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %5, align 8
  %202 = load i64*, i64** %9, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = and i64 %204, 254
  %206 = load i64*, i64** %9, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 2
  %208 = load i64, i64* %207, align 8
  %209 = shl i64 %208, 8
  %210 = or i64 %205, %209
  store i64 %210, i64* %7, align 8
  %211 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %212 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %7, align 8
  %217 = add i64 %216, %215
  store i64 %217, i64* %7, align 8
  %218 = load i64*, i64** %9, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 3
  store i64* %219, i64** %9, align 8
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %271, %198
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %5, align 8
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %225, label %274

225:                                              ; preds = %220
  %226 = load i64*, i64** %9, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 3
  %228 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %229 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* %4, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = icmp uge i64* %227, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  br label %350

235:                                              ; preds = %225
  %236 = load i64*, i64** %9, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64*, i64** %9, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 1
  %241 = load i64, i64* %240, align 8
  %242 = shl i64 %241, 8
  %243 = or i64 %238, %242
  %244 = load i64*, i64** %9, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 2
  %246 = load i64, i64* %245, align 8
  %247 = shl i64 %246, 16
  %248 = or i64 %243, %247
  %249 = load i64*, i64** %9, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 3
  %251 = load i64, i64* %250, align 8
  %252 = shl i64 %251, 24
  %253 = or i64 %248, %252
  store i64 %253, i64* %8, align 8
  %254 = load i32, i32* @DEBUG_BOOT, align 4
  %255 = load i64, i64* %7, align 8
  %256 = load i64, i64* %8, align 8
  %257 = call i32 @wl1271_debug(i32 %254, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %255, i64 %256)
  %258 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %259 = load i64, i64* %7, align 8
  %260 = load i64, i64* %8, align 8
  %261 = call i32 @wlcore_write32(%struct.wl1271* %258, i64 %259, i64 %260)
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %11, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %235
  %265 = load i32, i32* %11, align 4
  store i32 %265, i32* %2, align 4
  br label %354

266:                                              ; preds = %235
  %267 = load i64*, i64** %9, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 4
  store i64* %268, i64** %9, align 8
  %269 = load i64, i64* %7, align 8
  %270 = add i64 %269, 4
  store i64 %270, i64* %7, align 8
  br label %271

271:                                              ; preds = %266
  %272 = load i32, i32* %6, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %6, align 4
  br label %220

274:                                              ; preds = %220
  %275 = load i64*, i64** %9, align 8
  %276 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %277 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %276, i32 0, i32 0
  %278 = load i64*, i64** %277, align 8
  %279 = load i64, i64* %4, align 8
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  %281 = icmp uge i64* %275, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %350

283:                                              ; preds = %274
  br label %193

284:                                              ; preds = %193
  %285 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %286 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %285, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  %288 = load i64*, i64** %9, align 8
  %289 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %290 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = ptrtoint i64* %288 to i64
  %293 = ptrtoint i64* %291 to i64
  %294 = sub i64 %292, %293
  %295 = sdiv exact i64 %294, 8
  %296 = add nsw i64 %295, 7
  %297 = trunc i64 %296 to i32
  %298 = call i32 @ALIGN(i32 %297, i32 4)
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %287, i64 %299
  store i64* %300, i64** %9, align 8
  %301 = load i64*, i64** %9, align 8
  %302 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %303 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = load i64, i64* %4, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  %307 = icmp uge i64* %301, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %284
  br label %350

309:                                              ; preds = %284
  %310 = load i64*, i64** %9, align 8
  %311 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %312 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %311, i32 0, i32 0
  %313 = load i64*, i64** %312, align 8
  %314 = ptrtoint i64* %310 to i64
  %315 = ptrtoint i64* %313 to i64
  %316 = sub i64 %314, %315
  %317 = sdiv exact i64 %316, 8
  %318 = load i64, i64* %4, align 8
  %319 = sub i64 %318, %317
  store i64 %319, i64* %4, align 8
  %320 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %321 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %322 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = load i64, i64* @PART_WORK, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  %326 = call i32 @wlcore_set_partition(%struct.wl1271* %320, i32* %325)
  store i32 %326, i32* %11, align 4
  %327 = load i32, i32* %11, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %309
  %330 = load i32, i32* %11, align 4
  store i32 %330, i32* %2, align 4
  br label %354

331:                                              ; preds = %309
  %332 = load i64*, i64** %9, align 8
  %333 = load i64, i64* %4, align 8
  %334 = load i32, i32* @GFP_KERNEL, align 4
  %335 = call i64* @kmemdup(i64* %332, i64 %333, i32 %334)
  store i64* %335, i64** %10, align 8
  %336 = load i64*, i64** %10, align 8
  %337 = icmp ne i64* %336, null
  br i1 %337, label %341, label %338

338:                                              ; preds = %331
  %339 = load i32, i32* @ENOMEM, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %2, align 4
  br label %354

341:                                              ; preds = %331
  %342 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %343 = load i32, i32* @REG_CMD_MBOX_ADDRESS, align 4
  %344 = load i64*, i64** %10, align 8
  %345 = load i64, i64* %4, align 8
  %346 = call i32 @wlcore_write_data(%struct.wl1271* %342, i32 %343, i64* %344, i64 %345, i32 0)
  store i32 %346, i32* %11, align 4
  %347 = load i64*, i64** %10, align 8
  %348 = call i32 @kfree(i64* %347)
  %349 = load i32, i32* %11, align 4
  store i32 %349, i32* %2, align 4
  br label %354

350:                                              ; preds = %308, %282, %234
  %351 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %352 = load i32, i32* @EILSEQ, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %2, align 4
  br label %354

354:                                              ; preds = %350, %341, %338, %329, %264, %112, %72, %18
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i64) #1

declare dso_local i32 @wlcore_write32(%struct.wl1271*, i64, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i64* @kmemdup(i64*, i64, i32) #1

declare dso_local i32 @wlcore_write_data(%struct.wl1271*, i32, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
