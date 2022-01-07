; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32*, i32*, i32, i32, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }

@RTL_FLAG_TASK_ENABLED = common dso_local global i32 0, align 4
@R8169_RX_RING_BYTES = common dso_local global i32 0, align 4
@R8169_TX_RING_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8169_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %5)
  store %struct.rtl8169_private* %6, %struct.rtl8169_private** %3, align 8
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 5
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_get_sync(i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @rtl8169_update_counters(%struct.net_device* %13)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %16 = call i32 @rtl_lock_work(%struct.rtl8169_private* %15)
  %17 = load i32, i32* @RTL_FLAG_TASK_ENABLED, align 4
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %19 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clear_bit(i32 %17, i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @rtl8169_down(%struct.net_device* %23)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %26 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.net_device* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* @R8169_RX_RING_BYTES, align 4
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %36 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %39 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dma_free_coherent(i32* %33, i32 %34, i32* %37, i32 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* @R8169_TX_RING_BYTES, align 4
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %46 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %49 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_free_coherent(i32* %43, i32 %44, i32* %47, i32 %50)
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %53 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %55 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = call i32 @pm_runtime_put_sync(i32* %57)
  ret i32 0
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @rtl8169_update_counters(%struct.net_device*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @rtl8169_down(%struct.net_device*) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
