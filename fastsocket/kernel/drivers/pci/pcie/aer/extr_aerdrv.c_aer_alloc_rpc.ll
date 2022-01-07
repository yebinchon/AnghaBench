; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_alloc_rpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_alloc_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_rpc = type { i32, i32, i32, %struct.pcie_device*, i32 }
%struct.pcie_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@aer_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aer_rpc* (%struct.pcie_device*)* @aer_alloc_rpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aer_rpc* @aer_alloc_rpc(%struct.pcie_device* %0) #0 {
  %2 = alloca %struct.aer_rpc*, align 8
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca %struct.aer_rpc*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.aer_rpc* @kzalloc(i32 32, i32 %5)
  store %struct.aer_rpc* %6, %struct.aer_rpc** %4, align 8
  %7 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %8 = icmp ne %struct.aer_rpc* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.aer_rpc* null, %struct.aer_rpc** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %12 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %11, i32 0, i32 4
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %15 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %16 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %15, i32 0, i32 3
  store %struct.pcie_device* %14, %struct.pcie_device** %16, align 8
  %17 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %18 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %17, i32 0, i32 2
  %19 = load i32, i32* @aer_isr, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %22 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %25 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %24, i32 0, i32 0
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %28 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %29 = call i32 @set_service_data(%struct.pcie_device* %27, %struct.aer_rpc* %28)
  %30 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  store %struct.aer_rpc* %30, %struct.aer_rpc** %2, align 8
  br label %31

31:                                               ; preds = %10, %9
  %32 = load %struct.aer_rpc*, %struct.aer_rpc** %2, align 8
  ret %struct.aer_rpc* %32
}

declare dso_local %struct.aer_rpc* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @set_service_data(%struct.pcie_device*, %struct.aer_rpc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
