; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c_pci_call_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c_pci_call_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.drv_dev_and_id = type { %struct.pci_device_id*, %struct.pci_dev*, %struct.pci_driver* }

@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_driver*, %struct.pci_dev*, %struct.pci_device_id*)* @pci_call_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_call_probe(%struct.pci_driver* %0, %struct.pci_dev* %1, %struct.pci_device_id* %2) #0 {
  %4 = alloca %struct.pci_driver*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drv_dev_and_id, align 8
  %10 = alloca i32, align 4
  store %struct.pci_driver* %0, %struct.pci_driver** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %2, %struct.pci_device_id** %6, align 8
  %11 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %9, i32 0, i32 0
  %12 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %13 = bitcast %struct.pci_driver* %12 to %struct.pci_device_id*
  store %struct.pci_device_id* %13, %struct.pci_device_id** %11, align 8
  %14 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %9, i32 0, i32 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %14, align 8
  %16 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %9, i32 0, i32 2
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %18 = bitcast %struct.pci_device_id* %17 to %struct.pci_driver*
  store %struct.pci_driver* %18, %struct.pci_driver** %16, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @dev_to_node(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %3
  %25 = call i32 (...) @get_online_cpus()
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @cpumask_of_node(i32 %26)
  %28 = load i32, i32* @cpu_online_mask, align 4
  %29 = call i32 @cpumask_any_and(i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @nr_cpu_ids, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @work_on_cpu(i32 %34, i32 (%struct.drv_dev_and_id*)* @local_pci_probe, %struct.drv_dev_and_id* %9)
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %24
  %37 = call i32 @local_pci_probe(%struct.drv_dev_and_id* %9)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = call i32 (...) @put_online_cpus()
  br label %42

40:                                               ; preds = %3
  %41 = call i32 @local_pci_probe(%struct.drv_dev_and_id* %9)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i32 @work_on_cpu(i32, i32 (%struct.drv_dev_and_id*)*, %struct.drv_dev_and_id*) #1

declare dso_local i32 @local_pci_probe(%struct.drv_dev_and_id*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
