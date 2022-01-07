; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT2SAS_ADAPTER = type { i32, i32, %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @_scsih_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %5 = alloca %struct.workqueue_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = call %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.MPT2SAS_ADAPTER* %10, %struct.MPT2SAS_ADAPTER** %4, align 8
  %11 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %12 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %14 = call i32 @_scsih_fw_event_cleanup_queue(%struct.MPT2SAS_ADAPTER* %13)
  %15 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %16 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %20 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %19, i32 0, i32 2
  %21 = load %struct.workqueue_struct*, %struct.workqueue_struct** %20, align 8
  store %struct.workqueue_struct* %21, %struct.workqueue_struct** %5, align 8
  %22 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %23 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %22, i32 0, i32 2
  store %struct.workqueue_struct* null, %struct.workqueue_struct** %23, align 8
  %24 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %25 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %24, i32 0, i32 1
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %29 = icmp ne %struct.workqueue_struct* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %32 = call i32 @destroy_workqueue(%struct.workqueue_struct* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %35 = call i32 @_scsih_ir_shutdown(%struct.MPT2SAS_ADAPTER* %34)
  %36 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %37 = call i32 @mpt2sas_base_detach(%struct.MPT2SAS_ADAPTER* %36)
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @_scsih_fw_event_cleanup_queue(%struct.MPT2SAS_ADAPTER*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @_scsih_ir_shutdown(%struct.MPT2SAS_ADAPTER*) #1

declare dso_local i32 @mpt2sas_base_detach(%struct.MPT2SAS_ADAPTER*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
