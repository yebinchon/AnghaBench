; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_disk = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Synchronizing SCSI cache\0A\00", align 1
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RESTART = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Stopping disk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @sd_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.scsi_disk* @scsi_disk_get_from_dev(%struct.device* %4)
  store %struct.scsi_disk* %5, %struct.scsi_disk** %3, align 8
  %6 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %7 = icmp ne %struct.scsi_disk* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* @KERN_NOTICE, align 4
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %17 = call i32 @sd_printk(i32 %15, %struct.scsi_disk* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %19 = call i32 @sd_sync_cache(%struct.scsi_disk* %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load i64, i64* @system_state, align 8
  %22 = load i64, i64* @SYSTEM_RESTART, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @KERN_NOTICE, align 4
  %33 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %34 = call i32 @sd_printk(i32 %32, %struct.scsi_disk* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %36 = call i32 @sd_start_stop_device(%struct.scsi_disk* %35, i32 0)
  br label %37

37:                                               ; preds = %31, %24, %20
  %38 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %39 = call i32 @scsi_disk_put(%struct.scsi_disk* %38)
  br label %40

40:                                               ; preds = %37, %8
  ret void
}

declare dso_local %struct.scsi_disk* @scsi_disk_get_from_dev(%struct.device*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_sync_cache(%struct.scsi_disk*) #1

declare dso_local i32 @sd_start_stop_device(%struct.scsi_disk*, i32) #1

declare dso_local i32 @scsi_disk_put(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
