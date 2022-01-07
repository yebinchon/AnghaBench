; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.efx_nic = type { i32 }

@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"pci_cleanup_aer_uncorrect_error_status failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @efx_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.efx_nic* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.efx_nic* %7, %struct.efx_nic** %3, align 8
  %8 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i64 @pci_enable_device(%struct.pci_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = load i32, i32* @hw, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = load i32, i32* @hw, align 4
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %26, i32 %27, i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.efx_nic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
