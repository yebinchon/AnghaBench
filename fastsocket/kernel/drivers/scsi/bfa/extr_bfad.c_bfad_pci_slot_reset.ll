; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_pci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_pci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bfad_s = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bfad_pci_slot_reset flags: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"slot_reset failed ... got another PCI error !\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"slot_reset completed  flags: 0x%x!\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @bfad_pci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_pci_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.bfad_s* %7, %struct.bfad_s** %4, align 8
  %8 = load i32, i32* @KERN_ERR, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %8, i32* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i64 @pci_enable_device(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @KERN_ERR, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %19, i32* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_restore_state(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i32 104, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %32, i32* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %74

36:                                               ; preds = %24
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = call i32 @pci_save_state(%struct.pci_dev* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_set_master(%struct.pci_dev* %39)
  %41 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DMA_BIT_MASK(i32 64)
  %45 = call i64 @pci_set_dma_mask(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DMA_BIT_MASK(i32 32)
  %52 = call i64 @pci_set_dma_mask(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %74

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = call i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %57)
  %59 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %60 = call i32 @restart_bfa(%struct.bfad_s* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %74

63:                                               ; preds = %56
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %64)
  %66 = load i32, i32* @KERN_WARNING, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %70 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %66, i32* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %62, %54, %31
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = call i32 @pci_disable_device(%struct.pci_dev* %75)
  %77 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %63, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_set_dma_mask(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev*) #1

declare dso_local i32 @restart_bfa(%struct.bfad_s*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
