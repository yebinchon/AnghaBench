; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_free_pci_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_free_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*)* @vmxnet3_free_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_free_pci_resources(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %3 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iounmap(i32 %12)
  %14 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iounmap(i32 %16)
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_release_selected_regions(i32 %20, i32 3)
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_disable_device(i32 %24)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_selected_regions(i32, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
