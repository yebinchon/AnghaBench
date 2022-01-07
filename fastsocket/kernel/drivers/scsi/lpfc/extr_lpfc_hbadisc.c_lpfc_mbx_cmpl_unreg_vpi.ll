; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_unreg_vpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_unreg_vpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.lpfc_vport*, i32 }
%struct.lpfc_vport = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.lpfc_vport*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"0911 cmpl_unreg_vpi, mb status = 0x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"2798 Unreg_vpi failed vpi 0x%x, mb status = 0x%x\0A\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@LPFC_EVT_RESET_HBA = common dso_local global i32 0, align 4
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@VPORT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_8__*)* @lpfc_mbx_cmpl_unreg_vpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_unreg_vpi(%struct.lpfc_hba* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %6, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %15 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %51 [
    i32 17, label %19
    i32 32, label %19
    i32 38656, label %27
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load i32, i32* @LOG_NODE, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load i32, i32* @LOG_NODE, align 4
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %39, align 8
  %41 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FC_UNLOADING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %27
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = load i32, i32* @LPFC_EVT_RESET_HBA, align 4
  %49 = call i32 @lpfc_workq_post_event(%struct.lpfc_hba* %47, i32* null, i32* null, i32 %48)
  br label %50

50:                                               ; preds = %46, %27
  br label %51

51:                                               ; preds = %50, %2, %19
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @spin_lock_irq(i32 %54)
  %56 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @spin_unlock_irq(i32 %69)
  %71 = load i32, i32* @VPORT_OK, align 4
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mempool_free(%struct.TYPE_8__* %74, i32 %77)
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %80 = call i32 @lpfc_cleanup_vports_rrqs(%struct.lpfc_vport* %79, i32* null)
  %81 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FC_UNLOADING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %51
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %90, align 8
  %92 = icmp ne %struct.lpfc_vport* %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %95 = call i32 @scsi_host_put(%struct.Scsi_Host* %94)
  br label %96

96:                                               ; preds = %93, %87, %51
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_workq_post_event(%struct.lpfc_hba*, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lpfc_cleanup_vports_rrqs(%struct.lpfc_vport*, i32*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
