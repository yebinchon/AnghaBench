; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.lpfc_sli }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_7__, %struct.TYPE_5__, %struct.lpfc_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.lpfc_iocbq* }
%struct.lpfc_vport = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }

@NLP_PRLI_SND = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PRLI cmpl:       status:x%x/x%x did:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"0103 PRLI completes to NPort x%x Data: x%x x%x x%x x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"2754 PRLI failure DID:%06X Status:x%x/x%x\0A\00", align 1
@NLP_EVT_CMPL_PRLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_prli(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.lpfc_sli*, align 8
  %11 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 3
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %13, align 8
  store %struct.lpfc_vport* %14, %struct.lpfc_vport** %7, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %16 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  store %struct.lpfc_sli* %18, %struct.lpfc_sli** %10, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.lpfc_iocbq* %19, %struct.lpfc_iocbq** %22, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 1
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %9, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %28, %struct.lpfc_nodelist** %11, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spin_lock_irq(i32 %31)
  %33 = load i32, i32* @NLP_PRLI_SND, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @spin_unlock_irq(i32 %41)
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %44 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %43, i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %53, i32 %56)
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load i32, i32* @LOG_ELS, align 4
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %77 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %66, i32 %72, i32 %75, i32 %78)
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %85 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %3
  br label %135

88:                                               ; preds = %3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %128

93:                                               ; preds = %88
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %96 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %97 = call i64 @lpfc_els_retry(%struct.lpfc_hba* %94, %struct.lpfc_iocbq* %95, %struct.lpfc_iocbq* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %135

100:                                              ; preds = %93
  %101 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %102 = load i32, i32* @KERN_ERR, align 4
  %103 = load i32, i32* @LOG_ELS, align 4
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %105 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %106, i64 %109, i32 %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %118 = call i64 @lpfc_error_lost_link(%struct.TYPE_7__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %100
  br label %135

121:                                              ; preds = %100
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %124 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %125 = load i32, i32* @NLP_EVT_CMPL_PRLI, align 4
  %126 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %122, %struct.lpfc_nodelist* %123, %struct.lpfc_iocbq* %124, i32 %125)
  br label %127

127:                                              ; preds = %121
  br label %134

128:                                              ; preds = %88
  %129 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %130 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %131 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %132 = load i32, i32* @NLP_EVT_CMPL_PRLI, align 4
  %133 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %129, %struct.lpfc_nodelist* %130, %struct.lpfc_iocbq* %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %127
  br label %135

135:                                              ; preds = %134, %120, %99, %87
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %137 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %138 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %136, %struct.lpfc_iocbq* %137)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_els_retry(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i64 @lpfc_error_lost_link(%struct.TYPE_7__*) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
