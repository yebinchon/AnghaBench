; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_has_latch_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_has_latch_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_slot = type { %struct.hotplug_slot* }
%struct.hotplug_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_slot*)* @has_latch_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_latch_file(%struct.pci_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_slot*, align 8
  %4 = alloca %struct.hotplug_slot*, align 8
  store %struct.pci_slot* %0, %struct.pci_slot** %3, align 8
  %5 = load %struct.pci_slot*, %struct.pci_slot** %3, align 8
  %6 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %5, i32 0, i32 0
  %7 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  store %struct.hotplug_slot* %7, %struct.hotplug_slot** %4, align 8
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %9 = icmp ne %struct.hotplug_slot* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %12 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %25

16:                                               ; preds = %10
  %17 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %18 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
