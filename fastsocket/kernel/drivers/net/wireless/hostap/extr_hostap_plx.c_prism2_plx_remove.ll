; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_plx.c_prism2_plx_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_plx.c_prism2_plx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i64 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hostap_plx_priv* }
%struct.hostap_plx_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @prism2_plx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_plx_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hostap_interface*, align 8
  %5 = alloca %struct.hostap_plx_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %8)
  store %struct.hostap_interface* %9, %struct.hostap_interface** %4, align 8
  %10 = load %struct.hostap_interface*, %struct.hostap_interface** %4, align 8
  %11 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %13, align 8
  store %struct.hostap_plx_priv* %14, %struct.hostap_plx_priv** %5, align 8
  %15 = load %struct.hostap_interface*, %struct.hostap_interface** %4, align 8
  %16 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @prism2_plx_cor_sreset(%struct.TYPE_2__* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @hfa384x_disable_interrupts(%struct.net_device* %19)
  %21 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %5, align 8
  %22 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %5, align 8
  %27 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @iounmap(i64 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @free_irq(i64 %38, %struct.net_device* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @prism2_free_local_data(%struct.net_device* %42)
  %44 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %5, align 8
  %45 = call i32 @kfree(%struct.hostap_plx_priv* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @pci_disable_device(%struct.pci_dev* %46)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @prism2_plx_cor_sreset(%struct.TYPE_2__*) #1

declare dso_local i32 @hfa384x_disable_interrupts(%struct.net_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @prism2_free_local_data(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.hostap_plx_priv*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
