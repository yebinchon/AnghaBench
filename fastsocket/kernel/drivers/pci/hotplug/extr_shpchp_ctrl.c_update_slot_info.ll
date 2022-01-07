; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_update_slot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_update_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)* }
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
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.slot*, %struct.slot** %3, align 8
  %15 = getelementptr inbounds %struct.slot, %struct.slot* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)** %17, align 8
  %19 = load %struct.slot*, %struct.slot** %3, align 8
  %20 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %21 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %20, i32 0, i32 3
  %22 = call i32 %18(%struct.slot* %19, i32* %21)
  %23 = load %struct.slot*, %struct.slot** %3, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)** %26, align 8
  %28 = load %struct.slot*, %struct.slot** %3, align 8
  %29 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %30 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %29, i32 0, i32 2
  %31 = call i32 %27(%struct.slot* %28, i32* %30)
  %32 = load %struct.slot*, %struct.slot** %3, align 8
  %33 = getelementptr inbounds %struct.slot, %struct.slot* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)** %35, align 8
  %37 = load %struct.slot*, %struct.slot** %3, align 8
  %38 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %39 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %38, i32 0, i32 1
  %40 = call i32 %36(%struct.slot* %37, i32* %39)
  %41 = load %struct.slot*, %struct.slot** %3, align 8
  %42 = getelementptr inbounds %struct.slot, %struct.slot* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)** %44, align 8
  %46 = load %struct.slot*, %struct.slot** %3, align 8
  %47 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %48 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %47, i32 0, i32 0
  %49 = call i32 %45(%struct.slot* %46, i32* %48)
  %50 = load %struct.slot*, %struct.slot** %3, align 8
  %51 = getelementptr inbounds %struct.slot, %struct.slot* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %54 = call i32 @pci_hp_change_slot_info(i32 %52, %struct.hotplug_slot_info* %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %4, align 8
  %56 = call i32 @kfree(%struct.hotplug_slot_info* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %13, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.hotplug_slot_info* @kmalloc(i32, i32) #1

declare dso_local i32 @pci_hp_change_slot_info(i32, %struct.hotplug_slot_info*) #1

declare dso_local i32 @kfree(%struct.hotplug_slot_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
