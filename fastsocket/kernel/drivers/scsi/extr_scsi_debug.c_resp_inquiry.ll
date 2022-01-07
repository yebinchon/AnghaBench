; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.sdebug_dev_info = type { i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDEBUG_MAX_INQ_ARR_SZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@scsi_debug_no_lun_0 = common dso_local global i64 0, align 8
@scsi_debug_ptype = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@scsi_debug_vpd_use_hostno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@scsi_debug_dif = common dso_local global i64 0, align 8
@SD_DIF_TYPE3_PROTECTION = common dso_local global i64 0, align 8
@scsi_debug_scsi_level = common dso_local global i8 0, align 1
@SDEBUG_LONG_INQ_SZ = common dso_local global i32 0, align 4
@inq_vendor_id = common dso_local global i8* null, align 8
@inq_product_id = common dso_local global i8* null, align 8
@inq_product_rev = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*)* @resp_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_inquiry(%struct.scsi_cmnd* %0, i32 %1, %struct.sdebug_dev_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdebug_dev_info*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [6 x i8], align 1
  %19 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sdebug_dev_info* %2, %struct.sdebug_dev_info** %7, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %28, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @SDEBUG_MAX_INQ_ARR_SZ, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @DID_REQUEUE, align 4
  %41 = shl i32 %40, 16
  store i32 %41, i32* %4, align 4
  br label %595

42:                                               ; preds = %3
  %43 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %44 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8 30, i8* %8, align 1
  br label %62

48:                                               ; preds = %42
  %49 = load i64, i64* @scsi_debug_no_lun_0, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %53 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 0, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i8 127, i8* %8, align 1
  br label %61

57:                                               ; preds = %51, %48
  %58 = load i32, i32* @scsi_debug_ptype, align 4
  %59 = and i32 %58, 31
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  br label %61

61:                                               ; preds = %57, %56
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i8, i8* %8, align 1
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %63, i8* %65, align 1
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 2, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %74 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %75 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %76 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %73, i32 %74, i32 %75, i32 0)
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @kfree(i8* %77)
  %79 = load i32, i32* @check_condition_result, align 4
  store i32 %79, i32* %4, align 4
  br label %595

80:                                               ; preds = %62
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 1, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %490

87:                                               ; preds = %80
  %88 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %89 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %88, i32 0, i32 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = add nsw i32 %95, 1
  %97 = and i32 %96, 127
  %98 = shl i32 %97, 8
  %99 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %100 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 127
  %103 = add nsw i32 %98, %102
  store i32 %103, i32* %15, align 4
  %104 = load i64, i64* @scsi_debug_vpd_use_hostno, align 8
  %105 = icmp eq i64 0, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %87
  store i32 0, i32* %19, align 4
  br label %107

107:                                              ; preds = %106, %87
  %108 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %109 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %127

113:                                              ; preds = %107
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  %116 = mul nsw i32 %115, 2000
  %117 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %118 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 1000
  %121 = add nsw i32 %116, %120
  %122 = sext i32 %121 to i64
  %123 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %124 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  br label %127

127:                                              ; preds = %113, %112
  %128 = phi i64 [ -1, %112 ], [ %126, %113 ]
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  %132 = mul nsw i32 %131, 2000
  %133 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %134 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 1000
  %137 = add nsw i32 %132, %136
  %138 = sub nsw i32 %137, 3
  store i32 %138, i32* %16, align 4
  %139 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @scnprintf(i8* %139, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 0, %145
  br i1 %146, label %147, label %222

147:                                              ; preds = %127
  %148 = load i8*, i8** %10, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  %150 = load i8, i8* %149, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  store i8 %150, i8* %152, align 1
  store i32 4, i32* %12, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 -128, i8* %162, align 1
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8 -125, i8* %167, align 1
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8 -124, i8* %172, align 1
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 -123, i8* %177, align 1
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  store i8 -122, i8* %182, align 1
  %183 = load i8*, i8** %9, align 8
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 -121, i8* %187, align 1
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8 -120, i8* %192, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 -119, i8* %197, align 1
  %198 = load i8*, i8** %9, align 8
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 -80, i8* %202, align 1
  %203 = load i8*, i8** %9, align 8
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %12, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 -79, i8* %207, align 1
  %208 = call i64 (...) @scsi_debug_lbp()
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %147
  %211 = load i8*, i8** %9, align 8
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 -78, i8* %215, align 1
  br label %216

216:                                              ; preds = %210, %147
  %217 = load i32, i32* %12, align 4
  %218 = sub nsw i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 3
  store i8 %219, i8* %221, align 1
  br label %467

222:                                              ; preds = %127
  %223 = load i8*, i8** %10, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 2
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 128, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %222
  %229 = load i8*, i8** %10, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  %231 = load i8, i8* %230, align 1
  %232 = load i8*, i8** %9, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  store i8 %231, i8* %233, align 1
  %234 = load i32, i32* %17, align 4
  %235 = trunc i32 %234 to i8
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 3
  store i8 %235, i8* %237, align 1
  %238 = load i8*, i8** %9, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 4
  %240 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @memcpy(i8* %239, i8* %240, i32 %241)
  br label %466

243:                                              ; preds = %222
  %244 = load i8*, i8** %10, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp eq i32 131, %247
  br i1 %248, label %249, label %265

249:                                              ; preds = %243
  %250 = load i8*, i8** %10, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 2
  %252 = load i8, i8* %251, align 1
  %253 = load i8*, i8** %9, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 1
  store i8 %252, i8* %254, align 1
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 4
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %14, align 4
  %260 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %261 = load i32, i32* %17, align 4
  %262 = call zeroext i8 @inquiry_evpd_83(i8* %256, i32 %257, i32 %258, i32 %259, i8* %260, i32 %261)
  %263 = load i8*, i8** %9, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 3
  store i8 %262, i8* %264, align 1
  br label %465

265:                                              ; preds = %243
  %266 = load i8*, i8** %10, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp eq i32 132, %269
  br i1 %270, label %271, label %282

271:                                              ; preds = %265
  %272 = load i8*, i8** %10, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  %274 = load i8, i8* %273, align 1
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  store i8 %274, i8* %276, align 1
  %277 = load i8*, i8** %9, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 4
  %279 = call zeroext i8 @inquiry_evpd_84(i8* %278)
  %280 = load i8*, i8** %9, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 3
  store i8 %279, i8* %281, align 1
  br label %464

282:                                              ; preds = %265
  %283 = load i8*, i8** %10, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 2
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp eq i32 133, %286
  br i1 %287, label %288, label %299

288:                                              ; preds = %282
  %289 = load i8*, i8** %10, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 2
  %291 = load i8, i8* %290, align 1
  %292 = load i8*, i8** %9, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 1
  store i8 %291, i8* %293, align 1
  %294 = load i8*, i8** %9, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 4
  %296 = call zeroext i8 @inquiry_evpd_85(i8* %295)
  %297 = load i8*, i8** %9, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 3
  store i8 %296, i8* %298, align 1
  br label %463

299:                                              ; preds = %282
  %300 = load i8*, i8** %10, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = icmp eq i32 134, %303
  br i1 %304, label %305, label %332

305:                                              ; preds = %299
  %306 = load i8*, i8** %10, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 2
  %308 = load i8, i8* %307, align 1
  %309 = load i8*, i8** %9, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  store i8 %308, i8* %310, align 1
  %311 = load i8*, i8** %9, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 3
  store i8 60, i8* %312, align 1
  %313 = load i64, i64* @scsi_debug_dif, align 8
  %314 = load i64, i64* @SD_DIF_TYPE3_PROTECTION, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %305
  %317 = load i8*, i8** %9, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 4
  store i8 4, i8* %318, align 1
  br label %329

319:                                              ; preds = %305
  %320 = load i64, i64* @scsi_debug_dif, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load i8*, i8** %9, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 4
  store i8 5, i8* %324, align 1
  br label %328

325:                                              ; preds = %319
  %326 = load i8*, i8** %9, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 4
  store i8 0, i8* %327, align 1
  br label %328

328:                                              ; preds = %325, %322
  br label %329

329:                                              ; preds = %328, %316
  %330 = load i8*, i8** %9, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 5
  store i8 7, i8* %331, align 1
  br label %462

332:                                              ; preds = %299
  %333 = load i8*, i8** %10, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 2
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = icmp eq i32 135, %336
  br i1 %337, label %338, label %354

338:                                              ; preds = %332
  %339 = load i8*, i8** %10, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 2
  %341 = load i8, i8* %340, align 1
  %342 = load i8*, i8** %9, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 1
  store i8 %341, i8* %343, align 1
  %344 = load i8*, i8** %9, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 3
  store i8 8, i8* %345, align 1
  %346 = load i8*, i8** %9, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 4
  store i8 2, i8* %347, align 1
  %348 = load i8*, i8** %9, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 6
  store i8 -128, i8* %349, align 1
  %350 = load i8*, i8** %9, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 8
  store i8 24, i8* %351, align 1
  %352 = load i8*, i8** %9, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 10
  store i8 -126, i8* %353, align 1
  br label %461

354:                                              ; preds = %332
  %355 = load i8*, i8** %10, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 2
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = icmp eq i32 136, %358
  br i1 %359, label %360, label %372

360:                                              ; preds = %354
  %361 = load i8*, i8** %10, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 2
  %363 = load i8, i8* %362, align 1
  %364 = load i8*, i8** %9, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 1
  store i8 %363, i8* %365, align 1
  %366 = load i8*, i8** %9, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 4
  %368 = load i32, i32* %16, align 4
  %369 = call zeroext i8 @inquiry_evpd_88(i8* %367, i32 %368)
  %370 = load i8*, i8** %9, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 3
  store i8 %369, i8* %371, align 1
  br label %460

372:                                              ; preds = %354
  %373 = load i8*, i8** %10, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 2
  %375 = load i8, i8* %374, align 1
  %376 = zext i8 %375 to i32
  %377 = icmp eq i32 137, %376
  br i1 %377, label %378, label %397

378:                                              ; preds = %372
  %379 = load i8*, i8** %10, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 2
  %381 = load i8, i8* %380, align 1
  %382 = load i8*, i8** %9, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 1
  store i8 %381, i8* %383, align 1
  %384 = load i8*, i8** %9, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 4
  %386 = call i32 @inquiry_evpd_89(i8* %385)
  store i32 %386, i32* %12, align 4
  %387 = load i32, i32* %12, align 4
  %388 = ashr i32 %387, 8
  %389 = trunc i32 %388 to i8
  %390 = load i8*, i8** %9, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 2
  store i8 %389, i8* %391, align 1
  %392 = load i32, i32* %12, align 4
  %393 = and i32 %392, 255
  %394 = trunc i32 %393 to i8
  %395 = load i8*, i8** %9, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 3
  store i8 %394, i8* %396, align 1
  br label %459

397:                                              ; preds = %372
  %398 = load i8*, i8** %10, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 2
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = icmp eq i32 176, %401
  br i1 %402, label %403, label %414

403:                                              ; preds = %397
  %404 = load i8*, i8** %10, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 2
  %406 = load i8, i8* %405, align 1
  %407 = load i8*, i8** %9, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 1
  store i8 %406, i8* %408, align 1
  %409 = load i8*, i8** %9, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 4
  %411 = call zeroext i8 @inquiry_evpd_b0(i8* %410)
  %412 = load i8*, i8** %9, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 3
  store i8 %411, i8* %413, align 1
  br label %458

414:                                              ; preds = %397
  %415 = load i8*, i8** %10, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 2
  %417 = load i8, i8* %416, align 1
  %418 = zext i8 %417 to i32
  %419 = icmp eq i32 177, %418
  br i1 %419, label %420, label %431

420:                                              ; preds = %414
  %421 = load i8*, i8** %10, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 2
  %423 = load i8, i8* %422, align 1
  %424 = load i8*, i8** %9, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 1
  store i8 %423, i8* %425, align 1
  %426 = load i8*, i8** %9, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 4
  %428 = call zeroext i8 @inquiry_evpd_b1(i8* %427)
  %429 = load i8*, i8** %9, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 3
  store i8 %428, i8* %430, align 1
  br label %457

431:                                              ; preds = %414
  %432 = load i8*, i8** %10, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 2
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp eq i32 178, %435
  br i1 %436, label %437, label %448

437:                                              ; preds = %431
  %438 = load i8*, i8** %10, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 2
  %440 = load i8, i8* %439, align 1
  %441 = load i8*, i8** %9, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 1
  store i8 %440, i8* %442, align 1
  %443 = load i8*, i8** %9, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 4
  %445 = call zeroext i8 @inquiry_evpd_b2(i8* %444)
  %446 = load i8*, i8** %9, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 3
  store i8 %445, i8* %447, align 1
  br label %456

448:                                              ; preds = %431
  %449 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %450 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %451 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %452 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %449, i32 %450, i32 %451, i32 0)
  %453 = load i8*, i8** %9, align 8
  %454 = call i32 @kfree(i8* %453)
  %455 = load i32, i32* @check_condition_result, align 4
  store i32 %455, i32* %4, align 4
  br label %595

456:                                              ; preds = %437
  br label %457

457:                                              ; preds = %456, %420
  br label %458

458:                                              ; preds = %457, %403
  br label %459

459:                                              ; preds = %458, %378
  br label %460

460:                                              ; preds = %459, %360
  br label %461

461:                                              ; preds = %460, %338
  br label %462

462:                                              ; preds = %461, %329
  br label %463

463:                                              ; preds = %462, %288
  br label %464

464:                                              ; preds = %463, %271
  br label %465

465:                                              ; preds = %464, %249
  br label %466

466:                                              ; preds = %465, %228
  br label %467

467:                                              ; preds = %466, %216
  %468 = load i8*, i8** %9, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 2
  %470 = load i8, i8* %469, align 1
  %471 = zext i8 %470 to i32
  %472 = shl i32 %471, 8
  %473 = load i8*, i8** %9, align 8
  %474 = getelementptr inbounds i8, i8* %473, i64 3
  %475 = load i8, i8* %474, align 1
  %476 = zext i8 %475 to i32
  %477 = add nsw i32 %472, %476
  %478 = add nsw i32 %477, 4
  %479 = load i32, i32* %11, align 4
  %480 = call i32 @min(i32 %478, i32 %479)
  store i32 %480, i32* %17, align 4
  %481 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %482 = load i8*, i8** %9, align 8
  %483 = load i32, i32* %17, align 4
  %484 = load i32, i32* @SDEBUG_MAX_INQ_ARR_SZ, align 4
  %485 = call i32 @min(i32 %483, i32 %484)
  %486 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %481, i8* %482, i32 %485)
  store i32 %486, i32* %13, align 4
  %487 = load i8*, i8** %9, align 8
  %488 = call i32 @kfree(i8* %487)
  %489 = load i32, i32* %13, align 4
  store i32 %489, i32* %4, align 4
  br label %595

490:                                              ; preds = %80
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %6, align 4
  %493 = call i64 @DEV_REMOVEABLE(i32 %492)
  %494 = icmp ne i64 %493, 0
  %495 = zext i1 %494 to i64
  %496 = select i1 %494, i32 128, i32 0
  %497 = trunc i32 %496 to i8
  %498 = load i8*, i8** %9, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 1
  store i8 %497, i8* %499, align 1
  %500 = load i8, i8* @scsi_debug_scsi_level, align 1
  %501 = load i8*, i8** %9, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 2
  store i8 %500, i8* %502, align 1
  %503 = load i8*, i8** %9, align 8
  %504 = getelementptr inbounds i8, i8* %503, i64 3
  store i8 2, i8* %504, align 1
  %505 = load i32, i32* @SDEBUG_LONG_INQ_SZ, align 4
  %506 = sub nsw i32 %505, 5
  %507 = trunc i32 %506 to i8
  %508 = load i8*, i8** %9, align 8
  %509 = getelementptr inbounds i8, i8* %508, i64 4
  store i8 %507, i8* %509, align 1
  %510 = load i64, i64* @scsi_debug_dif, align 8
  %511 = icmp ne i64 %510, 0
  %512 = zext i1 %511 to i64
  %513 = select i1 %511, i32 1, i32 0
  %514 = trunc i32 %513 to i8
  %515 = load i8*, i8** %9, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 5
  store i8 %514, i8* %516, align 1
  %517 = load i64, i64* @scsi_debug_vpd_use_hostno, align 8
  %518 = icmp eq i64 0, %517
  br i1 %518, label %519, label %522

519:                                              ; preds = %491
  %520 = load i8*, i8** %9, align 8
  %521 = getelementptr inbounds i8, i8* %520, i64 5
  store i8 16, i8* %521, align 1
  br label %522

522:                                              ; preds = %519, %491
  %523 = load i8*, i8** %9, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 6
  store i8 16, i8* %524, align 1
  %525 = load i8*, i8** %9, align 8
  %526 = getelementptr inbounds i8, i8* %525, i64 7
  store i8 10, i8* %526, align 1
  %527 = load i8*, i8** %9, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 8
  %529 = load i8*, i8** @inq_vendor_id, align 8
  %530 = call i32 @memcpy(i8* %528, i8* %529, i32 8)
  %531 = load i8*, i8** %9, align 8
  %532 = getelementptr inbounds i8, i8* %531, i64 16
  %533 = load i8*, i8** @inq_product_id, align 8
  %534 = call i32 @memcpy(i8* %532, i8* %533, i32 16)
  %535 = load i8*, i8** %9, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 32
  %537 = load i8*, i8** @inq_product_rev, align 8
  %538 = call i32 @memcpy(i8* %536, i8* %537, i32 4)
  %539 = load i8*, i8** %9, align 8
  %540 = getelementptr inbounds i8, i8* %539, i64 58
  store i8 0, i8* %540, align 1
  %541 = load i8*, i8** %9, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 59
  store i8 119, i8* %542, align 1
  %543 = load i8*, i8** %9, align 8
  %544 = getelementptr inbounds i8, i8* %543, i64 60
  store i8 3, i8* %544, align 1
  %545 = load i8*, i8** %9, align 8
  %546 = getelementptr inbounds i8, i8* %545, i64 61
  store i8 20, i8* %546, align 1
  store i32 62, i32* %12, align 4
  %547 = load i32, i32* @scsi_debug_ptype, align 4
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %560

549:                                              ; preds = %522
  %550 = load i8*, i8** %9, align 8
  %551 = load i32, i32* %12, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %12, align 4
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds i8, i8* %550, i64 %553
  store i8 3, i8* %554, align 1
  %555 = load i8*, i8** %9, align 8
  %556 = load i32, i32* %12, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %12, align 4
  %558 = sext i32 %556 to i64
  %559 = getelementptr inbounds i8, i8* %555, i64 %558
  store i8 61, i8* %559, align 1
  br label %575

560:                                              ; preds = %522
  %561 = load i32, i32* @scsi_debug_ptype, align 4
  %562 = icmp eq i32 %561, 1
  br i1 %562, label %563, label %574

563:                                              ; preds = %560
  %564 = load i8*, i8** %9, align 8
  %565 = load i32, i32* %12, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %12, align 4
  %567 = sext i32 %565 to i64
  %568 = getelementptr inbounds i8, i8* %564, i64 %567
  store i8 3, i8* %568, align 1
  %569 = load i8*, i8** %9, align 8
  %570 = load i32, i32* %12, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %12, align 4
  %572 = sext i32 %570 to i64
  %573 = getelementptr inbounds i8, i8* %569, i64 %572
  store i8 96, i8* %573, align 1
  br label %574

574:                                              ; preds = %563, %560
  br label %575

575:                                              ; preds = %574, %549
  %576 = load i8*, i8** %9, align 8
  %577 = load i32, i32* %12, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %12, align 4
  %579 = sext i32 %577 to i64
  %580 = getelementptr inbounds i8, i8* %576, i64 %579
  store i8 12, i8* %580, align 1
  %581 = load i8*, i8** %9, align 8
  %582 = load i32, i32* %12, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %12, align 4
  %584 = sext i32 %582 to i64
  %585 = getelementptr inbounds i8, i8* %581, i64 %584
  store i8 15, i8* %585, align 1
  %586 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %587 = load i8*, i8** %9, align 8
  %588 = load i32, i32* %11, align 4
  %589 = load i32, i32* @SDEBUG_LONG_INQ_SZ, align 4
  %590 = call i32 @min(i32 %588, i32 %589)
  %591 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %586, i8* %587, i32 %590)
  store i32 %591, i32* %13, align 4
  %592 = load i8*, i8** %9, align 8
  %593 = call i32 @kfree(i8* %592)
  %594 = load i32, i32* %13, align 4
  store i32 %594, i32* %4, align 4
  br label %595

595:                                              ; preds = %575, %467, %448, %72, %39
  %596 = load i32, i32* %4, align 4
  ret i32 %596
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mk_sense_buffer(%struct.sdebug_dev_info*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @scsi_debug_lbp(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i8 @inquiry_evpd_83(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local zeroext i8 @inquiry_evpd_84(i8*) #1

declare dso_local zeroext i8 @inquiry_evpd_85(i8*) #1

declare dso_local zeroext i8 @inquiry_evpd_88(i8*, i32) #1

declare dso_local i32 @inquiry_evpd_89(i8*) #1

declare dso_local zeroext i8 @inquiry_evpd_b0(i8*) #1

declare dso_local zeroext i8 @inquiry_evpd_b1(i8*) #1

declare dso_local zeroext i8 @inquiry_evpd_b2(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i64 @DEV_REMOVEABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
