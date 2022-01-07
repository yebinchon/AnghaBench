; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_els_plogi_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_els_plogi_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i64, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32 }

@NLP_EVT_RCV_LOGO = common dso_local global i64 0, align 8
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i64)* @lpfc_rcv_els_plogi_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_rcv_els_plogi_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %13 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %9, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 0
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %18, %struct.lpfc_iocbq** %11, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %21 = call i32 @lpfc_els_abort(%struct.lpfc_hba* %19, %struct.lpfc_nodelist* %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @NLP_EVT_RCV_LOGO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %27 = load i32, i32* @ELS_CMD_ACC, align 4
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %30 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %26, i32 %27, %struct.lpfc_iocbq* %28, %struct.lpfc_nodelist* %29, i32* null)
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %34 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %32, %struct.lpfc_nodelist* %33, i32 0)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 4
  %38 = load i64, i64* @jiffies, align 8
  %39 = call i64 @msecs_to_jiffies(i32 1000)
  %40 = add nsw i64 %38, %39
  %41 = call i32 @mod_timer(i32* %37, i64 %40)
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spin_lock_irq(i32 %44)
  %46 = load i32, i32* @NLP_DELAY_TMO, align 4
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @spin_unlock_irq(i32 %53)
  %55 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %63 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %64 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %61, %struct.lpfc_nodelist* %62, i32 %63)
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %66 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  ret i64 %67
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_abort(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
