; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_do_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.storvsc_cmd_request = type { %struct.TYPE_4__, %struct.hv_device*, %struct.vstor_packet }
%struct.TYPE_4__ = type { i64 }
%struct.vstor_packet = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.storvsc_device = type { i32 }
%struct.vmbus_channel = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@REQUEST_COMPLETION_FLAG = common dso_local global i32 0, align 4
@vmscsi_size_delta = common dso_local global i64 0, align 8
@sense_buffer_size = common dso_local global i32 0, align 4
@VSTOR_OPERATION_EXECUTE_SRB = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.storvsc_cmd_request*)* @storvsc_do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_do_io(%struct.hv_device* %0, %struct.storvsc_cmd_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.storvsc_cmd_request*, align 8
  %6 = alloca %struct.storvsc_device*, align 8
  %7 = alloca %struct.vstor_packet*, align 8
  %8 = alloca %struct.vmbus_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.storvsc_cmd_request* %1, %struct.storvsc_cmd_request** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %5, align 8
  %11 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %10, i32 0, i32 2
  store %struct.vstor_packet* %11, %struct.vstor_packet** %7, align 8
  %12 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %13 = call %struct.storvsc_device* @get_out_stor_device(%struct.hv_device* %12)
  store %struct.storvsc_device* %13, %struct.storvsc_device** %6, align 8
  %14 = load %struct.storvsc_device*, %struct.storvsc_device** %6, align 8
  %15 = icmp ne %struct.storvsc_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %88

19:                                               ; preds = %2
  %20 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %21 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %5, align 8
  %22 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %21, i32 0, i32 1
  store %struct.hv_device* %20, %struct.hv_device** %22, align 8
  %23 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %24 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.vmbus_channel* @vmbus_get_outgoing_channel(i32 %25)
  store %struct.vmbus_channel* %26, %struct.vmbus_channel** %8, align 8
  %27 = load i32, i32* @REQUEST_COMPLETION_FLAG, align 4
  %28 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %29 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i64, i64* @vmscsi_size_delta, align 8
  %33 = sub i64 4, %32
  %34 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %35 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* @sense_buffer_size, align 4
  %38 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %39 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %5, align 8
  %42 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %46 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @VSTOR_OPERATION_EXECUTE_SRB, align 4
  %49 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %50 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %5, align 8
  %52 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %19
  %57 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %58 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %5, align 8
  %59 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %58, i32 0, i32 0
  %60 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %61 = load i64, i64* @vmscsi_size_delta, align 8
  %62 = sub i64 40, %61
  %63 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %5, align 8
  %64 = ptrtoint %struct.storvsc_cmd_request* %63 to i64
  %65 = call i32 @vmbus_sendpacket_multipagebuffer(%struct.vmbus_channel* %57, %struct.TYPE_4__* %59, %struct.vstor_packet* %60, i64 %62, i64 %64)
  store i32 %65, i32* %9, align 4
  br label %78

66:                                               ; preds = %19
  %67 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %68 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %71 = load i64, i64* @vmscsi_size_delta, align 8
  %72 = sub i64 40, %71
  %73 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %5, align 8
  %74 = ptrtoint %struct.storvsc_cmd_request* %73 to i64
  %75 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %76 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %77 = call i32 @vmbus_sendpacket(i32 %69, %struct.vstor_packet* %70, i64 %72, i64 %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %66, %56
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %78
  %84 = load %struct.storvsc_device*, %struct.storvsc_device** %6, align 8
  %85 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %84, i32 0, i32 0
  %86 = call i32 @atomic_inc(i32* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %81, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.storvsc_device* @get_out_stor_device(%struct.hv_device*) #1

declare dso_local %struct.vmbus_channel* @vmbus_get_outgoing_channel(i32) #1

declare dso_local i32 @vmbus_sendpacket_multipagebuffer(%struct.vmbus_channel*, %struct.TYPE_4__*, %struct.vstor_packet*, i64, i64) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.vstor_packet*, i64, i64, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
