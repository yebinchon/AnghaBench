; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_pci_hp_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_pci_hp_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { {}*, %struct.pci_slot*, i32 }
%struct.pci_slot = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@pci_hp_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Removed slot %s from the list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_hp_deregister(%struct.hotplug_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca %struct.hotplug_slot*, align 8
  %5 = alloca %struct.pci_slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %7 = icmp ne %struct.hotplug_slot* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @pci_hp_mutex)
  %13 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %14 = call i32 @hotplug_slot_name(%struct.hotplug_slot* %13)
  %15 = call %struct.hotplug_slot* @get_slot_from_name(i32 %14)
  store %struct.hotplug_slot* %15, %struct.hotplug_slot** %4, align 8
  %16 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %17 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %18 = icmp ne %struct.hotplug_slot* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = call i32 @mutex_unlock(i32* @pci_hp_mutex)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %11
  %24 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %25 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %24, i32 0, i32 2
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %28 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %27, i32 0, i32 1
  %29 = load %struct.pci_slot*, %struct.pci_slot** %28, align 8
  store %struct.pci_slot* %29, %struct.pci_slot** %5, align 8
  %30 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %31 = call i32 @fs_remove_slot(%struct.pci_slot* %30)
  %32 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %33 = call i32 @hotplug_slot_name(%struct.hotplug_slot* %32)
  %34 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %36 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.hotplug_slot*)**
  %38 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %37, align 8
  %39 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %40 = call i32 %38(%struct.hotplug_slot* %39)
  %41 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %42 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %44 = call i32 @pci_destroy_slot(%struct.pci_slot* %43)
  %45 = call i32 @mutex_unlock(i32* @pci_hp_mutex)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %23, %19, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hotplug_slot* @get_slot_from_name(i32) #1

declare dso_local i32 @hotplug_slot_name(%struct.hotplug_slot*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fs_remove_slot(%struct.pci_slot*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @pci_destroy_slot(%struct.pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
