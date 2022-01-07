; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_remote_device_stopped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_remote_device_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.isci_remote_device = type { i32 }

@SCIC_STOPPING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [90 x i8] c"SCIC Controller 0x%p remote device stopped event from device 0x%p in unexpected state %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_controller_remote_device_stopped(%struct.isci_host* %0, %struct.isci_remote_device* %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.isci_remote_device*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %4, align 8
  %5 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %6 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SCIC_STOPPING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %17 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %18 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %19 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), %struct.isci_host* %16, %struct.isci_remote_device* %17, i64 %21)
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %25 = call i32 @sci_controller_has_remote_devices_stopping(%struct.isci_host* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %29 = call i32 @isci_host_stop_complete(%struct.isci_host* %28)
  br label %30

30:                                               ; preds = %11, %27, %23
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.isci_host*, %struct.isci_remote_device*, i64) #1

declare dso_local i32 @sci_controller_has_remote_devices_stopping(%struct.isci_host*) #1

declare dso_local i32 @isci_host_stop_complete(%struct.isci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
