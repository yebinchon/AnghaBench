; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_register_new_vport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_register_new_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.lpfc_vport* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_cmpl_reg_new_vport = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"0253 Register VPI: Can't send mbox\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"0254 Register VPI: no memory\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_register_new_vport(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %6, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %10 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %7, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.TYPE_6__* @mempool_alloc(i32 %13, i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = call i32 @lpfc_reg_vpi(%struct.lpfc_vport* %19, %struct.TYPE_6__* %20)
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %24, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %26 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @lpfc_cmpl_reg_new_vport, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = load i32, i32* @MBX_NOWAIT, align 4
  %35 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %32, %struct.TYPE_6__* %33, i32 %34)
  %36 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %18
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %40 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mempool_free(%struct.TYPE_6__* %41, i32 %44)
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @LOG_MBOX, align 4
  %49 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %57

50:                                               ; preds = %18
  br label %56

51:                                               ; preds = %3
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load i32, i32* @LOG_MBOX, align 4
  %55 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %57

56:                                               ; preds = %50
  br label %75

57:                                               ; preds = %51, %38
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %59 = load i32, i32* @FC_VPORT_FAILED, align 4
  %60 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %58, i32 %59)
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @spin_lock_irq(i32 %63)
  %65 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @spin_unlock_irq(i32 %73)
  br label %75

75:                                               ; preds = %57, %56
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_reg_vpi(%struct.lpfc_vport*, %struct.TYPE_6__*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
