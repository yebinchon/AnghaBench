; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_flush_xlat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_flush_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_2__*, %struct.ata_taskfile }
%struct.TYPE_2__ = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32 }

@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_DFLAG_FLUSH_EXT = common dso_local global i32 0, align 4
@ATA_CMD_FLUSH_EXT = common dso_local global i32 0, align 4
@ATA_CMD_FLUSH = common dso_local global i32 0, align 4
@ATA_QCFLAG_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_flush_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_flush_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %4 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %4, i32 0, i32 2
  store %struct.ata_taskfile* %5, %struct.ata_taskfile** %3, align 8
  %6 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %7 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %8 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @ATA_PROT_NODATA, align 4
  %12 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %13 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ATA_DFLAG_FLUSH_EXT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @ATA_CMD_FLUSH_EXT, align 4
  %24 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @ATA_CMD_FLUSH, align 4
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @ATA_QCFLAG_IO, align 4
  %32 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
