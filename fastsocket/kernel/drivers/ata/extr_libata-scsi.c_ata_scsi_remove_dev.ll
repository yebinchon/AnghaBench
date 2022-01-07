; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_remove_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.scsi_device*, %struct.TYPE_4__* }
%struct.scsi_device = type { i32 }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@SDEV_OFFLINE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"detaching (SCSI %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_scsi_remove_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_scsi_remove_dev(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %7 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %3, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 0
  %23 = load %struct.scsi_device*, %struct.scsi_device** %22, align 8
  store %struct.scsi_device* %23, %struct.scsi_device** %4, align 8
  %24 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  store %struct.scsi_device* null, %struct.scsi_device** %25, align 8
  %26 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %27 = icmp ne %struct.scsi_device* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %30 = call i64 @scsi_device_get(%struct.scsi_device* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %34 = load i32, i32* @SDEV_OFFLINE, align 4
  %35 = call i32 @scsi_device_set_state(%struct.scsi_device* %33, i32 %34)
  br label %38

36:                                               ; preds = %28
  %37 = call i32 @WARN_ON(i32 1)
  store %struct.scsi_device* null, %struct.scsi_device** %4, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32 %42, i64 %43)
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %51 = icmp ne %struct.scsi_device* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %39
  %53 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %55, i32 0, i32 0
  %57 = call i32 @dev_name(i32* %56)
  %58 = call i32 @ata_dev_printk(%struct.ata_device* %53, i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %60 = call i32 @scsi_remove_device(%struct.scsi_device* %59)
  %61 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %62 = call i32 @scsi_device_put(%struct.scsi_device* %61)
  br label %63

63:                                               ; preds = %52, %39
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @scsi_device_get(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
