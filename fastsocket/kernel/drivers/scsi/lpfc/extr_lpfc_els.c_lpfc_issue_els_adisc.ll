; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_adisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { i32, i64, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_ADISC = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue ADISC:     did:x%x\00", align 1
@lpfc_cmpl_els_adisc = common dso_local global i32 0, align 4
@NLP_ADISC_SND = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %16 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 3
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %9, align 8
  store i32 20, i32* %14, align 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ELS_CMD_ADISC, align 4
  %28 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %20, i32 1, i32 %21, i32 %22, %struct.lpfc_nodelist* %23, i32 %26, i32 %27)
  store %struct.lpfc_iocbq* %28, %struct.lpfc_iocbq** %12, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %30 = icmp ne %struct.lpfc_iocbq* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %121

32:                                               ; preds = %3
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %33, i32 0, i32 2
  store i32* %34, i32** %11, align 8
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.lpfc_dmabuf*
  %39 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %13, align 8
  %42 = load i32, i32* @ELS_CMD_ADISC, align 4
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = bitcast i32* %46 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %10, align 8
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 2
  %57 = call i32 @memcpy(i32* %54, i32* %56, i32 4)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 1
  %62 = call i32 @memcpy(i32* %59, i32* %61, i32 4)
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %70 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %69, i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %73, i32 0, i32 0)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @lpfc_cmpl_els_adisc, align 4
  %81 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %82 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spin_lock_irq(i32 %85)
  %87 = load i32, i32* @NLP_ADISC_SND, align 4
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @spin_unlock_irq(i32 %94)
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %97 = load i32, i32* @LPFC_ELS_RING, align 4
  %98 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %99 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %96, i32 %97, %struct.lpfc_iocbq* %98, i32 0)
  %100 = load i64, i64* @IOCB_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %32
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %104 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @spin_lock_irq(i32 %105)
  %107 = load i32, i32* @NLP_ADISC_SND, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %110 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %114 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @spin_unlock_irq(i32 %115)
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %118 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %119 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %117, %struct.lpfc_iocbq* %118)
  store i32 1, i32* %4, align 4
  br label %121

120:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %102, %31
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

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
