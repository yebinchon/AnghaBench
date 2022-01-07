; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli_npr_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli_npr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i8* }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_NOTHING_MORE = common dso_local global i32 0, align 4
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i8* null, align 8
@NLP_STE_ADISC_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_prli_npr_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_prli_npr_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.ls_rjt, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %13 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %15, %struct.lpfc_iocbq** %10, align 8
  %16 = call i32 @memset(%struct.ls_rjt* %11, i32 0, i32 12)
  %17 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %18 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @LSEXP_NOTHING_MORE, align 4
  %22 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %26 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %31 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %25, i32 %28, %struct.lpfc_iocbq* %29, %struct.lpfc_nodelist* %30, i32* null)
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NLP_DELAY_TMO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %4
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NLP_NPR_ADISC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %38
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @spin_lock_irq(i32 %48)
  %50 = load i32, i32* @NLP_NPR_ADISC, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %53 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i8*, i8** @NLP_STE_NPR_NODE, align 8
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @spin_unlock_irq(i32 %61)
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %65 = load i32, i32* @NLP_STE_ADISC_ISSUE, align 4
  %66 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %63, %struct.lpfc_nodelist* %64, i32 %65)
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %69 = call i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %67, %struct.lpfc_nodelist* %68, i32 0)
  br label %83

70:                                               ; preds = %38
  %71 = load i8*, i8** @NLP_STE_NPR_NODE, align 8
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %76 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %77 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %74, %struct.lpfc_nodelist* %75, i32 %76)
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %78, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %70, %45
  br label %84

84:                                               ; preds = %83, %4
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %86 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  ret i32 %87
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
