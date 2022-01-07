; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_can_disctmo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_can_disctmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32* }

@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"can disc timer:  state:x%x rtry:x%x flg:x%x\00", align 1
@FC_DISC_TMO = common dso_local global i32 0, align 4
@WORKER_DISC_TMO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"0248 Cancel Discovery Timer state x%x Data: x%x x%x x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %6 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %7, i32 %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FC_DISC_TMO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %1
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* @FC_DISC_TMO, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %43 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %42, i32 0, i32 6
  %44 = call i32 @del_timer_sync(i32* %43)
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %45, i32 0, i32 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* @WORKER_DISC_TMO, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %52 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 4
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %25, %1
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %61 = load i32, i32* @KERN_INFO, align 4
  %62 = load i32, i32* @LOG_DISCOVERY, align 4
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %67 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
