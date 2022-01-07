; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r6040.c_r6040_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r6040.c_r6040_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r6040_private = type { i32*, i32, i32*, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@RX_DESC_SIZE = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @r6040_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r6040_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r6040_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r6040_private* @netdev_priv(%struct.net_device* %5)
  store %struct.r6040_private* %6, %struct.r6040_private** %3, align 8
  %7 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %8 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %7, i32 0, i32 7
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %11 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %10, i32 0, i32 6
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %14 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %13, i32 0, i32 4
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %17 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %16, i32 0, i32 5
  %18 = call i32 @napi_disable(i32* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @netif_stop_queue(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @r6040_down(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.net_device* %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @r6040_free_rxbufs(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @r6040_free_txbufs(%struct.net_device* %30)
  %32 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %33 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %32, i32 0, i32 4
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %36 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %1
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @RX_DESC_SIZE, align 4
  %42 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %43 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %46 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_free_consistent(%struct.pci_dev* %40, i32 %41, i32* %44, i32 %47)
  %49 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %50 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %39, %1
  %52 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %53 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load i32, i32* @TX_DESC_SIZE, align 4
  %59 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %60 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %63 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pci_free_consistent(%struct.pci_dev* %57, i32 %58, i32* %61, i32 %64)
  %66 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %67 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %56, %51
  ret i32 0
}

declare dso_local %struct.r6040_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @r6040_down(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @r6040_free_rxbufs(%struct.net_device*) #1

declare dso_local i32 @r6040_free_txbufs(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
