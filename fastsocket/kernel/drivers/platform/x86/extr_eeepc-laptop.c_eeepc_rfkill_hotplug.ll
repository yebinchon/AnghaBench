; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.pci_dev = type { i32 }
%struct.pci_bus = type { i32 }

@ehotk = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unable to find PCI bus 1?\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to hotplug wifi\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @eeepc_rfkill_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_rfkill_hotplug() #0 {
  %1 = alloca %struct.pci_dev*, align 8
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @eeepc_wlan_rfkill_blocked()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rfkill_set_sw_state(i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %15
  %24 = call %struct.pci_bus* @pci_find_bus(i32 0, i32 1)
  store %struct.pci_bus* %24, %struct.pci_bus** %2, align 8
  %25 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %26 = icmp ne %struct.pci_bus* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 @pr_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %68

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %29
  %33 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %34 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %33, i32 0)
  store %struct.pci_dev* %34, %struct.pci_dev** %1, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %36 = icmp ne %struct.pci_dev* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %39 = call i32 @pci_dev_put(%struct.pci_dev* %38)
  br label %68

40:                                               ; preds = %32
  %41 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %42 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %41, i32 0)
  store %struct.pci_dev* %42, %struct.pci_dev** %1, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %44 = icmp ne %struct.pci_dev* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %47 = call i32 @pci_bus_assign_resources(%struct.pci_bus* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %49 = call i64 @pci_bus_add_device(%struct.pci_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %40
  br label %66

55:                                               ; preds = %29
  %56 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %57 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %56, i32 0)
  store %struct.pci_dev* %57, %struct.pci_dev** %1, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %59 = icmp ne %struct.pci_dev* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %62 = call i32 @pci_remove_bus_device(%struct.pci_dev* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %64 = call i32 @pci_dev_put(%struct.pci_dev* %63)
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %15
  br label %68

68:                                               ; preds = %67, %37, %27
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local i32 @eeepc_wlan_rfkill_blocked(...) #1

declare dso_local i32 @rfkill_set_sw_state(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_bus_assign_resources(%struct.pci_bus*) #1

declare dso_local i64 @pci_bus_add_device(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_remove_bus_device(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
