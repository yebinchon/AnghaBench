; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_update_slot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_update_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }
%struct.slot = type { i32 }
%struct.hotplug_slot_info = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, %struct.slot*)* @update_slot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_slot_info(%struct.controller* %0, %struct.slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  %5 = alloca %struct.slot*, align 8
  %6 = alloca %struct.hotplug_slot_info*, align 8
  %7 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %4, align 8
  store %struct.slot* %1, %struct.slot** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hotplug_slot_info* @kmalloc(i32 16, i32 %8)
  store %struct.hotplug_slot_info* %9, %struct.hotplug_slot_info** %6, align 8
  %10 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %11 = icmp ne %struct.hotplug_slot_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.controller*, %struct.controller** %4, align 8
  %17 = load %struct.slot*, %struct.slot** %5, align 8
  %18 = call i32 @get_slot_enabled(%struct.controller* %16, %struct.slot* %17)
  %19 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %20 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.controller*, %struct.controller** %4, align 8
  %22 = load %struct.slot*, %struct.slot** %5, align 8
  %23 = call i32 @cpq_get_attention_status(%struct.controller* %21, %struct.slot* %22)
  %24 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %25 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.controller*, %struct.controller** %4, align 8
  %27 = load %struct.slot*, %struct.slot** %5, align 8
  %28 = call i32 @cpq_get_latch_status(%struct.controller* %26, %struct.slot* %27)
  %29 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %30 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.controller*, %struct.controller** %4, align 8
  %32 = load %struct.slot*, %struct.slot** %5, align 8
  %33 = call i32 @get_presence_status(%struct.controller* %31, %struct.slot* %32)
  %34 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %35 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.slot*, %struct.slot** %5, align 8
  %37 = getelementptr inbounds %struct.slot, %struct.slot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %40 = call i32 @pci_hp_change_slot_info(i32 %38, %struct.hotplug_slot_info* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %42 = call i32 @kfree(%struct.hotplug_slot_info* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %15, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.hotplug_slot_info* @kmalloc(i32, i32) #1

declare dso_local i32 @get_slot_enabled(%struct.controller*, %struct.slot*) #1

declare dso_local i32 @cpq_get_attention_status(%struct.controller*, %struct.slot*) #1

declare dso_local i32 @cpq_get_latch_status(%struct.controller*, %struct.slot*) #1

declare dso_local i32 @get_presence_status(%struct.controller*, %struct.slot*) #1

declare dso_local i32 @pci_hp_change_slot_info(i32, %struct.hotplug_slot_info*) #1

declare dso_local i32 @kfree(%struct.hotplug_slot_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
