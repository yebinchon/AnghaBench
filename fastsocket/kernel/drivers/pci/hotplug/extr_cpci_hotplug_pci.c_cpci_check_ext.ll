; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_check_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_check_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32 }

@PCI_CAP_ID_CHSWP = common dso_local global i32 0, align 4
@HS_CSR_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpci_check_ext(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.slot*, %struct.slot** %3, align 8
  %8 = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.slot*, %struct.slot** %3, align 8
  %11 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCI_CAP_ID_CHSWP, align 4
  %14 = call i32 @pci_bus_find_capability(i32 %9, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.slot*, %struct.slot** %3, align 8
  %20 = getelementptr inbounds %struct.slot, %struct.slot* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.slot*, %struct.slot** %3, align 8
  %23 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i64 @pci_bus_read_config_word(i32 %21, i32 %24, i32 %26, i32* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @HS_CSR_EXT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %29, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @pci_bus_find_capability(i32, i32, i32) #1

declare dso_local i64 @pci_bus_read_config_word(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
