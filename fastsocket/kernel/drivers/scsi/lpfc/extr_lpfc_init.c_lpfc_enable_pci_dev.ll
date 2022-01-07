; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_enable_pci_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_enable_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@LPFC_DRIVER_NAME = common dso_local global i32 0, align 4
@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"1401 Failed to enable pci device, bars:x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_enable_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_enable_pci_dev(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  br label %15

15:                                               ; preds = %11
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call i32 @pci_select_bars(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i64 @pci_enable_device_mem(%struct.pci_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %48

23:                                               ; preds = %15
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %27 = call i64 @pci_request_selected_regions(%struct.pci_dev* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %45

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_set_master(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_try_set_mwi(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_save_state(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %39 = call i64 @pci_find_capability(%struct.pci_dev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %30
  store i32 0, i32* %2, align 4
  br label %56

45:                                               ; preds = %29
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i32 @pci_disable_device(%struct.pci_dev* %46)
  br label %48

48:                                               ; preds = %45, %22, %10
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @LOG_INIT, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %44
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pci_select_bars(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_selected_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
