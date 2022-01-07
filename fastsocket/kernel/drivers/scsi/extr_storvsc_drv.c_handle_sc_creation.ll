; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_handle_sc_creation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_handle_sc_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.storvsc_device = type { i32 }
%struct.vmstorage_channel_properties = type { i32 }

@storvsc_ringbuffer_size = common dso_local global i32 0, align 4
@storvsc_on_channel_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @handle_sc_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sc_creation(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.storvsc_device*, align 8
  %5 = alloca %struct.vmstorage_channel_properties, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.hv_device*, %struct.hv_device** %9, align 8
  store %struct.hv_device* %10, %struct.hv_device** %3, align 8
  %11 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %12 = call %struct.storvsc_device* @get_out_stor_device(%struct.hv_device* %11)
  store %struct.storvsc_device* %12, %struct.storvsc_device** %4, align 8
  %13 = load %struct.storvsc_device*, %struct.storvsc_device** %4, align 8
  %14 = icmp ne %struct.storvsc_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.storvsc_device*, %struct.storvsc_device** %4, align 8
  %18 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %31

22:                                               ; preds = %16
  %23 = call i32 @memset(%struct.vmstorage_channel_properties* %5, i32 0, i32 4)
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %25 = load i32, i32* @storvsc_ringbuffer_size, align 4
  %26 = load i32, i32* @storvsc_ringbuffer_size, align 4
  %27 = bitcast %struct.vmstorage_channel_properties* %5 to i8*
  %28 = load i32, i32* @storvsc_on_channel_callback, align 4
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %30 = call i32 @vmbus_open(%struct.vmbus_channel* %24, i32 %25, i32 %26, i8* %27, i32 4, i32 %28, %struct.vmbus_channel* %29)
  br label %31

31:                                               ; preds = %22, %21, %15
  ret void
}

declare dso_local %struct.storvsc_device* @get_out_stor_device(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.vmstorage_channel_properties*, i32, i32) #1

declare dso_local i32 @vmbus_open(%struct.vmbus_channel*, i32, i32, i8*, i32, i32, %struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
