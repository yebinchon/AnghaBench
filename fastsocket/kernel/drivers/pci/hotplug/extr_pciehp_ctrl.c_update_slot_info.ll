; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_update_slot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_update_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32 }
%struct.hotplug_slot_info = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*)* @update_slot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_slot_info(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca %struct.hotplug_slot_info*, align 8
  %5 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hotplug_slot_info* @kmalloc(i32 16, i32 %6)
  store %struct.hotplug_slot_info* %7, %struct.hotplug_slot_info** %4, align 8
  %8 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %9 = icmp ne %struct.hotplug_slot_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.slot*, %struct.slot** %3, align 8
  %15 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %16 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %15, i32 0, i32 3
  %17 = call i32 @pciehp_get_power_status(%struct.slot* %14, i32* %16)
  %18 = load %struct.slot*, %struct.slot** %3, align 8
  %19 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %20 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %19, i32 0, i32 2
  %21 = call i32 @pciehp_get_attention_status(%struct.slot* %18, i32* %20)
  %22 = load %struct.slot*, %struct.slot** %3, align 8
  %23 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %24 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %23, i32 0, i32 1
  %25 = call i32 @pciehp_get_latch_status(%struct.slot* %22, i32* %24)
  %26 = load %struct.slot*, %struct.slot** %3, align 8
  %27 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %28 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %27, i32 0, i32 0
  %29 = call i32 @pciehp_get_adapter_status(%struct.slot* %26, i32* %28)
  %30 = load %struct.slot*, %struct.slot** %3, align 8
  %31 = getelementptr inbounds %struct.slot, %struct.slot* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %34 = call i32 @pci_hp_change_slot_info(i32 %32, %struct.hotplug_slot_info* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %36 = call i32 @kfree(%struct.hotplug_slot_info* %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %13, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.hotplug_slot_info* @kmalloc(i32, i32) #1

declare dso_local i32 @pciehp_get_power_status(%struct.slot*, i32*) #1

declare dso_local i32 @pciehp_get_attention_status(%struct.slot*, i32*) #1

declare dso_local i32 @pciehp_get_latch_status(%struct.slot*, i32*) #1

declare dso_local i32 @pciehp_get_adapter_status(%struct.slot*, i32*) #1

declare dso_local i32 @pci_hp_change_slot_info(i32, %struct.hotplug_slot_info*) #1

declare dso_local i32 @kfree(%struct.hotplug_slot_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
