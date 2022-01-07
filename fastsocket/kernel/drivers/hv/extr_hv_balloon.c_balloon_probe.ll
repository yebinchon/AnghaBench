; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_balloon_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_balloon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32, %struct.hv_device* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hv_device = type { i32 }
%struct.hv_vmbus_device_id = type { i32 }
%struct.dm_version_request = type { i32, i64, %struct.TYPE_15__, %struct.TYPE_13__, i64, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i8*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.dm_capabilities = type { i32, i64, %struct.TYPE_15__, %struct.TYPE_13__, i64, %struct.TYPE_12__ }

@hot_add = common dso_local global i32 0, align 4
@do_hot_add = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@send_buffer = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dm_ring_size = common dso_local global i32 0, align 4
@balloon_onchannelcallback = common dso_local global i32 0, align 4
@dm_device = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@DM_INITIALIZING = common dso_local global i64 0, align 8
@DYNMEM_PROTOCOL_VERSION_WIN7 = common dso_local global i32 0, align 4
@balloon_up = common dso_local global i32 0, align 4
@hot_add_req = common dso_local global i32 0, align 4
@dm_thread_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hv_balloon\00", align 1
@DM_VERSION_REQUEST = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@DYNMEM_PROTOCOL_VERSION_WIN8 = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DM_INIT_ERROR = common dso_local global i64 0, align 8
@DM_CAPABILITIES_REPORT = common dso_local global i32 0, align 4
@DM_INITIALIZED = common dso_local global i64 0, align 8
@hv_online_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @balloon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balloon_probe(%struct.hv_device* %0, %struct.hv_vmbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_vmbus_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_version_request, align 8
  %9 = alloca %struct.dm_capabilities, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_vmbus_device_id* %1, %struct.hv_vmbus_device_id** %5, align 8
  %10 = load i32, i32* @hot_add, align 4
  store i32 %10, i32* @do_hot_add, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @kmalloc(i32 %11, i32 %12)
  store i32 %13, i32* @send_buffer, align 4
  %14 = load i32, i32* @send_buffer, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %151

19:                                               ; preds = %2
  %20 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %21 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @dm_ring_size, align 4
  %24 = load i32, i32* @dm_ring_size, align 4
  %25 = load i32, i32* @balloon_onchannelcallback, align 4
  %26 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %27 = call i32 @vmbus_open(i32 %22, i32 %23, i32 %24, i32* null, i32 0, i32 %25, %struct.hv_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %147

31:                                               ; preds = %19
  %32 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  store %struct.hv_device* %32, %struct.hv_device** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 9), align 8
  %33 = load i64, i64* @DM_INITIALIZING, align 8
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 0), align 8
  %34 = load i32, i32* @DYNMEM_PROTOCOL_VERSION_WIN7, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 8), align 4
  %35 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 3))
  %36 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 7))
  %37 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 6))
  %38 = load i32, i32* @balloon_up, align 4
  %39 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 5, i32 0), i32 %38)
  %40 = load i32, i32* @hot_add_req, align 4
  %41 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 4, i32 0), i32 %40)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 1), align 8
  %42 = load i32, i32* @dm_thread_func, align 4
  %43 = call i32 @kthread_run(i32 %42, %struct.TYPE_16__* @dm_device, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 2), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 2), align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 2), align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %6, align 4
  br label %142

50:                                               ; preds = %31
  %51 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %52 = call i32 @hv_set_drvdata(%struct.hv_device* %51, %struct.TYPE_16__* @dm_device)
  %53 = call i32 @memset(%struct.dm_version_request* %8, i32 0, i32 72)
  %54 = load i32, i32* @DM_VERSION_REQUEST, align 4
  %55 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %8, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %8, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 72, i32* %58, align 8
  %59 = call i8* @atomic_inc_return(i32* @trans_id)
  %60 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %8, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @DYNMEM_PROTOCOL_VERSION_WIN8, align 4
  %63 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %8, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %8, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %67 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %70 = call i32 @vmbus_sendpacket(i32 %68, %struct.dm_version_request* %8, i32 72, i64 0, i32 %69, i32 0)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %139

74:                                               ; preds = %50
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 5, %75
  %77 = call i32 @wait_for_completion_timeout(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 3), i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %139

83:                                               ; preds = %74
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 0), align 8
  %85 = load i64, i64* @DM_INIT_ERROR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %139

90:                                               ; preds = %83
  %91 = bitcast %struct.dm_capabilities* %9 to %struct.dm_version_request*
  %92 = call i32 @memset(%struct.dm_version_request* %91, i32 0, i32 72)
  %93 = load i32, i32* @DM_CAPABILITIES_REPORT, align 4
  %94 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 72, i32* %97, align 8
  %98 = call i8* @atomic_inc_return(i32* @trans_id)
  %99 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  store i32 7, i32* %109, align 8
  %110 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %9, i32 0, i32 0
  store i32 -1, i32* %111, align 8
  %112 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %113 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = bitcast %struct.dm_capabilities* %9 to %struct.dm_version_request*
  %116 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %117 = call i32 @vmbus_sendpacket(i32 %114, %struct.dm_version_request* %115, i32 72, i64 0, i32 %116, i32 0)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %90
  br label %139

121:                                              ; preds = %90
  %122 = load i32, i32* @HZ, align 4
  %123 = mul nsw i32 5, %122
  %124 = call i32 @wait_for_completion_timeout(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 3), i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @ETIMEDOUT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %139

130:                                              ; preds = %121
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 0), align 8
  %132 = load i64, i64* @DM_INIT_ERROR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @ETIMEDOUT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %139

137:                                              ; preds = %130
  %138 = load i64, i64* @DM_INITIALIZED, align 8
  store i64 %138, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %151

139:                                              ; preds = %134, %127, %120, %87, %80, %73
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dm_device, i32 0, i32 2), align 4
  %141 = call i32 @kthread_stop(i32 %140)
  br label %142

142:                                              ; preds = %139, %47
  %143 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %144 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @vmbus_close(i32 %145)
  br label %147

147:                                              ; preds = %142, %30
  %148 = load i32, i32* @send_buffer, align 4
  %149 = call i32 @kfree(i32 %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %137, %16
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @vmbus_open(i32, i32, i32, i32*, i32, i32, %struct.hv_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kthread_run(i32, %struct.TYPE_16__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @memset(%struct.dm_version_request*, i32, i32) #1

declare dso_local i8* @atomic_inc_return(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_version_request*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
