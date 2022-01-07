; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@OPTION_DYN_IPG_ENABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPG_CONVERGE_JIFFIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @amd8111e_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.amd8111e_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.amd8111e_priv* %9, %struct.amd8111e_priv** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* @PCI_D0, align 4
  %17 = call i32 @pci_set_power_state(%struct.pci_dev* %15, i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call i32 @pci_restore_state(%struct.pci_dev* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* @PCI_D3hot, align 4
  %22 = call i32 @pci_enable_wake(%struct.pci_dev* %20, i32 %21, i32 0)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @PCI_D3cold, align 4
  %25 = call i32 @pci_enable_wake(%struct.pci_dev* %23, i32 %24, i32 0)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_device_attach(%struct.net_device* %26)
  %28 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %5, align 8
  %29 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @amd8111e_restart(%struct.net_device* %31)
  %33 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %5, align 8
  %34 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OPTION_DYN_IPG_ENABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %14
  %40 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %5, align 8
  %41 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* @IPG_CONVERGE_JIFFIES, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @mod_timer(i32* %42, i64 %45)
  br label %47

47:                                               ; preds = %39, %14
  %48 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %5, align 8
  %49 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_irq(i32* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @amd8111e_restart(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
