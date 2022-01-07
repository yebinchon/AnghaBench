; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VMXNET3_DEVICE_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@enable_mq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vmxnet3_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_remove_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.vmxnet3_adapter* %10, %struct.vmxnet3_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rounddown_pow_of_two(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 8
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @unregister_netdev(%struct.net_device* %16)
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %19 = call i32 @vmxnet3_free_intr_resources(%struct.vmxnet3_adapter* %18)
  %20 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %21 = call i32 @vmxnet3_free_pci_resources(%struct.vmxnet3_adapter* %20)
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_free_consistent(i32 %41, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pci_free_consistent(i32 %52, i32 4, i32 %55, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @free_netdev(%struct.net_device* %60)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @vmxnet3_free_intr_resources(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_free_pci_resources(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
