; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_activity_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_activity_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_device*, i8*)* }
%struct.ata_device = type { i32 }

@ATA_FLAG_SW_ACTIVITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ata_scsi_activity_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_activity_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.ata_port*, align 8
  %10 = alloca %struct.ata_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.scsi_device* @to_scsi_device(%struct.device* %11)
  store %struct.scsi_device* %12, %struct.scsi_device** %8, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ata_port* @ata_shost_to_port(i32 %15)
  store %struct.ata_port* %16, %struct.ata_port** %9, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %19 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %17, %struct.scsi_device* %18)
  store %struct.ata_device* %19, %struct.ata_device** %10, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ata_device*, i8*)*, i32 (%struct.ata_device*, i8*)** %23, align 8
  %25 = icmp ne i32 (%struct.ata_device*, i8*)* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATA_FLAG_SW_ACTIVITY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.ata_device*, i8*)*, i32 (%struct.ata_device*, i8*)** %37, align 8
  %39 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 %38(%struct.ata_device* %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %26, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
