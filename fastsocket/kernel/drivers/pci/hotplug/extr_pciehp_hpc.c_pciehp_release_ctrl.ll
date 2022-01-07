; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_release_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_release_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@pciehp_num_controllers = common dso_local global i32 0, align 4
@pciehp_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pciehp_release_ctrl(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  %3 = load %struct.controller*, %struct.controller** %2, align 8
  %4 = call i32 @pcie_shutdown_notification(%struct.controller* %3)
  %5 = load %struct.controller*, %struct.controller** %2, align 8
  %6 = call i32 @pcie_cleanup_slot(%struct.controller* %5)
  %7 = call i64 @atomic_dec_and_test(i32* @pciehp_num_controllers)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @pciehp_wq, align 4
  %11 = call i32 @destroy_workqueue(i32 %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.controller*, %struct.controller** %2, align 8
  %14 = call i32 @kfree(%struct.controller* %13)
  ret void
}

declare dso_local i32 @pcie_shutdown_notification(%struct.controller*) #1

declare dso_local i32 @pcie_cleanup_slot(%struct.controller*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
