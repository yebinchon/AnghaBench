; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_pci_mmio_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_pci_mmio_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bfad_s = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mmio_enabled\0A\00", align 1
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @bfad_pci_mmio_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_pci_mmio_enabled(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bfad_s*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.bfad_s* %6, %struct.bfad_s** %4, align 8
  %7 = load i32, i32* @KERN_INFO, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call i32 @dev_printk(i32 %7, i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @bfa_ioc_debug_save_ftrc(i32* %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 2
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 3
  %24 = call i32 @bfa_fcs_stop(i32* %23)
  %25 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %26 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %25, i32 0, i32 2
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i32 0, i32 1
  %31 = call i32 @wait_for_completion(i32* %30)
  %32 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %33 = call i32 @bfad_remove_intr(%struct.bfad_s* %32)
  %34 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %34, i32 0, i32 0
  %36 = call i32 @del_timer_sync(i32* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_disable_device(%struct.pci_dev* %37)
  %39 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  ret i32 %39
}

declare dso_local %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @bfa_ioc_debug_save_ftrc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_fcs_stop(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bfad_remove_intr(%struct.bfad_s*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
