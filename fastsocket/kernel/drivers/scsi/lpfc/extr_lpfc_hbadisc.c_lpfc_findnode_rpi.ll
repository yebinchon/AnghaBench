; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_findnode_rpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_findnode_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_nodelist* @lpfc_findnode_rpi(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %5, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.lpfc_nodelist* @__lpfc_findnode_rpi(%struct.lpfc_vport* %13, i32 %14)
  store %struct.lpfc_nodelist* %15, %struct.lpfc_nodelist** %6, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_unlock_irq(i32 %18)
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  ret %struct.lpfc_nodelist* %20
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.lpfc_nodelist* @__lpfc_findnode_rpi(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
