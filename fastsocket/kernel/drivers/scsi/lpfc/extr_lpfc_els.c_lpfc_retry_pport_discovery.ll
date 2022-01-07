; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_retry_pport_discovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_retry_pport_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@Fabric_DID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_FLOGI = common dso_local global i32 0, align 4
@LPFC_FLOGI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_retry_pport_discovery(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = call i32 @lpfc_cancel_all_vport_retry_delay_timer(%struct.lpfc_hba* %5)
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i32, i32* @Fabric_DID, align 4
  %11 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.TYPE_3__* %9, i32 %10)
  store %struct.lpfc_nodelist* %11, %struct.lpfc_nodelist** %3, align 8
  %12 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %13 = icmp ne %struct.lpfc_nodelist* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.TYPE_3__* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %4, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 2
  %22 = load i64, i64* @jiffies, align 8
  %23 = call i64 @msecs_to_jiffies(i32 1000)
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mod_timer(i32* %21, i64 %24)
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spin_lock_irq(i32 %28)
  %30 = load i32, i32* @NLP_DELAY_TMO, align 4
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @spin_unlock_irq(i32 %37)
  %39 = load i32, i32* @ELS_CMD_FLOGI, align 4
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @LPFC_FLOGI, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @lpfc_cancel_all_vport_retry_delay_timer(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.TYPE_3__*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
