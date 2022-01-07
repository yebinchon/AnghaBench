; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_core.c_get_max_bus_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_core.c_get_max_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i64 }
%struct.slot = type { i32 }

@PCI_SPEED_33MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*, i32*)* @get_max_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_bus_speed(%struct.hotplug_slot* %0, i32* %1) #0 {
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %7 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.slot*
  store %struct.slot* %9, %struct.slot** %5, align 8
  %10 = load %struct.slot*, %struct.slot** %5, align 8
  %11 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %28 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %13
    i32 5, label %13
    i32 6, label %13
    i32 7, label %16
    i32 8, label %16
    i32 11, label %19
    i32 14, label %19
    i32 12, label %22
    i32 15, label %22
    i32 13, label %25
    i32 16, label %25
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2
  %14 = load i32, i32* @PCI_SPEED_33MHz, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %31

16:                                               ; preds = %2, %2
  %17 = load i32, i32* @PCI_SPEED_66MHz, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %31

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @PCI_SPEED_66MHz_PCIX, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %31

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @PCI_SPEED_100MHz_PCIX, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %31

25:                                               ; preds = %2, %2
  %26 = load i32, i32* @PCI_SPEED_133MHz_PCIX, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25, %22, %19, %16, %13
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
