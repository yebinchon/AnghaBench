; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_adisc_adisc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_adisc_adisc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64 }
%struct.lpfc_nodelist = type { i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.lpfc_iocbq* }
%struct.TYPE_6__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i8* null, align 8
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_adisc_adisc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_adisc_adisc_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca %struct.lpfc_iocbq*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %18 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %10, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %23, %struct.lpfc_iocbq** %12, align 8
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %25 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %26, align 8
  store %struct.lpfc_iocbq* %27, %struct.lpfc_iocbq** %13, align 8
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %31 = call i64 @lpfc_check_elscmpl_iocb(%struct.lpfc_hba* %28, %struct.lpfc_iocbq* %29, %struct.lpfc_iocbq* %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %15, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %33, i32 0, i32 0
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %14, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %4
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @lpfc_check_adisc(%struct.lpfc_vport* %40, %struct.lpfc_nodelist* %41, i32* %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %90, label %48

48:                                               ; preds = %39, %4
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 7
  %51 = load i64, i64* @jiffies, align 8
  %52 = call i64 @msecs_to_jiffies(i32 1000)
  %53 = add nsw i64 %51, %52
  %54 = call i32 @mod_timer(i32* %50, i64 %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @spin_lock_irq(i32 %57)
  %59 = load i32, i32* @NLP_DELAY_TMO, align 4
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spin_unlock_irq(i32 %66)
  %68 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 4
  %73 = call i32 @memset(i32* %72, i32 0, i32 4)
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 3
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  %77 = load i8*, i8** @NLP_STE_ADISC_ISSUE, align 8
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %82 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %83 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %80, %struct.lpfc_nodelist* %81, i32 %82)
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %86 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %84, %struct.lpfc_nodelist* %85)
  %87 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %88 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %5, align 4
  br label %136

90:                                               ; preds = %39
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LPFC_SLI_REV4, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %98 = call i32 @lpfc_sli4_resume_rpi(%struct.lpfc_nodelist* %97, i32* null, i32* null)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i8*, i8** @NLP_STE_ADISC_ISSUE, align 8
  %103 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %104 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %5, align 4
  br label %136

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %111 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NLP_FCP_TARGET, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load i8*, i8** @NLP_STE_ADISC_ISSUE, align 8
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %119 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %121 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %122 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %123 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %120, %struct.lpfc_nodelist* %121, i32 %122)
  br label %132

124:                                              ; preds = %109
  %125 = load i8*, i8** @NLP_STE_ADISC_ISSUE, align 8
  %126 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %127 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %129 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %130 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %131 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %128, %struct.lpfc_nodelist* %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %116
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %134 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %101, %48
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_check_elscmpl_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_check_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_sli4_resume_rpi(%struct.lpfc_nodelist*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
