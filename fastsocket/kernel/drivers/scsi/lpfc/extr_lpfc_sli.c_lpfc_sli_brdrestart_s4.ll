; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdrestart_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdrestart_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.lpfc_sli }
%struct.TYPE_2__ = type { i64, i32 }
%struct.lpfc_sli = type { i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"0296 Restart HBA Data: x%x x%x\0A\00", align 1
@HBA_AER_ENABLED = common dso_local global i32 0, align 4
@LPFC_INIT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli_brdrestart_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_brdrestart_s4(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 5
  store %struct.lpfc_sli* %7, %struct.lpfc_sli** %3, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = load i32, i32* @KERN_INFO, align 4
  %10 = load i32, i32* @LOG_SLI, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HBA_AER_ENABLED, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = call i32 @lpfc_sli4_brdreset(%struct.lpfc_hba* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @LPFC_INIT_START, align 4
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %42, i32 0, i32 1
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  %45 = call i32 (...) @get_seconds()
  %46 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %1
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pci_disable_pcie_error_reporting(i32 %53)
  br label %55

55:                                               ; preds = %50, %1
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = call i32 @lpfc_hba_down_post(%struct.lpfc_hba* %56)
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli4_brdreset(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(i32) #1

declare dso_local i32 @lpfc_hba_down_post(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
