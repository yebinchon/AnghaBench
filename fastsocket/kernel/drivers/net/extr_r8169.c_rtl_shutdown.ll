; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32 }

@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@WAKE_ANY = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtl_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %8)
  store %struct.rtl8169_private* %9, %struct.rtl8169_private** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @pm_runtime_get_sync(%struct.device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @rtl8169_net_suspend(%struct.net_device* %14)
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rtl_rar_set(%struct.rtl8169_private* %16, i32 %19)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %22 = call i32 @rtl8169_hw_reset(%struct.rtl8169_private* %21)
  %23 = load i64, i64* @system_state, align 8
  %24 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %28 = call i32 @__rtl8169_get_wol(%struct.rtl8169_private* %27)
  %29 = load i32, i32* @WAKE_ANY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %34 = call i32 @rtl_wol_suspend_quirk(%struct.rtl8169_private* %33)
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %36 = call i32 @rtl_wol_shutdown_quirk(%struct.rtl8169_private* %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @pci_wake_from_d3(%struct.pci_dev* %38, i32 1)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load i32, i32* @PCI_D3hot, align 4
  %42 = call i32 @pci_set_power_state(%struct.pci_dev* %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %1
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = call i32 @pm_runtime_put_noidle(%struct.device* %44)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @rtl8169_net_suspend(%struct.net_device*) #1

declare dso_local i32 @rtl_rar_set(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8169_hw_reset(%struct.rtl8169_private*) #1

declare dso_local i32 @__rtl8169_get_wol(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_wol_suspend_quirk(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_wol_shutdown_quirk(%struct.rtl8169_private*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
