; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c___ata_eh_qc_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c___ata_eh_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.scsi_cmnd*, %struct.ata_port* }
%struct.scsi_cmnd = type { i32 }
%struct.ata_port = type { i32, i32 }

@ata_eh_scsidone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @__ata_eh_qc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ata_eh_qc_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i64, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 3
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 2
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load i32, i32* @ata_eh_scsidone, align 4
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %21 = call i32 @__ata_qc_complete(%struct.ata_queued_cmd* %20)
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ata_tag_valid(i32 %24)
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32 %29, i64 %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %34 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %33, i32 0, i32 0
  %35 = call i32 @scsi_eh_finish_cmd(%struct.scsi_cmnd* %32, i32* %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @__ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ata_tag_valid(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @scsi_eh_finish_cmd(%struct.scsi_cmnd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
