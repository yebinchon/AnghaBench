; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_handle_multichannel_storage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_handle_multichannel_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.storvsc_device = type { i32, %struct.storvsc_cmd_request }
%struct.storvsc_cmd_request = type { i32, %struct.vstor_packet }
%struct.vstor_packet = type { i64, i32, i64, i32 }

@handle_sc_creation = common dso_local global i32 0, align 4
@VSTOR_OPERATION_CREATE_SUB_CHANNELS = common dso_local global i64 0, align 8
@REQUEST_COMPLETION_FLAG = common dso_local global i32 0, align 4
@vmscsi_size_delta = common dso_local global i64 0, align 8
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@VSTOR_OPERATION_COMPLETE_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, i32)* @handle_multichannel_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_multichannel_storage(%struct.hv_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.storvsc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.storvsc_cmd_request*, align 8
  %9 = alloca %struct.vstor_packet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 (...) @num_online_cpus()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  %22 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %23 = call %struct.storvsc_device* @get_out_stor_device(%struct.hv_device* %22)
  store %struct.storvsc_device* %23, %struct.storvsc_device** %5, align 8
  %24 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %25 = icmp ne %struct.storvsc_device* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %104

27:                                               ; preds = %20
  %28 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %29 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %28, i32 0, i32 1
  store %struct.storvsc_cmd_request* %29, %struct.storvsc_cmd_request** %8, align 8
  %30 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %8, align 8
  %31 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %30, i32 0, i32 1
  store %struct.vstor_packet* %31, %struct.vstor_packet** %9, align 8
  %32 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %33 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %35 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @handle_sc_creation, align 4
  %38 = call i32 @vmbus_set_sc_create_callback(i32 %36, i32 %37)
  %39 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %40 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @vmbus_are_subchannels_present(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %104

45:                                               ; preds = %27
  %46 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %47 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %8, align 8
  %49 = call i32 @memset(%struct.storvsc_cmd_request* %48, i32 0, i32 40)
  %50 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %8, align 8
  %51 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %50, i32 0, i32 0
  %52 = call i32 @init_completion(i32* %51)
  %53 = load i64, i64* @VSTOR_OPERATION_CREATE_SUB_CHANNELS, align 8
  %54 = load %struct.vstor_packet*, %struct.vstor_packet** %9, align 8
  %55 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @REQUEST_COMPLETION_FLAG, align 4
  %57 = load %struct.vstor_packet*, %struct.vstor_packet** %9, align 8
  %58 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.vstor_packet*, %struct.vstor_packet** %9, align 8
  %61 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %63 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vstor_packet*, %struct.vstor_packet** %9, align 8
  %66 = load i64, i64* @vmscsi_size_delta, align 8
  %67 = sub i64 32, %66
  %68 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %8, align 8
  %69 = ptrtoint %struct.storvsc_cmd_request* %68 to i64
  %70 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %71 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %72 = call i32 @vmbus_sendpacket(i32 %64, %struct.vstor_packet* %65, i64 %67, i64 %69, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %45
  br label %104

76:                                               ; preds = %45
  %77 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %8, align 8
  %78 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %77, i32 0, i32 0
  %79 = load i32, i32* @HZ, align 4
  %80 = mul nsw i32 10, %79
  %81 = call i32 @wait_for_completion_timeout(i32* %78, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %104

85:                                               ; preds = %76
  %86 = load %struct.vstor_packet*, %struct.vstor_packet** %9, align 8
  %87 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VSTOR_OPERATION_COMPLETE_IO, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.vstor_packet*, %struct.vstor_packet** %9, align 8
  %93 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %85
  br label %104

97:                                               ; preds = %91
  %98 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %99 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %101 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @vmbus_are_subchannels_present(i32 %102)
  br label %104

104:                                              ; preds = %97, %96, %84, %75, %44, %26
  ret void
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local %struct.storvsc_device* @get_out_stor_device(%struct.hv_device*) #1

declare dso_local i32 @vmbus_set_sc_create_callback(i32, i32) #1

declare dso_local i64 @vmbus_are_subchannels_present(i32) #1

declare dso_local i32 @memset(%struct.storvsc_cmd_request*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.vstor_packet*, i64, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
