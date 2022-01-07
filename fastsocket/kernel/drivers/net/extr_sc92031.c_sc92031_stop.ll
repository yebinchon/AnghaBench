; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sc92031.c_sc92031_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sc92031.c_sc92031_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sc92031_priv = type { i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@TX_BUF_TOT_LEN = common dso_local global i32 0, align 4
@RX_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sc92031_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc92031_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sc92031_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sc92031_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.sc92031_priv* %6, %struct.sc92031_priv** %3, align 8
  %7 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %7, i32 0, i32 5
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_tx_disable(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @sc92031_disable_interrupts(%struct.net_device* %12)
  %14 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %15 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %14, i32 0, i32 4
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @_sc92031_disable_tx_rx(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @_sc92031_tx_clear(%struct.net_device* %19)
  %21 = call i32 (...) @mmiowb()
  %22 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %23 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %22, i32 0, i32 4
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @free_irq(i32 %27, %struct.net_device* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load i32, i32* @TX_BUF_TOT_LEN, align 4
  %32 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %33 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_free_consistent(%struct.pci_dev* %30, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load i32, i32* @RX_BUF_LEN, align 4
  %41 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %42 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %45 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pci_free_consistent(%struct.pci_dev* %39, i32 %40, i32 %43, i32 %46)
  ret i32 0
}

declare dso_local %struct.sc92031_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @sc92031_disable_interrupts(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @_sc92031_disable_tx_rx(%struct.net_device*) #1

declare dso_local i32 @_sc92031_tx_clear(%struct.net_device*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
