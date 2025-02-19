; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_slave_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32 }
%struct.ata_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_scsi_slave_config(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ata_port* @ata_shost_to_port(i32 %8)
  store %struct.ata_port* %9, %struct.ata_port** %3, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %12 = call %struct.ata_device* @__ata_scsi_find_dev(%struct.ata_port* %10, %struct.scsi_device* %11)
  store %struct.ata_device* %12, %struct.ata_device** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = call i32 @ata_scsi_sdev_config(%struct.scsi_device* %13)
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = icmp ne %struct.ata_device* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = call i32 @ata_scsi_dev_config(%struct.scsi_device* %18, %struct.ata_device* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.ata_device* @__ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i32 @ata_scsi_sdev_config(%struct.scsi_device*) #1

declare dso_local i32 @ata_scsi_dev_config(%struct.scsi_device*, %struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
