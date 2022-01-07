; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32 }
%struct.aer_rpc = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_device*)* @aer_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_remove(%struct.pcie_device* %0) #0 {
  %2 = alloca %struct.pcie_device*, align 8
  %3 = alloca %struct.aer_rpc*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %2, align 8
  %4 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %5 = call %struct.aer_rpc* @get_service_data(%struct.pcie_device* %4)
  store %struct.aer_rpc* %5, %struct.aer_rpc** %3, align 8
  %6 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %7 = icmp ne %struct.aer_rpc* %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %10 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.pcie_device* %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %21 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %24 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %27 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @wait_event(i32 %22, i32 %30)
  %32 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %33 = call i32 @aer_disable_rootport(%struct.aer_rpc* %32)
  %34 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %35 = call i32 @kfree(%struct.aer_rpc* %34)
  %36 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %37 = call i32 @set_service_data(%struct.pcie_device* %36, i32* null)
  br label %38

38:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.aer_rpc* @get_service_data(%struct.pcie_device*) #1

declare dso_local i32 @free_irq(i32, %struct.pcie_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @aer_disable_rootport(%struct.aer_rpc*) #1

declare dso_local i32 @kfree(%struct.aer_rpc*) #1

declare dso_local i32 @set_service_data(%struct.pcie_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
