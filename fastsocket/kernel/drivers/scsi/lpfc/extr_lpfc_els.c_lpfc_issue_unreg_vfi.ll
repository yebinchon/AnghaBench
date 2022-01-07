; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_unreg_vfi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_unreg_vfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.lpfc_vport* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"2556 UNREG_VFI mbox allocation failedHBA state x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lpfc_unregister_vfi_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"2557 UNREG_VFI issue mbox failed rc x%x HBA state x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FC_VFI_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_unreg_vfi(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 1
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %4, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.TYPE_8__* @mempool_alloc(i32 %13, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load i32, i32* @LOG_DISCOVERY, align 4
  %22 = load i32, i32* @LOG_MBOX, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %35 = call i32 @lpfc_unreg_vfi(%struct.TYPE_8__* %33, %struct.lpfc_vport* %34)
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store %struct.lpfc_vport* %36, %struct.lpfc_vport** %38, align 8
  %39 = load i32, i32* @lpfc_unregister_vfi_cmpl, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32, i32* @MBX_NOWAIT, align 4
  %45 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %42, %struct.TYPE_8__* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %32
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @LOG_DISCOVERY, align 4
  %53 = load i32, i32* @LOG_MBOX, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %50, i32 %51, i32 %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mempool_free(%struct.TYPE_8__* %62, i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %32
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %71 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %70)
  store %struct.Scsi_Host* %71, %struct.Scsi_Host** %5, align 8
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @spin_lock_irq(i32 %74)
  %76 = load i32, i32* @FC_VFI_REGISTERED, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_unlock_irq(i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %69, %49, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_8__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_unreg_vfi(%struct.TYPE_8__*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
