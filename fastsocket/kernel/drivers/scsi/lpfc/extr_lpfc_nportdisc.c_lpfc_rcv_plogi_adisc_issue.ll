; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_plogi_adisc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_plogi_adisc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32 }

@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_plogi_adisc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_plogi_adisc_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %14 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %10, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 1
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  store %struct.lpfc_hba* %17, %struct.lpfc_hba** %11, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %20 = call i32 @lpfc_els_abort(%struct.lpfc_hba* %18, %struct.lpfc_nodelist* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %22, %struct.lpfc_iocbq** %12, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %26 = call i64 @lpfc_rcv_plogi(%struct.lpfc_vport* %23, %struct.lpfc_nodelist* %24, %struct.lpfc_iocbq* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %4
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spin_lock_irq(i32 %38)
  %40 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @spin_unlock_irq(i32 %48)
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %56 = call i32 @lpfc_more_adisc(%struct.lpfc_vport* %55)
  br label %57

57:                                               ; preds = %54, %35
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %78

62:                                               ; preds = %4
  %63 = load i32, i32* @NLP_STE_ADISC_ISSUE, align 4
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %65 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %68 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %66, i32 %69, i32 0)
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %73 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %74 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %71, %struct.lpfc_nodelist* %72, i32 %73)
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %76 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %62, %58
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_abort(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_rcv_plogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_more_adisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
