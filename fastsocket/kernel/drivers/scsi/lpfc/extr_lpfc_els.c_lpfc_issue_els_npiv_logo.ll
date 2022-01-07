; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_npiv_logo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_npiv_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_LOGO = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Issue LOGO npiv  did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_npiv_logo = common dso_local global i32 0, align 4
@NLP_LOGO_SND = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_npiv_logo(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %6, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %7, align 8
  store i32 12, i32* %11, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ELS_CMD_LOGO, align 4
  %24 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %17, i32 1, i32 %18, i32 0, %struct.lpfc_nodelist* %19, i32 %22, i32 %23)
  store %struct.lpfc_iocbq* %24, %struct.lpfc_iocbq** %9, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %26 = icmp ne %struct.lpfc_iocbq* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %103

28:                                               ; preds = %2
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 2
  store i32* %30, i32** %8, align 8
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %32 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.lpfc_dmabuf*
  %35 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %10, align 8
  %38 = load i32, i32* @ELS_CMD_LOGO, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %10, align 8
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 0
  %52 = call i32 @memcpy(i32* %49, i32* %51, i32 4)
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %54 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %53, i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 0)
  %62 = load i32, i32* @lpfc_cmpl_els_npiv_logo, align 4
  %63 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %64 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @spin_lock_irq(i32 %67)
  %69 = load i32, i32* @NLP_LOGO_SND, align 4
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %71 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @spin_unlock_irq(i32 %76)
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %79 = load i32, i32* @LPFC_ELS_RING, align 4
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %81 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %78, i32 %79, %struct.lpfc_iocbq* %80, i32 0)
  %82 = load i64, i64* @IOCB_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %28
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %86 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @spin_lock_irq(i32 %87)
  %89 = load i32, i32* @NLP_LOGO_SND, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %92 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %96 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @spin_unlock_irq(i32 %97)
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %100 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %101 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %99, %struct.lpfc_iocbq* %100)
  store i32 1, i32* %3, align 4
  br label %103

102:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %84, %27
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
