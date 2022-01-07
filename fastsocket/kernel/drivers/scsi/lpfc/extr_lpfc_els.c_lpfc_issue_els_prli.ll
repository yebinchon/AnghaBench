; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { i32, i64, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_PRLI = common dso_local global i32 0, align 4
@PRLI_FCP_TYPE = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue PRLI:      did:x%x\00", align 1
@lpfc_cmpl_els_prli = common dso_local global i32 0, align 4
@NLP_PRLI_SND = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
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
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %9, align 8
  store i32 32, i32* %14, align 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ELS_CMD_PRLI, align 4
  %28 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %20, i32 1, i32 %21, i32 %22, %struct.lpfc_nodelist* %23, i32 %26, i32 %27)
  store %struct.lpfc_iocbq* %28, %struct.lpfc_iocbq** %12, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %30 = icmp ne %struct.lpfc_iocbq* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %129

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
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @memset(i32* %42, i32 0, i32 32)
  %44 = load i32, i32* @ELS_CMD_PRLI, align 4
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %10, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %63

56:                                               ; preds = %32
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %32
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @PRLI_FCP_TYPE, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  store i32 1, i32* %72, align 4
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %74 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %76 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %73, i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %77, i32 0, i32 0)
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @lpfc_cmpl_els_prli, align 4
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %86 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @spin_lock_irq(i32 %89)
  %91 = load i32, i32* @NLP_PRLI_SND, align 4
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @spin_unlock_irq(i32 %98)
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %101 = load i32, i32* @LPFC_ELS_RING, align 4
  %102 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %103 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %100, i32 %101, %struct.lpfc_iocbq* %102, i32 0)
  %104 = load i64, i64* @IOCB_ERROR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %63
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %108 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @spin_lock_irq(i32 %109)
  %111 = load i32, i32* @NLP_PRLI_SND, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %114 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %118 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @spin_unlock_irq(i32 %119)
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %123 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %121, %struct.lpfc_iocbq* %122)
  store i32 1, i32* %4, align 4
  br label %129

124:                                              ; preds = %63
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %126 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %124, %106, %31
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

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
