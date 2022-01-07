; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_common_complete_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_common_complete_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }
%struct.isci_remote_device = type { i32 }
%struct.isci_request = type { i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_port*, %struct.isci_remote_device*, %struct.isci_request*)* @common_complete_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_complete_io(%struct.isci_port* %0, %struct.isci_remote_device* %1, %struct.isci_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_port*, align 8
  %6 = alloca %struct.isci_remote_device*, align 8
  %7 = alloca %struct.isci_request*, align 8
  %8 = alloca i32, align 4
  store %struct.isci_port* %0, %struct.isci_port** %5, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %6, align 8
  store %struct.isci_request* %2, %struct.isci_request** %7, align 8
  %9 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %10 = call i32 @sci_request_complete(%struct.isci_request* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SCI_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.isci_port*, %struct.isci_port** %5, align 8
  %18 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %19 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %20 = call i32 @sci_port_complete_io(%struct.isci_port* %17, %struct.isci_remote_device* %18, %struct.isci_request* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SCI_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %28 = call i32 @sci_remote_device_decrement_request_count(%struct.isci_remote_device* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %24, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @sci_request_complete(%struct.isci_request*) #1

declare dso_local i32 @sci_port_complete_io(%struct.isci_port*, %struct.isci_remote_device*, %struct.isci_request*) #1

declare dso_local i32 @sci_remote_device_decrement_request_count(%struct.isci_remote_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
