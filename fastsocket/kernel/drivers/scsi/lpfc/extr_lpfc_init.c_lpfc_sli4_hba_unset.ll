; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_hba_unset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_hba_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_12__*, i32, i64, i32, %struct.TYPE_11__, %struct.TYPE_8__, %struct.pci_dev* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.pci_dev = type { i32 }

@LPFC_SLI_ASYNC_MBX_BLK = common dso_local global i32 0, align 4
@LPFC_SLI_MBOX_ACTIVE = common dso_local global i32 0, align 4
@LPFC_ACTIVE_MBOX_WAIT_CNT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_hba_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_hba_unset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 6
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = call i32 @lpfc_stop_hba_timers(%struct.lpfc_hba* %9)
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 3
  %25 = call i32 @spin_unlock_irq(i32* %24)
  br label %26

26:                                               ; preds = %41, %1
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = call i32 @msleep(i32 10)
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @LPFC_ACTIVE_MBOX_WAIT_CNT, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  br label %26

42:                                               ; preds = %40, %26
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %42
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 3
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %4, align 8
  %58 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32 @__lpfc_mbox_cmpl_put(%struct.lpfc_hba* %63, %struct.TYPE_13__* %64)
  %66 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 8
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %75, align 8
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock_irq(i32* %77)
  br label %79

79:                                               ; preds = %50, %42
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = call i32 @lpfc_sli_hba_iocb_abort(%struct.lpfc_hba* %80)
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %83 = call i32 @lpfc_sli4_xri_exchange_busy_wait(%struct.lpfc_hba* %82)
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %85 = call i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba* %84)
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i32 @pci_disable_sriov(%struct.pci_dev* %91)
  br label %93

93:                                               ; preds = %90, %79
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @kthread_stop(i32 %96)
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = call i32 @lpfc_pci_function_reset(%struct.lpfc_hba* %98)
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %101 = call i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba* %100)
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  ret void
}

declare dso_local i32 @lpfc_stop_hba_timers(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @__lpfc_mbox_cmpl_put(%struct.lpfc_hba*, %struct.TYPE_13__*) #1

declare dso_local i32 @lpfc_sli_hba_iocb_abort(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_xri_exchange_busy_wait(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @lpfc_pci_function_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
