; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OPTION_DYN_IPG_ENABLE = common dso_local global i32 0, align 4
@OPTION_WOL_ENABLE = common dso_local global i32 0, align 4
@OPTION_WAKE_MAGIC_ENABLE = common dso_local global i32 0, align 4
@OPTION_WAKE_PHY_ENABLE = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @amd8111e_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.amd8111e_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.amd8111e_priv* %11, %struct.amd8111e_priv** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

16:                                               ; preds = %2
  %17 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %18 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %21 = call i32 @amd8111e_disable_interrupt(%struct.amd8111e_priv* %20)
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @netif_device_detach(%struct.net_device* %25)
  %27 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %28 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %31 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OPTION_DYN_IPG_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %16
  %37 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %38 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @del_timer_sync(i32* %39)
  br label %41

41:                                               ; preds = %36, %16
  %42 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %43 = call i32 @amd8111e_stop_chip(%struct.amd8111e_priv* %42)
  %44 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %45 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %48 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OPTION_WOL_ENABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %41
  %54 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %55 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OPTION_WAKE_MAGIC_ENABLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %62 = call i32 @amd8111e_enable_magicpkt(%struct.amd8111e_priv* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %65 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OPTION_WAKE_PHY_ENABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %72 = call i32 @amd8111e_enable_link_change(%struct.amd8111e_priv* %71)
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* @PCI_D3hot, align 4
  %76 = call i32 @pci_enable_wake(%struct.pci_dev* %74, i32 %75, i32 1)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load i32, i32* @PCI_D3cold, align 4
  %79 = call i32 @pci_enable_wake(%struct.pci_dev* %77, i32 %78, i32 1)
  br label %87

80:                                               ; preds = %41
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = load i32, i32* @PCI_D3hot, align 4
  %83 = call i32 @pci_enable_wake(%struct.pci_dev* %81, i32 %82, i32 0)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i32, i32* @PCI_D3cold, align 4
  %86 = call i32 @pci_enable_wake(%struct.pci_dev* %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = call i32 @pci_save_state(%struct.pci_dev* %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* @PCI_D3hot, align 4
  %92 = call i32 @pci_set_power_state(%struct.pci_dev* %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @amd8111e_disable_interrupt(%struct.amd8111e_priv*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @amd8111e_stop_chip(%struct.amd8111e_priv*) #1

declare dso_local i32 @amd8111e_enable_magicpkt(%struct.amd8111e_priv*) #1

declare dso_local i32 @amd8111e_enable_link_change(%struct.amd8111e_priv*) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
