; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_cleanup_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_cleanup_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.slot* }
%struct.slot = type { i32 }

@pciehp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @pcie_cleanup_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_cleanup_slot(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca %struct.slot*, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  %4 = load %struct.controller*, %struct.controller** %2, align 8
  %5 = getelementptr inbounds %struct.controller, %struct.controller* %4, i32 0, i32 0
  %6 = load %struct.slot*, %struct.slot** %5, align 8
  store %struct.slot* %6, %struct.slot** %3, align 8
  %7 = load %struct.slot*, %struct.slot** %3, align 8
  %8 = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 0
  %9 = call i32 @cancel_delayed_work(i32* %8)
  %10 = call i32 (...) @flush_scheduled_work()
  %11 = load i32, i32* @pciehp_wq, align 4
  %12 = call i32 @flush_workqueue(i32 %11)
  %13 = load %struct.slot*, %struct.slot** %3, align 8
  %14 = call i32 @kfree(%struct.slot* %13)
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
