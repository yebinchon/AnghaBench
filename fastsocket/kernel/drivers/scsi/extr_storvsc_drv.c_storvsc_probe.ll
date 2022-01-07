; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.hv_vmbus_device_id = type { i64 }
%struct.Scsi_Host = type { i32, i64, i32, i32, i32 }
%struct.hv_host_device = type { i32, i32, %struct.hv_device*, i32 }
%struct.storvsc_device = type { i32, i32, i32, i32, i32, %struct.Scsi_Host*, %struct.hv_device*, i32 }

@IDE_GUID = common dso_local global i64 0, align 8
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WIN8 = common dso_local global i64 0, align 8
@POST_WIN7_STORVSC_SENSE_BUFFER_SIZE = common dso_local global i32 0, align 4
@sense_buffer_size = common dso_local global i32 0, align 4
@vmscsi_size_delta = common dso_local global i32 0, align 4
@VMSTOR_WIN8_MAJOR = common dso_local global i32 0, align 4
@vmstor_current_major = common dso_local global i32 0, align 4
@VMSTOR_WIN8_MINOR = common dso_local global i32 0, align 4
@vmstor_current_minor = common dso_local global i32 0, align 4
@PRE_WIN8_STORVSC_SENSE_BUFFER_SIZE = common dso_local global i32 0, align 4
@VMSTOR_WIN7_MAJOR = common dso_local global i32 0, align 4
@VMSTOR_WIN7_MINOR = common dso_local global i32 0, align 4
@scsi_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@storvsc_ringbuffer_size = common dso_local global i32 0, align 4
@STORVSC_MAX_LUNS_PER_TARGET = common dso_local global i32 0, align 4
@STORVSC_MAX_TARGETS = common dso_local global i32 0, align 4
@STORVSC_MAX_CHANNELS = common dso_local global i64 0, align 8
@STORVSC_MAX_CMD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @storvsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_probe(%struct.hv_device* %0, %struct.hv_vmbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_vmbus_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.hv_host_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.storvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_vmbus_device_id* %1, %struct.hv_vmbus_device_id** %5, align 8
  %12 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.hv_vmbus_device_id, %struct.hv_vmbus_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IDE_GUID, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i64, i64* @vmbus_proto_version, align 8
  %20 = load i64, i64* @VERSION_WIN8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @POST_WIN7_STORVSC_SENSE_BUFFER_SIZE, align 4
  store i32 %23, i32* @sense_buffer_size, align 4
  store i32 0, i32* @vmscsi_size_delta, align 4
  %24 = load i32, i32* @VMSTOR_WIN8_MAJOR, align 4
  store i32 %24, i32* @vmstor_current_major, align 4
  %25 = load i32, i32* @VMSTOR_WIN8_MINOR, align 4
  store i32 %25, i32* @vmstor_current_minor, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @PRE_WIN8_STORVSC_SENSE_BUFFER_SIZE, align 4
  store i32 %27, i32* @sense_buffer_size, align 4
  store i32 4, i32* @vmscsi_size_delta, align 4
  %28 = load i32, i32* @VMSTOR_WIN7_MAJOR, align 4
  store i32 %28, i32* @vmstor_current_major, align 4
  %29 = load i32, i32* @VMSTOR_WIN7_MINOR, align 4
  store i32 %29, i32* @vmstor_current_minor, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @scsi_driver, i32 24)
  store %struct.Scsi_Host* %31, %struct.Scsi_Host** %7, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %33 = icmp ne %struct.Scsi_Host* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %157

37:                                               ; preds = %30
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %39 = call %struct.hv_host_device* @shost_priv(%struct.Scsi_Host* %38)
  store %struct.hv_host_device* %39, %struct.hv_host_device** %8, align 8
  %40 = load %struct.hv_host_device*, %struct.hv_host_device** %8, align 8
  %41 = call i32 @memset(%struct.hv_host_device* %40, i32 0, i32 24)
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hv_host_device*, %struct.hv_host_device** %8, align 8
  %46 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %48 = load %struct.hv_host_device*, %struct.hv_host_device** %8, align 8
  %49 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %48, i32 0, i32 2
  store %struct.hv_device* %47, %struct.hv_device** %49, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.storvsc_device* @kzalloc(i32 48, i32 %50)
  store %struct.storvsc_device* %51, %struct.storvsc_device** %11, align 8
  %52 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %53 = icmp ne %struct.storvsc_device* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %37
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %153

57:                                               ; preds = %37
  %58 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %59 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %61 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %63 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %62, i32 0, i32 7
  %64 = call i32 @init_waitqueue_head(i32* %63)
  %65 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %66 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %67 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %66, i32 0, i32 6
  store %struct.hv_device* %65, %struct.hv_device** %67, align 8
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %69 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %70 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %69, i32 0, i32 5
  store %struct.Scsi_Host* %68, %struct.Scsi_Host** %70, align 8
  %71 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %72 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %73 = call i32 @hv_set_drvdata(%struct.hv_device* %71, %struct.storvsc_device* %72)
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %78 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %80 = load i32, i32* @storvsc_ringbuffer_size, align 4
  %81 = call i32 @storvsc_connect_to_vsp(%struct.hv_device* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %57
  br label %150

85:                                               ; preds = %57
  %86 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %87 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hv_host_device*, %struct.hv_host_device** %8, align 8
  %90 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %92 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hv_host_device*, %struct.hv_host_device** %8, align 8
  %95 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @STORVSC_MAX_LUNS_PER_TARGET, align 4
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %98 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @STORVSC_MAX_TARGETS, align 4
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %101 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i64, i64* @STORVSC_MAX_CHANNELS, align 8
  %103 = sub nsw i64 %102, 1
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @STORVSC_MAX_CMD_LEN, align 4
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %108 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %110 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %111 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %110, i32 0, i32 1
  %112 = call i32 @scsi_add_host(%struct.Scsi_Host* %109, i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %85
  br label %147

116:                                              ; preds = %85
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %121 = call i32 @scsi_scan_host(%struct.Scsi_Host* %120)
  br label %146

122:                                              ; preds = %116
  %123 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %124 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %131 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %129, %135
  store i32 %136, i32* %10, align 4
  %137 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @scsi_add_device(%struct.Scsi_Host* %137, i32 0, i32 %138, i32 0)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %122
  %143 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %144 = call i32 @scsi_remove_host(%struct.Scsi_Host* %143)
  br label %147

145:                                              ; preds = %122
  br label %146

146:                                              ; preds = %145, %119
  store i32 0, i32* %3, align 4
  br label %157

147:                                              ; preds = %142, %115
  %148 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %149 = call i32 @storvsc_dev_remove(%struct.hv_device* %148)
  br label %153

150:                                              ; preds = %84
  %151 = load %struct.storvsc_device*, %struct.storvsc_device** %11, align 8
  %152 = call i32 @kfree(%struct.storvsc_device* %151)
  br label %153

153:                                              ; preds = %150, %147, %54
  %154 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %155 = call i32 @scsi_host_put(%struct.Scsi_Host* %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %146, %34
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.hv_host_device* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.hv_host_device*, i32, i32) #1

declare dso_local %struct.storvsc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, %struct.storvsc_device*) #1

declare dso_local i32 @storvsc_connect_to_vsp(%struct.hv_device*, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_device(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @storvsc_dev_remove(%struct.hv_device*) #1

declare dso_local i32 @kfree(%struct.storvsc_device*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
