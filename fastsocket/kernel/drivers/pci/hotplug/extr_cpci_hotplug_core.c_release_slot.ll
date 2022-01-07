; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_core.c_release_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_core.c_release_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { %struct.slot* }
%struct.slot = type { i64, %struct.slot*, %struct.slot* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hotplug_slot*)* @release_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_slot(%struct.hotplug_slot* %0) #0 {
  %2 = alloca %struct.hotplug_slot*, align 8
  %3 = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %2, align 8
  %4 = load %struct.hotplug_slot*, %struct.hotplug_slot** %2, align 8
  %5 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %4, i32 0, i32 0
  %6 = load %struct.slot*, %struct.slot** %5, align 8
  store %struct.slot* %6, %struct.slot** %3, align 8
  %7 = load %struct.slot*, %struct.slot** %3, align 8
  %8 = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 1
  %9 = load %struct.slot*, %struct.slot** %8, align 8
  %10 = getelementptr inbounds %struct.slot, %struct.slot* %9, i32 0, i32 2
  %11 = load %struct.slot*, %struct.slot** %10, align 8
  %12 = call i32 @kfree(%struct.slot* %11)
  %13 = load %struct.slot*, %struct.slot** %3, align 8
  %14 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 1
  %15 = load %struct.slot*, %struct.slot** %14, align 8
  %16 = call i32 @kfree(%struct.slot* %15)
  %17 = load %struct.slot*, %struct.slot** %3, align 8
  %18 = getelementptr inbounds %struct.slot, %struct.slot* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.slot*, %struct.slot** %3, align 8
  %23 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pci_dev_put(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.slot*, %struct.slot** %3, align 8
  %28 = call i32 @kfree(%struct.slot* %27)
  ret void
}

declare dso_local i32 @kfree(%struct.slot*) #1

declare dso_local i32 @pci_dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
