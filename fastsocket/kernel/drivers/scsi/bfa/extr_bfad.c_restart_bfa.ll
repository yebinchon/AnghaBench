; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_restart_bfa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_restart_bfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: bfad_setup_intr failed\0A\00", align 1
@BFAD_E_INTR_INIT_FAILED = common dso_local global i32 0, align 4
@BFAD_MSIX_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: install_msix failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restart_bfa(%struct.bfad_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  %6 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %6, i32 0, i32 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %9, i32 0, i32 4
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 7
  %14 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 6
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 5
  %18 = call i32 @bfa_attach(i32* %10, %struct.bfad_s* %11, i32* %13, i32* %15, i32* %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %20 = call i64 @bfad_setup_intr(%struct.bfad_s* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i32, i32* @KERN_WARNING, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_printk(i32 %23, i32* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %31 = load i32, i32* @BFAD_E_INTR_INIT_FAILED, align 4
  %32 = call i32 @bfa_sm_send_event(%struct.bfad_s* %30, i32 %31)
  store i32 -1, i32* %2, align 4
  br label %74

33:                                               ; preds = %1
  %34 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %34, i32 0, i32 1
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %37, i32 0, i32 3
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 4
  %43 = call i32 @bfa_iocfc_init(i32* %42)
  %44 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 3
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BFAD_MSIX_ON, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %33
  %55 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %56 = call i64 @bfad_install_msix_handler(%struct.bfad_s* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* @KERN_WARNING, align 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_printk(i32 %59, i32* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58, %54, %33
  %67 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %68 = call i32 @bfad_init_timer(%struct.bfad_s* %67)
  %69 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %69, i32 0, i32 1
  %71 = call i32 @wait_for_completion(i32* %70)
  %72 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %73 = call i32 @bfad_drv_start(%struct.bfad_s* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %66, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @bfa_attach(i32*, %struct.bfad_s*, i32*, i32*, i32*) #1

declare dso_local i64 @bfad_setup_intr(%struct.bfad_s*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfad_s*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_iocfc_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @bfad_install_msix_handler(%struct.bfad_s*) #1

declare dso_local i32 @bfad_init_timer(%struct.bfad_s*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bfad_drv_start(%struct.bfad_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
