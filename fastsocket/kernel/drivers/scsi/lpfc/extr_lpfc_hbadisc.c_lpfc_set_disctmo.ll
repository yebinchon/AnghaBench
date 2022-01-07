; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_set_disctmo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_set_disctmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@LPFC_LOCAL_CFG_LINK = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"set disc timer:  tmo:x%x state:x%x flg:x%x\00", align 1
@jiffies = common dso_local global i64 0, align 8
@FC_DISC_TMO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"0247 Start Discovery Timer state x%x Data: x%x x%lx x%x x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_set_disctmo(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %7 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 5
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %4, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LPFC_LOCAL_CFG_LINK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 999
  %21 = sdiv i32 %20, 1000
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 3
  %28 = add nsw i32 %27, 3
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 2
  %32 = call i32 @timer_pending(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %36 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %39 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %35, i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %46, i32 0, i32 2
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 1000, %49
  %51 = call i64 @msecs_to_jiffies(i32 %50)
  %52 = add nsw i64 %48, %51
  %53 = call i32 @mod_timer(i32* %47, i64 %52)
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @spin_lock_irq(i32 %56)
  %58 = load i32, i32* @FC_DISC_TMO, align 4
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_unlock_irq(i32 %65)
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load i32, i32* @LOG_DISCOVERY, align 4
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %74, i32 0, i32 2
  %76 = ptrtoint i32* %75 to i64
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %78 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73, i64 %76, i32 %79, i32 %82)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
