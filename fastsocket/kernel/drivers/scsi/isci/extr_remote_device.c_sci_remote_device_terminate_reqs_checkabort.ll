; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_terminate_reqs_checkabort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_terminate_reqs_checkabort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.isci_host* }
%struct.isci_host = type { %struct.isci_request** }
%struct.isci_request = type { i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_MAX_IO_REQUESTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_remote_device*, i32)* @sci_remote_device_terminate_reqs_checkabort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_remote_device_terminate_reqs_checkabort(%struct.isci_remote_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.isci_request*, align 8
  %9 = alloca i32, align 4
  store %struct.isci_remote_device* %0, %struct.isci_remote_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %11 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.isci_host*, %struct.isci_host** %13, align 8
  store %struct.isci_host* %14, %struct.isci_host** %5, align 8
  %15 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %15, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @SCI_MAX_IO_REQUESTS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %22 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %21, i32 0, i32 0
  %23 = load %struct.isci_request**, %struct.isci_request*** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.isci_request*, %struct.isci_request** %23, i64 %24
  %26 = load %struct.isci_request*, %struct.isci_request** %25, align 8
  store %struct.isci_request* %26, %struct.isci_request** %8, align 8
  %27 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %28 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  %31 = call i32 @sci_remote_device_terminate_req(%struct.isci_host* %27, %struct.isci_remote_device* %28, i32 %29, %struct.isci_request* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SCI_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %16

41:                                               ; preds = %16
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @sci_remote_device_terminate_req(%struct.isci_host*, %struct.isci_remote_device*, i32, %struct.isci_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
