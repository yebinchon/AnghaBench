; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_end_analysis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_end_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_eckd_private = type { i32, i32, i32, %struct.TYPE_4__, %struct.eckd_count* }
%struct.TYPE_4__ = type { i32 }
%struct.eckd_count = type { i32, i32, i64, i64, i32 }
%struct.dasd_ccw_req = type { i32 }

@INIT_CQR_ERROR = common dso_local global i32 0, align 4
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@DASD_RAW_BLOCKSIZE = common dso_local global i32 0, align 4
@DASD_RAW_BLOCK_PER_TRACK = common dso_local global i32 0, align 4
@INIT_CQR_UNFORMATTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"The DASD is not formatted\0A\00", align 1
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Detecting the DASD disk layout failed because of an I/O error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@count_area_head = common dso_local global i64* null, align 8
@count_area_rec = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Track 0 has no records following the VTOC\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"The disk layout of the DASD is not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"DASD with %d KB/block, %d KB total size, %d KB/track, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"compatible disk layout\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"linux disk layout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_eckd_end_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_end_analysis(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca %struct.eckd_count*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %12 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 3
  %14 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  store %struct.dasd_device* %14, %struct.dasd_device** %4, align 8
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %18, %struct.dasd_eckd_private** %5, align 8
  %19 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %20 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %23 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @INIT_CQR_ERROR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %29 = call %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(%struct.dasd_device* %28)
  store %struct.dasd_ccw_req* %29, %struct.dasd_ccw_req** %11, align 8
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %31 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %30)
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %33 = call i32 @dasd_eckd_analysis_evaluation(%struct.dasd_ccw_req* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %35 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %36 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %34, %struct.dasd_device* %35)
  br label %37

37:                                               ; preds = %27, %1
  %38 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %39 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* @DASD_RAW_BLOCKSIZE, align 4
  %46 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %47 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @DASD_RAW_BLOCK_PER_TRACK, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %50 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %49, i32 0, i32 1
  store i32 3, i32* %50, align 4
  br label %322

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @INIT_CQR_UNFORMATTED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @dev_warn(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EMEDIUMTYPE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %372

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @INIT_CQR_ERROR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %69 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %372

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %78 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  store %struct.eckd_count* null, %struct.eckd_count** %6, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %149, %76
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %152

82:                                               ; preds = %79
  %83 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %84 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %83, i32 0, i32 4
  %85 = load %struct.eckd_count*, %struct.eckd_count** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %85, i64 %87
  %89 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 4
  br i1 %91, label %145, label %92

92:                                               ; preds = %82
  %93 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %94 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %93, i32 0, i32 4
  %95 = load %struct.eckd_count*, %struct.eckd_count** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %95, i64 %97
  %99 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @dasd_eckd_cdl_reclen(i32 %101)
  %103 = sub nsw i32 %102, 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %145, label %105

105:                                              ; preds = %92
  %106 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %107 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %106, i32 0, i32 4
  %108 = load %struct.eckd_count*, %struct.eckd_count** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %108, i64 %110
  %112 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %145, label %115

115:                                              ; preds = %105
  %116 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %117 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %116, i32 0, i32 4
  %118 = load %struct.eckd_count*, %struct.eckd_count** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %118, i64 %120
  %122 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** @count_area_head, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %123, %128
  br i1 %129, label %145, label %130

130:                                              ; preds = %115
  %131 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %132 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %131, i32 0, i32 4
  %133 = load %struct.eckd_count*, %struct.eckd_count** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %133, i64 %135
  %137 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** @count_area_rec, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %138, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %130, %115, %105, %92, %82
  %146 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %147 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  br label %152

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %79

152:                                              ; preds = %145, %79
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %157 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %156, i32 0, i32 4
  %158 = load %struct.eckd_count*, %struct.eckd_count** %157, align 8
  %159 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %158, i64 4
  store %struct.eckd_count* %159, %struct.eckd_count** %6, align 8
  br label %160

160:                                              ; preds = %155, %152
  %161 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %162 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %249

165:                                              ; preds = %160
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %237, %165
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %167, 5
  br i1 %168, label %169, label %240

169:                                              ; preds = %166
  %170 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %171 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %170, i32 0, i32 4
  %172 = load %struct.eckd_count*, %struct.eckd_count** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %172, i64 %174
  %176 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %235, label %179

179:                                              ; preds = %169
  %180 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %181 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %180, i32 0, i32 4
  %182 = load %struct.eckd_count*, %struct.eckd_count** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %182, i64 %184
  %186 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %189 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %188, i32 0, i32 4
  %190 = load %struct.eckd_count*, %struct.eckd_count** %189, align 8
  %191 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %190, i64 0
  %192 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %187, %193
  br i1 %194, label %235, label %195

195:                                              ; preds = %179
  %196 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %197 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %196, i32 0, i32 4
  %198 = load %struct.eckd_count*, %struct.eckd_count** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %198, i64 %200
  %202 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %235, label %205

205:                                              ; preds = %195
  %206 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %207 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %206, i32 0, i32 4
  %208 = load %struct.eckd_count*, %struct.eckd_count** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %208, i64 %210
  %212 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64*, i64** @count_area_head, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %213, %218
  br i1 %219, label %235, label %220

220:                                              ; preds = %205
  %221 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %222 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %221, i32 0, i32 4
  %223 = load %struct.eckd_count*, %struct.eckd_count** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %223, i64 %225
  %227 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** @count_area_rec, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %228, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %220, %205, %195, %179, %169
  br label %240

236:                                              ; preds = %220
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %166

240:                                              ; preds = %235, %166
  %241 = load i32, i32* %10, align 4
  %242 = icmp eq i32 %241, 5
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %245 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %244, i32 0, i32 4
  %246 = load %struct.eckd_count*, %struct.eckd_count** %245, align 8
  %247 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %246, i64 0
  store %struct.eckd_count* %247, %struct.eckd_count** %6, align 8
  br label %248

248:                                              ; preds = %243, %240
  br label %264

249:                                              ; preds = %160
  %250 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %251 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %250, i32 0, i32 4
  %252 = load %struct.eckd_count*, %struct.eckd_count** %251, align 8
  %253 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %252, i64 3
  %254 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %263

257:                                              ; preds = %249
  %258 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %259 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %258, i32 0, i32 1
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = call i32 @dev_warn(i32* %261, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %263

263:                                              ; preds = %257, %249
  br label %264

264:                                              ; preds = %263, %248
  %265 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %266 = icmp ne %struct.eckd_count* %265, null
  br i1 %266, label %267, label %285

267:                                              ; preds = %264
  %268 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %269 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %267
  %273 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %274 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @dasd_check_blocksize(i32 %275)
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %280 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %283 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %278, %272
  br label %285

285:                                              ; preds = %284, %267, %264
  %286 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %287 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %285
  %291 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %292 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %291, i32 0, i32 1
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = call i32 @dev_warn(i32* %294, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %296 = load i32, i32* @EMEDIUMTYPE, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %2, align 4
  br label %372

298:                                              ; preds = %285
  %299 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %300 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %299, i32 0, i32 1
  store i32 0, i32* %300, align 4
  store i32 512, i32* %7, align 4
  br label %301

301:                                              ; preds = %312, %298
  %302 = load i32, i32* %7, align 4
  %303 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %304 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ult i32 %302, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %301
  %308 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %309 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %307
  %313 = load i32, i32* %7, align 4
  %314 = shl i32 %313, 1
  store i32 %314, i32* %7, align 4
  br label %301

315:                                              ; preds = %301
  %316 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %317 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %316, i32 0, i32 3
  %318 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %319 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @recs_per_track(%struct.TYPE_4__* %317, i32 0, i32 %320)
  store i32 %321, i32* %8, align 4
  br label %322

322:                                              ; preds = %315, %44
  %323 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %324 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %327 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = mul i32 %325, %329
  %331 = load i32, i32* %8, align 4
  %332 = mul i32 %330, %331
  %333 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %334 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %333, i32 0, i32 2
  store i32 %332, i32* %334, align 8
  %335 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %336 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %335, i32 0, i32 1
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 0
  %339 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %340 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = lshr i32 %341, 10
  %343 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %344 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %347 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = mul i32 %345, %349
  %351 = load i32, i32* %8, align 4
  %352 = mul i32 %350, %351
  %353 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %354 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = lshr i32 %355, 9
  %357 = mul i32 %352, %356
  %358 = lshr i32 %357, 1
  %359 = load i32, i32* %8, align 4
  %360 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %361 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = mul i32 %359, %362
  %364 = lshr i32 %363, 10
  %365 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %366 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  %369 = zext i1 %368 to i64
  %370 = select i1 %368, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)
  %371 = call i32 @dev_info(i32* %338, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %342, i32 %358, i32 %364, i8* %370)
  store i32 0, i32* %2, align 4
  br label %372

372:                                              ; preds = %322, %290, %67, %55
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(%struct.dasd_device*) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_eckd_analysis_evaluation(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dasd_eckd_cdl_reclen(i32) #1

declare dso_local i64 @dasd_check_blocksize(i32) #1

declare dso_local i32 @recs_per_track(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
