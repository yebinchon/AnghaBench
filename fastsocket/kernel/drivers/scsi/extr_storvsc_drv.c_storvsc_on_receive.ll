; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_on_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.vstor_packet = type { i32 }
%struct.storvsc_cmd_request = type { i32 }
%struct.storvsc_scan_work = type { i32, i32 }
%struct.storvsc_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@storvsc_bus_scan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.vstor_packet*, %struct.storvsc_cmd_request*)* @storvsc_on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_on_receive(%struct.hv_device* %0, %struct.vstor_packet* %1, %struct.storvsc_cmd_request* %2) #0 {
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.vstor_packet*, align 8
  %6 = alloca %struct.storvsc_cmd_request*, align 8
  %7 = alloca %struct.storvsc_scan_work*, align 8
  %8 = alloca %struct.storvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.vstor_packet* %1, %struct.vstor_packet** %5, align 8
  store %struct.storvsc_cmd_request* %2, %struct.storvsc_cmd_request** %6, align 8
  %9 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %10 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %38 [
    i32 130, label %12
    i32 128, label %17
    i32 129, label %17
  ]

12:                                               ; preds = %3
  %13 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %14 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %15 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %16 = call i32 @storvsc_on_io_completion(%struct.hv_device* %13, %struct.vstor_packet* %14, %struct.storvsc_cmd_request* %15)
  br label %39

17:                                               ; preds = %3, %3
  %18 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %19 = call %struct.storvsc_device* @get_in_stor_device(%struct.hv_device* %18)
  store %struct.storvsc_device* %19, %struct.storvsc_device** %8, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.storvsc_scan_work* @kmalloc(i32 8, i32 %20)
  store %struct.storvsc_scan_work* %21, %struct.storvsc_scan_work** %7, align 8
  %22 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %7, align 8
  %23 = icmp ne %struct.storvsc_scan_work* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %7, align 8
  %27 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %26, i32 0, i32 0
  %28 = load i32, i32* @storvsc_bus_scan, align 4
  %29 = call i32 @INIT_WORK(i32* %27, i32 %28)
  %30 = load %struct.storvsc_device*, %struct.storvsc_device** %8, align 8
  %31 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %7, align 8
  %34 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %7, align 8
  %36 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %35, i32 0, i32 0
  %37 = call i32 @schedule_work(i32* %36)
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %24, %38, %25, %12
  ret void
}

declare dso_local i32 @storvsc_on_io_completion(%struct.hv_device*, %struct.vstor_packet*, %struct.storvsc_cmd_request*) #1

declare dso_local %struct.storvsc_device* @get_in_stor_device(%struct.hv_device*) #1

declare dso_local %struct.storvsc_scan_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
