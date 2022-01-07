; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_brdreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_brdreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i64, %struct.lpfc_sli }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.lpfc_sli = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"0295 Reset HBA Data: x%x x%x\0A\00", align 1
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"0389 Performing PCI function reset!\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_brdreset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 6
  store %struct.lpfc_sli* %7, %struct.lpfc_sli** %3, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = load i32, i32* @KERN_INFO, align 4
  %10 = load i32, i32* @LOG_SLI, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 1
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %38 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %48 = load i32, i32* @KERN_INFO, align 4
  %49 = load i32, i32* @LOG_INIT, align 4
  %50 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PCI_COMMAND, align 4
  %55 = call i32 @pci_read_config_word(i32 %53, i32 %54, i32* %4)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PCI_COMMAND, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %62 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %60, %64
  %66 = call i32 @pci_write_config_word(i32 %58, i32 %59, i32 %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %68 = call i32 @lpfc_pci_function_reset(%struct.lpfc_hba* %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = call i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba* %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PCI_COMMAND, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @pci_write_config_word(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @lpfc_pci_function_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
