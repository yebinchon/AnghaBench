; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_logo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, i32 }
%struct.lpfc_dmabuf = type { i64 }

@NLP_LOGO_SND = common dso_local global i32 0, align 4
@ELS_CMD_LOGO = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue LOGO:      did:x%x\00", align 1
@NLP_ISSUE_LOGO = common dso_local global i32 0, align 4
@lpfc_cmpl_els_logo = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %16 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 2
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %9, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spin_lock_irq(i32 %22)
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NLP_LOGO_SND, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @spin_unlock_irq(i32 %33)
  store i32 0, i32* %4, align 4
  br label %158

35:                                               ; preds = %3
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spin_unlock_irq(i32 %38)
  store i32 12, i32* %13, align 4
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ELS_CMD_LOGO, align 4
  %48 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %40, i32 1, i32 %41, i32 %42, %struct.lpfc_nodelist* %43, i32 %46, i32 %47)
  store %struct.lpfc_iocbq* %48, %struct.lpfc_iocbq** %11, align 8
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %50 = icmp ne %struct.lpfc_iocbq* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %158

52:                                               ; preds = %35
  %53 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %54 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %53, i32 0, i32 2
  store i32* %54, i32** %10, align 8
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.lpfc_dmabuf*
  %59 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %12, align 8
  %62 = load i32, i32* @ELS_CMD_LOGO, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %12, align 8
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %74, i32 0, i32 0
  %76 = call i32 @memcpy(i32* %73, i32* %75, i32 4)
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %78 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %77, i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %81, i32 0, i32 0)
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spin_lock_irq(i32 %85)
  %87 = load i32, i32* @NLP_ISSUE_LOGO, align 4
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @spin_unlock_irq(i32 %94)
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %97 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %98 = call i64 @lpfc_unreg_rpi(%struct.lpfc_vport* %96, %struct.lpfc_nodelist* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %52
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %102 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %103 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %101, %struct.lpfc_iocbq* %102)
  store i32 0, i32* %4, align 4
  br label %158

104:                                              ; preds = %52
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @lpfc_cmpl_els_logo, align 4
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %114 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @spin_lock_irq(i32 %115)
  %117 = load i32, i32* @NLP_LOGO_SND, align 4
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %119 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @NLP_ISSUE_LOGO, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %125 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %129 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @spin_unlock_irq(i32 %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %133 = load i32, i32* @LPFC_ELS_RING, align 4
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %135 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %132, i32 %133, %struct.lpfc_iocbq* %134, i32 0)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @IOCB_ERROR, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %104
  %140 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %141 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @spin_lock_irq(i32 %142)
  %144 = load i32, i32* @NLP_LOGO_SND, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %147 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %151 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @spin_unlock_irq(i32 %152)
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %156 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %154, %struct.lpfc_iocbq* %155)
  store i32 1, i32* %4, align 4
  br label %158

157:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %139, %100, %51, %30
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
