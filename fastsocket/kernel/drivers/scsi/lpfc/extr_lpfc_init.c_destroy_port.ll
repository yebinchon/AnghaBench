; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_destroy_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_destroy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.Scsi_Host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_port(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %6 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %7, i32 0, i32 1
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_hba* %9, %struct.lpfc_hba** %4, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %11 = call i32 @lpfc_debugfs_terminate(%struct.lpfc_vport* %10)
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = call i32 @fc_remove_host(%struct.Scsi_Host* %12)
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %15 = call i32 @scsi_remove_host(%struct.Scsi_Host* %14)
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = call i32 @list_del_init(i32* %20)
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %26 = call i32 @lpfc_cleanup(%struct.lpfc_vport* %25)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_terminate(%struct.lpfc_vport*) #1

declare dso_local i32 @fc_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_cleanup(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
