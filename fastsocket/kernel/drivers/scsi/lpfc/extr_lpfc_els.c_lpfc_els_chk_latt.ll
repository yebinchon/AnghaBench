; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_chk_latt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_chk_latt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@HA_LATT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"0237 Pending Link Event during Discovery: State x%x\0A\00", align 1
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@LPFC_CLEAR_LA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_chk_latt(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %4, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 2
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %5, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LPFC_VPORT_READY, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_SLI_REV3, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17, %1
  store i32 0, i32* %2, align 4
  br label %76

30:                                               ; preds = %23
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @lpfc_readl(i32 %33, i32* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %76

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @HA_LATT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %76

43:                                               ; preds = %37
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i32, i32* @LOG_DISCOVERY, align 4
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @spin_lock_irq(i32 %55)
  %57 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @spin_unlock_irq(i32 %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LPFC_CLEAR_LA, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %43
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %74 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %72, %struct.lpfc_vport* %73)
  br label %75

75:                                               ; preds = %71, %43
  store i32 1, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %42, %36, %29
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
