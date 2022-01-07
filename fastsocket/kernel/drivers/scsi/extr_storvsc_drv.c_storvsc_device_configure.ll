; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_device_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_device_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@STORVSC_MAX_IO_REQUESTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BLK_BOUNCE_ANY = common dso_local global i32 0, align 4
@storvsc_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @storvsc_device_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_device_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %3 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %4 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %5 = load i32, i32* @STORVSC_MAX_IO_REQUESTS, align 4
  %6 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %3, i32 %4, i32 %5)
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = call i32 @blk_queue_max_segment_size(i32 %9, i32 %10)
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BLK_BOUNCE_ANY, align 4
  %16 = call i32 @blk_queue_bounce_limit(i32 %14, i32 %15)
  %17 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @storvsc_timeout, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %20, %21
  %23 = call i32 @blk_queue_rq_timeout(i32 %19, i32 %22)
  ret i32 0
}

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(i32, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(i32, i32) #1

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
