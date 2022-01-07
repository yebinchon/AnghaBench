; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.efx_nic = type { i64, i64 }

@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@pci_channel_io_perm_failure = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@STATE_DISABLED = common dso_local global i64 0, align 8
@STATE_RECOVERY = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @efx_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_io_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_nic*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.efx_nic* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.efx_nic* %10, %struct.efx_nic** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @pci_channel_io_perm_failure, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = call i32 (...) @rtnl_lock()
  %18 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STATE_DISABLED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i64, i64* @STATE_RECOVERY, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %30 = call i32 @efx_device_detach_sync(%struct.efx_nic* %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %32 = call i32 @efx_stop_all(%struct.efx_nic* %31)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %34 = call i32 @efx_stop_interrupts(%struct.efx_nic* %33, i32 0)
  %35 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %16
  %37 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = call i32 (...) @rtnl_unlock()
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_disable_device(%struct.pci_dev* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.efx_nic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @efx_device_detach_sync(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_all(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_interrupts(%struct.efx_nic*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
