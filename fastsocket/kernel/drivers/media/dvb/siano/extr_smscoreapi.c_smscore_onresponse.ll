; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_onresponse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_onresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smscore_buffer_t = type { i32, i64, i64 }
%struct.SmsMsgHdr_ST = type { i32, i64, i32 }
%struct.smscore_client_t = type { i32 (i32, %struct.smscore_buffer_t.0*)*, i32 }
%struct.smscore_buffer_t.0 = type opaque
%struct.SmsVersionRes_ST = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@smscore_onresponse.last_sample_time = internal global i64 0, align 8
@smscore_onresponse.data_total = internal global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\0Adata rate %d bytes/secs\00", align 1
@MSG_SMS_HO_PER_SLICES_IND = common dso_local global i32 0, align 4
@MSG_SMS_TRANSMISSION_IND = common dso_local global i32 0, align 4
@DEVICE_MODE_DVBT_BDA = common dso_local global i64 0, align 8
@DVBT_BDA_CONTROL_MSG_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"MSG_SMS_GET_VERSION_EX_RES id %d prots 0x%x ver %d.%d\00", align 1
@DEVICE_MODE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"MSG_SMS_INIT_DEVICE_RES\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"MSG_SW_RELOAD_START_RES\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MSG_SW_RELOAD_EXEC_RES\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"MSG_SMS_SWDOWNLOAD_TRIGGER_RES\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"MSG_SMS_GPIO_CONFIG_EX_RES\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"MSG_SMS_GPIO_SET_LEVEL_RES\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"MSG_SMS_GPIO_GET_LEVEL_RES gpio level %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smscore_onresponse(%struct.smscore_device_t* %0, %struct.smscore_buffer_t* %1) #0 {
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca %struct.smscore_buffer_t*, align 8
  %5 = alloca %struct.SmsMsgHdr_ST*, align 8
  %6 = alloca %struct.smscore_client_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.SmsVersionRes_ST*, align 8
  %10 = alloca i32*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  store %struct.smscore_buffer_t* %1, %struct.smscore_buffer_t** %4, align 8
  %11 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %12 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %16 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = bitcast i32* %19 to %struct.SmsMsgHdr_ST*
  store %struct.SmsMsgHdr_ST* %20, %struct.SmsMsgHdr_ST** %5, align 8
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @jiffies, align 4
  %24 = call i64 @jiffies_to_msecs(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @smscore_onresponse.last_sample_time, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* @smscore_onresponse.last_sample_time, align 8
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @smscore_onresponse.last_sample_time, align 8
  %32 = sub i64 %30, %31
  %33 = icmp ugt i64 %32, 10000
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* @smscore_onresponse.data_total, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @smscore_onresponse.last_sample_time, align 8
  %40 = sub i64 %38, %39
  %41 = udiv i64 %37, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* @smscore_onresponse.last_sample_time, align 8
  store i32 0, i32* @smscore_onresponse.data_total, align 4
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %47 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @smscore_onresponse.data_total, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* @smscore_onresponse.data_total, align 4
  %53 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %54 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MSG_SMS_HO_PER_SLICES_IND, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %45
  %59 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %60 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MSG_SMS_TRANSMISSION_IND, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58, %45
  %65 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %66 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DEVICE_MODE_DVBT_BDA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @DVBT_BDA_CONTROL_MSG_ID, align 4
  %72 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %73 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %77 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %78 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %81 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t* %76, i32 %79, i32 %82)
  store %struct.smscore_client_t* %83, %struct.smscore_client_t** %6, align 8
  %84 = load %struct.smscore_client_t*, %struct.smscore_client_t** %6, align 8
  %85 = icmp ne %struct.smscore_client_t* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %75
  %87 = load %struct.smscore_client_t*, %struct.smscore_client_t** %6, align 8
  %88 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %87, i32 0, i32 0
  %89 = load i32 (i32, %struct.smscore_buffer_t.0*)*, i32 (i32, %struct.smscore_buffer_t.0*)** %88, align 8
  %90 = load %struct.smscore_client_t*, %struct.smscore_client_t** %6, align 8
  %91 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %94 = bitcast %struct.smscore_buffer_t* %93 to %struct.smscore_buffer_t.0*
  %95 = call i32 %89(i32 %92, %struct.smscore_buffer_t.0* %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %86, %75
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %214

99:                                               ; preds = %96
  %100 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %101 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %209 [
    i32 138, label %103
    i32 134, label %142
    i32 128, label %147
    i32 139, label %152
    i32 129, label %156
    i32 130, label %158
    i32 132, label %163
    i32 137, label %167
    i32 135, label %172
    i32 136, label %177
    i32 131, label %192
    i32 133, label %196
  ]

103:                                              ; preds = %99
  %104 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %105 = bitcast %struct.SmsMsgHdr_ST* %104 to %struct.SmsVersionRes_ST*
  store %struct.SmsVersionRes_ST* %105, %struct.SmsVersionRes_ST** %9, align 8
  %106 = load %struct.SmsVersionRes_ST*, %struct.SmsVersionRes_ST** %9, align 8
  %107 = getelementptr inbounds %struct.SmsVersionRes_ST, %struct.SmsVersionRes_ST* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.SmsVersionRes_ST*, %struct.SmsVersionRes_ST** %9, align 8
  %110 = getelementptr inbounds %struct.SmsVersionRes_ST, %struct.SmsVersionRes_ST* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.SmsVersionRes_ST*, %struct.SmsVersionRes_ST** %9, align 8
  %113 = getelementptr inbounds %struct.SmsVersionRes_ST, %struct.SmsVersionRes_ST* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.SmsVersionRes_ST*, %struct.SmsVersionRes_ST** %9, align 8
  %116 = getelementptr inbounds %struct.SmsVersionRes_ST, %struct.SmsVersionRes_ST* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %111, i32 %114, i32 %117)
  %119 = load %struct.SmsVersionRes_ST*, %struct.SmsVersionRes_ST** %9, align 8
  %120 = getelementptr inbounds %struct.SmsVersionRes_ST, %struct.SmsVersionRes_ST* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 255
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  %124 = load i32, i32* @DEVICE_MODE_NONE, align 4
  br label %129

125:                                              ; preds = %103
  %126 = load %struct.SmsVersionRes_ST*, %struct.SmsVersionRes_ST** %9, align 8
  %127 = getelementptr inbounds %struct.SmsVersionRes_ST, %struct.SmsVersionRes_ST* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  br label %129

129:                                              ; preds = %125, %123
  %130 = phi i32 [ %124, %123 ], [ %128, %125 ]
  %131 = sext i32 %130 to i64
  %132 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %133 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.SmsVersionRes_ST*, %struct.SmsVersionRes_ST** %9, align 8
  %135 = getelementptr inbounds %struct.SmsVersionRes_ST, %struct.SmsVersionRes_ST* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %138 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 4
  %139 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %140 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %139, i32 0, i32 11
  %141 = call i32 @complete(i32* %140)
  br label %210

142:                                              ; preds = %99
  %143 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %145 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %144, i32 0, i32 10
  %146 = call i32 @complete(i32* %145)
  br label %210

147:                                              ; preds = %99
  %148 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %150 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %149, i32 0, i32 9
  %151 = call i32 @complete(i32* %150)
  br label %210

152:                                              ; preds = %99
  %153 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %154 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %153, i32 0, i32 8
  %155 = call i32 @complete(i32* %154)
  br label %210

156:                                              ; preds = %99
  %157 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %210

158:                                              ; preds = %99
  %159 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %161 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %160, i32 0, i32 7
  %162 = call i32 @complete(i32* %161)
  br label %210

163:                                              ; preds = %99
  %164 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %165 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %164, i32 0, i32 6
  %166 = call i32 @complete(i32* %165)
  br label %210

167:                                              ; preds = %99
  %168 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %169 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %170 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %169, i32 0, i32 5
  %171 = call i32 @complete(i32* %170)
  br label %210

172:                                              ; preds = %99
  %173 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %174 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %175 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %174, i32 0, i32 4
  %176 = call i32 @complete(i32* %175)
  br label %210

177:                                              ; preds = %99
  %178 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %179 = bitcast %struct.SmsMsgHdr_ST* %178 to i32*
  store i32* %179, i32** %10, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %184 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %186 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i8*, ...) @sms_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  %189 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %190 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %189, i32 0, i32 3
  %191 = call i32 @complete(i32* %190)
  br label %210

192:                                              ; preds = %99
  %193 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %194 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %193, i32 0, i32 2
  %195 = call i32 @complete(i32* %194)
  br label %210

196:                                              ; preds = %99
  %197 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %198 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %199 = bitcast %struct.SmsMsgHdr_ST* %198 to i8*
  %200 = getelementptr inbounds i8, i8* %199, i64 24
  %201 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %202 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = sub i64 %205, 24
  %207 = trunc i64 %206 to i32
  %208 = call i32 @sms_ir_event(%struct.smscore_device_t* %197, i8* %200, i32 %207)
  br label %210

209:                                              ; preds = %99
  br label %210

210:                                              ; preds = %209, %196, %192, %177, %172, %167, %163, %158, %156, %152, %147, %142, %129
  %211 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %212 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %213 = call i32 @smscore_putbuffer(%struct.smscore_device_t* %211, %struct.smscore_buffer_t* %212)
  br label %214

214:                                              ; preds = %210, %96
  ret void
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @sms_debug(i8*, ...) #1

declare dso_local %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @sms_ir_event(%struct.smscore_device_t*, i8*, i32) #1

declare dso_local i32 @smscore_putbuffer(%struct.smscore_device_t*, %struct.smscore_buffer_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
