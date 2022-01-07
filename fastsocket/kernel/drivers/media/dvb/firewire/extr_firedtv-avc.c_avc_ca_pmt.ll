; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_ca_pmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_ca_pmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i32*, i32, i32 }
%struct.avc_response_frame = type { i32 }

@avc_debug = common dso_local global i32 0, align 4
@AVC_DEBUG_APPLICATION_PMT = common dso_local global i32 0, align 4
@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@EN50221_LIST_MANAGEMENT_ONLY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [33 x i8] c"forcing list_management to ONLY\0A\00", align 1
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i32 0, align 4
@SFE_VENDOR_OPCODE_HOST2CA = common dso_local global i32 0, align 4
@SFE_VENDOR_TAG_CA_PMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid pmt_cmd_id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid pmt_cmd_id %d at stream level\0A\00", align 1
@AVC_RESPONSE_ACCEPTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"CA PMT failed with response 0x%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_ca_pmt(%struct.firedtv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.avc_command_frame*, align 8
  %8 = alloca %struct.avc_response_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %18 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %21, %struct.avc_command_frame** %7, align 8
  %22 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %23 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %26, %struct.avc_response_frame** %8, align 8
  %27 = load i32, i32* @avc_debug, align 4
  %28 = load i32, i32* @AVC_DEBUG_APPLICATION_PMT, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @debug_pmt(i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %38 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %41 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %42 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %44 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %45 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %43, %46
  %48 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %49 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %51 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %52 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @EN50221_LIST_MANAGEMENT_ONLY, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %36
  %61 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %62 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_info(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %65 = load i8, i8* @EN50221_LIST_MANAGEMENT_ONLY, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 1
  br label %68

68:                                               ; preds = %60, %36
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %76, 15
  %78 = shl i32 %77, 8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %86, %68
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 6
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_0, align 4
  %95 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %96 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_1, align 4
  %100 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %101 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_2, align 4
  %105 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %106 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* @SFE_VENDOR_OPCODE_HOST2CA, align 4
  %110 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %111 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  store i32 %109, i32* %113, align 4
  %114 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %115 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32 0, i32* %117, align 4
  %118 = load i32, i32* @SFE_VENDOR_TAG_CA_PMT, align 4
  %119 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %120 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %118, i32* %122, align 4
  %123 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %124 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %129 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 10
  store i32 %127, i32* %131, align 4
  %132 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %133 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 11
  store i32 1, i32* %135, align 4
  %136 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %137 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 12
  store i32 2, i32* %139, align 4
  %140 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %141 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 13
  store i32 128, i32* %143, align 4
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %149 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 15
  store i32 %147, i32* %151, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %157 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 16
  store i32 %155, i32* %159, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %165 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 17
  store i32 %163, i32* %167, align 4
  %168 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %169 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 18
  store i32 0, i32* %171, align 4
  %172 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %173 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 19
  store i32 0, i32* %175, align 4
  %176 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %177 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 20
  store i32 31, i32* %179, align 4
  %180 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %181 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 21
  store i32 255, i32* %183, align 4
  %184 = load i32, i32* %10, align 4
  %185 = ashr i32 %184, 8
  %186 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %187 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 22
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %10, align 4
  %191 = and i32 %190, 255
  %192 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %193 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 23
  store i32 %191, i32* %195, align 4
  store i32 6, i32* %12, align 4
  store i32 24, i32* %13, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %236

198:                                              ; preds = %89
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %217

208:                                              ; preds = %198
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 4
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %213 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @dev_err(i32 %214, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %211, %208, %198
  %218 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %219 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i8*, i8** %5, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @memcpy(i32* %223, i8* %227, i32 %228)
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %13, align 4
  br label %236

236:                                              ; preds = %217, %89
  br label %237

237:                                              ; preds = %366, %236
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %367

241:                                              ; preds = %237
  %242 = load i8*, i8** %5, align 8
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %242, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %250 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %13, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %248, i32* %255, align 4
  %256 = load i8*, i8** %5, align 8
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %256, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %264 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %13, align 4
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  store i32 %262, i32* %269, align 4
  %270 = load i8*, i8** %5, align 8
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %12, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %278 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  store i32 %276, i32* %283, align 4
  %284 = load i8*, i8** %5, align 8
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = and i32 %289, 15
  %291 = shl i32 %290, 8
  %292 = load i8*, i8** %5, align 8
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %292, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = add nsw i32 %291, %298
  store i32 %299, i32* %14, align 4
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, 2
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %14, align 4
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %241
  %305 = load i32, i32* %14, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %14, align 4
  br label %307

307:                                              ; preds = %304, %241
  %308 = load i32, i32* %14, align 4
  %309 = ashr i32 %308, 8
  %310 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %311 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %13, align 4
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32 %309, i32* %316, align 4
  %317 = load i32, i32* %14, align 4
  %318 = and i32 %317, 255
  %319 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %320 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %13, align 4
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  store i32 %318, i32* %325, align 4
  %326 = load i32, i32* %14, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %366

328:                                              ; preds = %307
  %329 = load i8*, i8** %5, align 8
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %12, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  store i32 %335, i32* %11, align 4
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 1
  br i1 %337, label %338, label %347

338:                                              ; preds = %328
  %339 = load i32, i32* %11, align 4
  %340 = icmp ne i32 %339, 4
  br i1 %340, label %341, label %347

341:                                              ; preds = %338
  %342 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %343 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %11, align 4
  %346 = call i32 @dev_err(i32 %344, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %341, %338, %328
  %348 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %349 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i8*, i8** %5, align 8
  %355 = load i32, i32* %12, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  %358 = load i32, i32* %14, align 4
  %359 = call i32 @memcpy(i32* %353, i8* %357, i32 %358)
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* %12, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %12, align 4
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %13, align 4
  br label %366

366:                                              ; preds = %347, %307
  br label %237

367:                                              ; preds = %237
  %368 = load i32, i32* %13, align 4
  %369 = add nsw i32 %368, 4
  store i32 %369, i32* %13, align 4
  %370 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %371 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 7
  store i32 130, i32* %373, align 4
  %374 = load i32, i32* %13, align 4
  %375 = sub nsw i32 %374, 10
  %376 = ashr i32 %375, 8
  %377 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %378 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 8
  store i32 %376, i32* %380, align 4
  %381 = load i32, i32* %13, align 4
  %382 = sub nsw i32 %381, 10
  %383 = and i32 %382, 255
  %384 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %385 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 9
  store i32 %383, i32* %387, align 4
  %388 = load i32, i32* %13, align 4
  %389 = sub nsw i32 %388, 15
  %390 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %391 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 14
  store i32 %389, i32* %393, align 4
  %394 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %395 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %394, i32 0, i32 1
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 10
  %398 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %399 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 12
  %402 = load i32, i32* %401, align 4
  %403 = sub nsw i32 %402, 1
  %404 = call i32 @crc32_be(i32 0, i32* %397, i32 %403)
  store i32 %404, i32* %15, align 4
  %405 = load i32, i32* %15, align 4
  %406 = ashr i32 %405, 24
  %407 = and i32 %406, 255
  %408 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %409 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %13, align 4
  %412 = sub nsw i32 %411, 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %410, i64 %413
  store i32 %407, i32* %414, align 4
  %415 = load i32, i32* %15, align 4
  %416 = ashr i32 %415, 16
  %417 = and i32 %416, 255
  %418 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %419 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %13, align 4
  %422 = sub nsw i32 %421, 3
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %420, i64 %423
  store i32 %417, i32* %424, align 4
  %425 = load i32, i32* %15, align 4
  %426 = ashr i32 %425, 8
  %427 = and i32 %426, 255
  %428 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %429 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %13, align 4
  %432 = sub nsw i32 %431, 2
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  store i32 %427, i32* %434, align 4
  %435 = load i32, i32* %15, align 4
  %436 = ashr i32 %435, 0
  %437 = and i32 %436, 255
  %438 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %439 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %438, i32 0, i32 1
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %13, align 4
  %442 = sub nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %440, i64 %443
  store i32 %437, i32* %444, align 4
  %445 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %446 = load i32, i32* %13, align 4
  %447 = call i32 @pad_operands(%struct.avc_command_frame* %445, i32 %446)
  %448 = load i32, i32* %13, align 4
  %449 = add nsw i32 3, %448
  %450 = call i32 @ALIGN(i32 %449, i32 4)
  %451 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %452 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %451, i32 0, i32 3
  store i32 %450, i32* %452, align 4
  %453 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %454 = call i32 @avc_write(%struct.firedtv* %453)
  store i32 %454, i32* %16, align 4
  %455 = load i32, i32* %16, align 4
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %458

457:                                              ; preds = %367
  br label %475

458:                                              ; preds = %367
  %459 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %460 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @AVC_RESPONSE_ACCEPTED, align 4
  %463 = icmp ne i32 %461, %462
  br i1 %463, label %464, label %474

464:                                              ; preds = %458
  %465 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %466 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %469 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @dev_err(i32 %467, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %470)
  %472 = load i32, i32* @EFAULT, align 4
  %473 = sub nsw i32 0, %472
  store i32 %473, i32* %16, align 4
  br label %474

474:                                              ; preds = %464, %458
  br label %475

475:                                              ; preds = %474, %457
  %476 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %477 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %476, i32 0, i32 1
  %478 = call i32 @mutex_unlock(i32* %477)
  %479 = load i32, i32* %16, align 4
  ret i32 %479
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_pmt(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @crc32_be(i32, i32*, i32) #1

declare dso_local i32 @pad_operands(%struct.avc_command_frame*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
