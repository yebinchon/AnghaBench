; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.device = type { i32 }
%struct.smsclient_params_t = type { i32, %struct.smsdvb_client_t*, i32, i32, i32 }
%struct.smsdvb_client_t = type { i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, %struct.smscore_device_t*, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"kmalloc() failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dvb_register_adapter() failed %d\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@smsdvb_start_feed = common dso_local global i32 0, align 4
@smsdvb_stop_feed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"dvb_dmx_init failed %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"dvb_dmxdev_init failed %d\00", align 1
@smsdvb_fe_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"frontend registration failed %d\00", align 1
@MSG_SMS_DVBT_BDA_DATA = common dso_local global i32 0, align 4
@smsdvb_onresponse = common dso_local global i32 0, align 4
@smsdvb_onremove = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"smscore_register_client() failed %d\00", align 1
@g_smsdvb_clientslock = common dso_local global i32 0, align 4
@g_smsdvb_clients = common dso_local global i32 0, align 4
@DVB3_EVENT_HOTPLUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, %struct.device*, i32)* @smsdvb_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_hotplug(%struct.smscore_device_t* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_device_t*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smsclient_params_t, align 8
  %9 = alloca %struct.smsdvb_client_t*, align 8
  %10 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %167

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.smsdvb_client_t* @kzalloc(i32 88, i32 %15)
  store %struct.smsdvb_client_t* %16, %struct.smsdvb_client_t** %9, align 8
  %17 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %18 = icmp ne %struct.smsdvb_client_t* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %167

23:                                               ; preds = %14
  %24 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %25 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %24, i32 0, i32 2
  %26 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %27 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %26)
  %28 = call %struct.TYPE_10__* @sms_get_board(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load i32, i32* @adapter_nr, align 4
  %34 = call i32 @dvb_register_adapter(i32* %25, i32 %30, i32 %31, %struct.device* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %163

40:                                               ; preds = %23
  %41 = load i32, i32* @DMX_TS_FILTERING, align 4
  %42 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %43 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %47 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 32, i32* %48, align 4
  %49 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %50 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i32 32, i32* %51, align 4
  %52 = load i32, i32* @smsdvb_start_feed, align 4
  %53 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %54 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @smsdvb_stop_feed, align 4
  %57 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %58 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %61 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %60, i32 0, i32 3
  %62 = call i32 @dvb_dmx_init(%struct.TYPE_13__* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %40
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %159

68:                                               ; preds = %40
  %69 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %70 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 32, i32* %71, align 8
  %72 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %73 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %76 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %77, align 8
  %78 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %79 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %82 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %81, i32 0, i32 4
  %83 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %84 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %83, i32 0, i32 2
  %85 = call i32 @dvb_dmxdev_init(%struct.TYPE_12__* %82, i32* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %68
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %155

91:                                               ; preds = %68
  %92 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %93 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = call i32 @memcpy(i32* %94, i32* @smsdvb_fe_ops, i32 4)
  %96 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %97 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %96, i32 0, i32 2
  %98 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %99 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %98, i32 0, i32 5
  %100 = call i32 @dvb_register_frontend(i32* %97, %struct.TYPE_11__* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %151

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* @MSG_SMS_DVBT_BDA_DATA, align 4
  %109 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 4
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* @smsdvb_onresponse, align 4
  %111 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 3
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @smsdvb_onremove, align 4
  %113 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %115 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %8, i32 0, i32 1
  store %struct.smsdvb_client_t* %114, %struct.smsdvb_client_t** %115, align 8
  %116 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %117 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %118 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %117, i32 0, i32 9
  %119 = call i32 @smscore_register_client(%struct.smscore_device_t* %116, %struct.smsclient_params_t* %8, i32* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %147

125:                                              ; preds = %106
  %126 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %127 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %128 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %127, i32 0, i32 8
  store %struct.smscore_device_t* %126, %struct.smscore_device_t** %128, align 8
  %129 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %130 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %129, i32 0, i32 7
  %131 = call i32 @init_completion(i32* %130)
  %132 = call i32 @kmutex_lock(i32* @g_smsdvb_clientslock)
  %133 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %134 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %133, i32 0, i32 6
  %135 = call i32 @list_add(i32* %134, i32* @g_smsdvb_clients)
  %136 = call i32 @kmutex_unlock(i32* @g_smsdvb_clientslock)
  %137 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %138 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %137, i32 0, i32 0
  store i32 -1, i32* %138, align 8
  %139 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %140 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %139, i32 0, i32 1
  store i32 -1, i32* %140, align 4
  %141 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %142 = load i32, i32* @DVB3_EVENT_HOTPLUG, align 4
  %143 = call i32 @sms_board_dvb3_event(%struct.smsdvb_client_t* %141, i32 %142)
  %144 = call i32 @sms_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %145 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %146 = call i32 @sms_board_setup(%struct.smscore_device_t* %145)
  store i32 0, i32* %4, align 4
  br label %167

147:                                              ; preds = %122
  %148 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %149 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %148, i32 0, i32 5
  %150 = call i32 @dvb_unregister_frontend(%struct.TYPE_11__* %149)
  br label %151

151:                                              ; preds = %147, %103
  %152 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %153 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %152, i32 0, i32 4
  %154 = call i32 @dvb_dmxdev_release(%struct.TYPE_12__* %153)
  br label %155

155:                                              ; preds = %151, %88
  %156 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %157 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %156, i32 0, i32 3
  %158 = call i32 @dvb_dmx_release(%struct.TYPE_13__* %157)
  br label %159

159:                                              ; preds = %155, %65
  %160 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %161 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %160, i32 0, i32 2
  %162 = call i32 @dvb_unregister_adapter(i32* %161)
  br label %163

163:                                              ; preds = %159, %37
  %164 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %9, align 8
  %165 = call i32 @kfree(%struct.smsdvb_client_t* %164)
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %125, %19, %13
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.smsdvb_client_t* @kzalloc(i32, i32) #1

declare dso_local i32 @sms_err(i8*, ...) #1

declare dso_local i32 @dvb_register_adapter(i32*, i32, i32, %struct.device*, i32) #1

declare dso_local %struct.TYPE_10__* @sms_get_board(i32) #1

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_register_frontend(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @smscore_register_client(%struct.smscore_device_t*, %struct.smsclient_params_t*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kmutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kmutex_unlock(i32*) #1

declare dso_local i32 @sms_board_dvb3_event(%struct.smsdvb_client_t*, i32) #1

declare dso_local i32 @sms_info(i8*) #1

declare dso_local i32 @sms_board_setup(%struct.smscore_device_t*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_11__*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_12__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.smsdvb_client_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
