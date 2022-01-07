; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICACRT_msg_to_type50CRT_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICACRT_msg_to_type50CRT_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i64 }
%struct.ap_message = type { i32, %struct.type50_crb3_msg* }
%struct.type50_crb3_msg = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ica_rsa_modexpo_crt = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.type50_crb1_msg = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.type50_crb2_msg = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }

@TYPE50_TYPE_CODE = common dso_local global i8* null, align 8
@TYPE50_CRB1_FMT = common dso_local global i32 0, align 4
@TYPE50_CRB2_FMT = common dso_local global i32 0, align 4
@CEX3A_MAX_MOD_SIZE = common dso_local global i64 0, align 8
@TYPE50_CRB3_FMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSGTYPE_ADJUSTMENT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo_crt*)* @ICACRT_msg_to_type50CRT_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICACRT_msg_to_type50CRT_msg(%struct.zcrypt_device* %0, %struct.ap_message* %1, %struct.ica_rsa_modexpo_crt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_device*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_rsa_modexpo_crt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.type50_crb1_msg*, align 8
  %17 = alloca %struct.type50_crb2_msg*, align 8
  %18 = alloca %struct.type50_crb3_msg*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_rsa_modexpo_crt* %2, %struct.ica_rsa_modexpo_crt** %7, align 8
  %19 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %20 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 128
  br i1 %25, label %26, label %94

26:                                               ; preds = %3
  %27 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %28 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %27, i32 0, i32 1
  %29 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %28, align 8
  %30 = bitcast %struct.type50_crb3_msg* %29 to %struct.type50_crb1_msg*
  store %struct.type50_crb1_msg* %30, %struct.type50_crb1_msg** %16, align 8
  %31 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %32 = bitcast %struct.type50_crb1_msg* %31 to %struct.type50_crb3_msg*
  %33 = call i32 @memset(%struct.type50_crb3_msg* %32, i32 0, i32 72)
  %34 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %35 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %34, i32 0, i32 0
  store i32 72, i32* %35, align 8
  %36 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %37 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %38 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %41 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 72, i32* %42, align 8
  %43 = load i32, i32* @TYPE50_CRB1_FMT, align 4
  %44 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %45 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %47 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8* %53, i8** %10, align 8
  %54 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %55 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8* %61, i8** %11, align 8
  %62 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %63 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8* %69, i8** %12, align 8
  %70 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %71 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8* %77, i8** %13, align 8
  %78 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %79 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8* %85, i8** %14, align 8
  %86 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %87 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8* %93, i8** %15, align 8
  br label %245

94:                                               ; preds = %3
  %95 = load i32, i32* %8, align 4
  %96 = icmp sle i32 %95, 256
  br i1 %96, label %97, label %165

97:                                               ; preds = %94
  %98 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %99 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %98, i32 0, i32 1
  %100 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %99, align 8
  %101 = bitcast %struct.type50_crb3_msg* %100 to %struct.type50_crb2_msg*
  store %struct.type50_crb2_msg* %101, %struct.type50_crb2_msg** %17, align 8
  %102 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %103 = bitcast %struct.type50_crb2_msg* %102 to %struct.type50_crb3_msg*
  %104 = call i32 @memset(%struct.type50_crb3_msg* %103, i32 0, i32 72)
  %105 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %106 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %105, i32 0, i32 0
  store i32 72, i32* %106, align 8
  %107 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %108 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %109 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %112 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 72, i32* %113, align 8
  %114 = load i32, i32* @TYPE50_CRB2_FMT, align 4
  %115 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %116 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %118 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8* %124, i8** %10, align 8
  %125 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %126 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8* %132, i8** %11, align 8
  %133 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %134 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8* %140, i8** %12, align 8
  %141 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %142 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8* %148, i8** %13, align 8
  %149 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %150 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %149, i32 0, i32 4
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8* %156, i8** %14, align 8
  %157 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %158 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %157, i32 0, i32 5
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 0, %162
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8* %164, i8** %15, align 8
  br label %244

165:                                              ; preds = %94
  %166 = load i32, i32* %8, align 4
  %167 = icmp sle i32 %166, 512
  br i1 %167, label %168, label %240

168:                                              ; preds = %165
  %169 = load %struct.zcrypt_device*, %struct.zcrypt_device** %5, align 8
  %170 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CEX3A_MAX_MOD_SIZE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %240

174:                                              ; preds = %168
  %175 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %176 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %175, i32 0, i32 1
  %177 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %176, align 8
  store %struct.type50_crb3_msg* %177, %struct.type50_crb3_msg** %18, align 8
  %178 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %179 = call i32 @memset(%struct.type50_crb3_msg* %178, i32 0, i32 72)
  %180 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %181 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %180, i32 0, i32 0
  store i32 72, i32* %181, align 8
  %182 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %183 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %184 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  store i8* %182, i8** %185, align 8
  %186 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %187 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i32 72, i32* %188, align 8
  %189 = load i32, i32* @TYPE50_CRB3_FMT, align 4
  %190 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %191 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 8
  %192 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %193 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = sub i64 0, %197
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8* %199, i8** %10, align 8
  %200 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %201 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = sub i64 0, %205
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8* %207, i8** %11, align 8
  %208 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %209 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = sub i64 0, %213
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8* %215, i8** %12, align 8
  %216 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %217 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %216, i32 0, i32 3
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = sub i64 0, %221
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  store i8* %223, i8** %13, align 8
  %224 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %225 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %224, i32 0, i32 4
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  store i8* %231, i8** %14, align 8
  %232 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %233 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %232, i32 0, i32 5
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = sub i64 0, %237
  %239 = getelementptr inbounds i8, i8* %235, i64 %238
  store i8* %239, i8** %15, align 8
  br label %243

240:                                              ; preds = %168, %165
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %4, align 4
  br label %303

243:                                              ; preds = %174
  br label %244

244:                                              ; preds = %243, %97
  br label %245

245:                                              ; preds = %244, %26
  %246 = load i8*, i8** %10, align 8
  %247 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %248 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @MSGTYPE_ADJUSTMENT, align 8
  %251 = add nsw i64 %249, %250
  %252 = load i32, i32* %9, align 4
  %253 = call i64 @copy_from_user(i8* %246, i64 %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %299, label %255

255:                                              ; preds = %245
  %256 = load i8*, i8** %11, align 8
  %257 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %258 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i64 @copy_from_user(i8* %256, i64 %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %299, label %263

263:                                              ; preds = %255
  %264 = load i8*, i8** %12, align 8
  %265 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %266 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @MSGTYPE_ADJUSTMENT, align 8
  %269 = add nsw i64 %267, %268
  %270 = load i32, i32* %9, align 4
  %271 = call i64 @copy_from_user(i8* %264, i64 %269, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %299, label %273

273:                                              ; preds = %263
  %274 = load i8*, i8** %13, align 8
  %275 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %276 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = call i64 @copy_from_user(i8* %274, i64 %277, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %299, label %281

281:                                              ; preds = %273
  %282 = load i8*, i8** %14, align 8
  %283 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %284 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @MSGTYPE_ADJUSTMENT, align 8
  %287 = add nsw i64 %285, %286
  %288 = load i32, i32* %9, align 4
  %289 = call i64 @copy_from_user(i8* %282, i64 %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %281
  %292 = load i8*, i8** %15, align 8
  %293 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %294 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %8, align 4
  %297 = call i64 @copy_from_user(i8* %292, i64 %295, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %291, %281, %273, %263, %255, %245
  %300 = load i32, i32* @EFAULT, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %4, align 4
  br label %303

302:                                              ; preds = %291
  store i32 0, i32* %4, align 4
  br label %303

303:                                              ; preds = %302, %299, %240
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @memset(%struct.type50_crb3_msg*, i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
