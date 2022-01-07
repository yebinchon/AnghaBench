; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_logo_logo_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_logo_logo_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@NLP_STE_LOGO_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_NODEV_REMOVE = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_logo_logo_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_logo_logo_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %11 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %9, align 8
  %12 = load i32, i32* @NLP_STE_LOGO_ISSUE, align 4
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %17 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %18 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %15, %struct.lpfc_nodelist* %16, i32 %17)
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @spin_lock_irq(i32 %21)
  %23 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %24 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @spin_unlock_irq(i32 %33)
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %37 = call i32 @lpfc_disc_set_adisc(%struct.lpfc_vport* %35, %struct.lpfc_nodelist* %36)
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_disc_set_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
