; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_set_device_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_set_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, i32, i32 (i32, i32)*, i32, i32 (i32, i32*)*, i32, i32 }
%struct.SmsMsgData_ST = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"set device mode to %d\00", align 1
@SMS_DEVICE_FAMILY2 = common dso_local global i32 0, align 4
@DEVICE_MODE_DVBT = common dso_local global i32 0, align 4
@DEVICE_MODE_RAW_TUNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid mode specified %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMS_DEVICE_NOT_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"mode detect failed %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"device mode %d already set\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"error %d loading firmware: %s, trying again with default firmware\00", align 1
@smscore_fw_lkup = common dso_local global i8*** null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"error %d loading firmware: %s\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"firmware download success: %s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"mode %d supported by running firmware\00", align 1
@SMS_DMA_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@MSG_SMS_INIT_DEVICE_REQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"Could not allocate buffer for init device message.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DEVICE_MODE_DVBT_BDA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"return error code %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smscore_set_device_mode(%struct.smscore_device_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.SmsMsgData_ST*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @sms_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %14 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %153

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DEVICE_MODE_DVBT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DEVICE_MODE_RAW_TUNER, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %228

32:                                               ; preds = %23
  %33 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %34 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @smscore_registry_setmode(i32 %35, i32 %36)
  %38 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %39 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SMS_DEVICE_NOT_READY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %32
  %45 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %46 = call i32 @smscore_detect_mode(%struct.smscore_device_t* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %228

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %56 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @sms_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 0, i32* %3, align 4
  br label %228

63:                                               ; preds = %54
  %64 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %65 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %112, label %71

71:                                               ; preds = %63
  %72 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %73 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @smscore_registry_gettype(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @sms_get_fw_name(%struct.smscore_device_t* %76, i32 %77, i32 %78)
  store i8* %79, i8** %9, align 8
  %80 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @smscore_load_firmware_from_file(%struct.smscore_device_t* %80, i8* %81, i32* null)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %71
  %86 = load i32, i32* %7, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @sms_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %86, i8* %87)
  %89 = load i8***, i8**** @smscore_fw_lkup, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8**, i8*** %89, i64 %91
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %9, align 8
  %98 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @smscore_load_firmware_from_file(%struct.smscore_device_t* %98, i8* %99, i32* null)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %85
  %104 = load i32, i32* %7, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @sms_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %104, i8* %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %228

108:                                              ; preds = %85
  br label %109

109:                                              ; preds = %108, %71
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @sms_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  br label %115

112:                                              ; preds = %63
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @sms_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i64, i64* @SMS_DMA_ALIGNMENT, align 8
  %117 = add i64 16, %116
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = load i32, i32* @GFP_DMA, align 4
  %120 = or i32 %118, %119
  %121 = call i8* @kmalloc(i64 %117, i32 %120)
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %148

124:                                              ; preds = %115
  %125 = load i8*, i8** %6, align 8
  %126 = call i64 @SMS_ALIGN_ADDRESS(i8* %125)
  %127 = inttoptr i64 %126 to %struct.SmsMsgData_ST*
  store %struct.SmsMsgData_ST* %127, %struct.SmsMsgData_ST** %10, align 8
  %128 = load %struct.SmsMsgData_ST*, %struct.SmsMsgData_ST** %10, align 8
  %129 = getelementptr inbounds %struct.SmsMsgData_ST, %struct.SmsMsgData_ST* %128, i32 0, i32 1
  %130 = load i32, i32* @MSG_SMS_INIT_DEVICE_REQ, align 4
  %131 = call i32 @SMS_INIT_MSG(%struct.TYPE_2__* %129, i32 %130, i32 16)
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.SmsMsgData_ST*, %struct.SmsMsgData_ST** %10, align 8
  %134 = getelementptr inbounds %struct.SmsMsgData_ST, %struct.SmsMsgData_ST* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %138 = load %struct.SmsMsgData_ST*, %struct.SmsMsgData_ST** %10, align 8
  %139 = load %struct.SmsMsgData_ST*, %struct.SmsMsgData_ST** %10, align 8
  %140 = getelementptr inbounds %struct.SmsMsgData_ST, %struct.SmsMsgData_ST* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %144 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %143, i32 0, i32 7
  %145 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %137, %struct.SmsMsgData_ST* %138, i32 %142, i32* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @kfree(i8* %146)
  br label %152

148:                                              ; preds = %115
  %149 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %148, %124
  br label %207

153:                                              ; preds = %2
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @DEVICE_MODE_DVBT, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @DEVICE_MODE_DVBT_BDA, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %5, align 4
  %163 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %228

166:                                              ; preds = %157
  %167 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %168 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @smscore_registry_setmode(i32 %169, i32 %170)
  %172 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %173 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %172, i32 0, i32 5
  %174 = load i32 (i32, i32*)*, i32 (i32, i32*)** %173, align 8
  %175 = icmp ne i32 (i32, i32*)* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %166
  %177 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %178 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %177, i32 0, i32 5
  %179 = load i32 (i32, i32*)*, i32 (i32, i32*)** %178, align 8
  %180 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %181 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %184 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %183, i32 0, i32 1
  %185 = call i32 %179(i32 %182, i32* %184)
  br label %186

186:                                              ; preds = %176, %166
  %187 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %188 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %186
  %193 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %194 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %193, i32 0, i32 3
  %195 = load i32 (i32, i32)*, i32 (i32, i32)** %194, align 8
  %196 = icmp ne i32 (i32, i32)* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %199 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %198, i32 0, i32 3
  %200 = load i32 (i32, i32)*, i32 (i32, i32)** %199, align 8
  %201 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %202 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = call i32 %200(i32 %203, i32 %204)
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %197, %192, %186
  br label %207

207:                                              ; preds = %206, %152
  %208 = load i32, i32* %7, align 4
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %213 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @SMS_DEVICE_NOT_READY, align 4
  %215 = xor i32 %214, -1
  %216 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %217 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %210, %207
  %221 = load i32, i32* %7, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* %7, align 4
  %225 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %161, %103, %60, %49, %27
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @sms_debug(i8*, i32) #1

declare dso_local i32 @sms_err(i8*, ...) #1

declare dso_local i32 @smscore_registry_setmode(i32, i32) #1

declare dso_local i32 @smscore_detect_mode(%struct.smscore_device_t*) #1

declare dso_local i32 @sms_info(i8*, i32) #1

declare dso_local i32 @smscore_registry_gettype(i32) #1

declare dso_local i8* @sms_get_fw_name(%struct.smscore_device_t*, i32, i32) #1

declare dso_local i32 @smscore_load_firmware_from_file(%struct.smscore_device_t*, i8*, i32*) #1

declare dso_local i32 @sms_warn(i8*, i32, i8*) #1

declare dso_local i32 @sms_log(i8*, i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @SMS_ALIGN_ADDRESS(i8*) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t*, %struct.SmsMsgData_ST*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
