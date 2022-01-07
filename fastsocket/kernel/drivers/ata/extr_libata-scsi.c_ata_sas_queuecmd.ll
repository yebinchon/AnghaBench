; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_sas_queuecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_sas_queuecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DID_BAD_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sas_queuecmd(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1, %struct.ata_port* %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  store %struct.ata_port* %2, %struct.ata_port** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call i32 @ata_scsi_dump_cdb(%struct.ata_port* %8, %struct.scsi_cmnd* %9)
  %11 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ata_dev_enabled(i32 %14)
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd* %19, void (%struct.scsi_cmnd*)* %20, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @DID_BAD_TARGET, align 4
  %28 = shl i32 %27, 16
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %31(%struct.scsi_cmnd* %32)
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @ata_scsi_dump_cdb(%struct.ata_port*, %struct.scsi_cmnd*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_dev_enabled(i32) #1

declare dso_local i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
