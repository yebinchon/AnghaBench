; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_get_hs_csr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_get_hs_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32 }

@PCI_CAP_ID_CHSWP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpci_get_hs_csr(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %3, align 8
  %6 = load %struct.slot*, %struct.slot** %3, align 8
  %7 = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.slot*, %struct.slot** %3, align 8
  %10 = getelementptr inbounds %struct.slot, %struct.slot* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCI_CAP_ID_CHSWP, align 4
  %13 = call i32 @pci_bus_find_capability(i32 %8, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 65535, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.slot*, %struct.slot** %3, align 8
  %19 = getelementptr inbounds %struct.slot, %struct.slot* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.slot*, %struct.slot** %3, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 2
  %26 = call i64 @pci_bus_read_config_word(i32 %20, i32 %23, i32 %25, i32* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 65535, i32* %2, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %28, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pci_bus_find_capability(i32, i32, i32) #1

declare dso_local i64 @pci_bus_read_config_word(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
