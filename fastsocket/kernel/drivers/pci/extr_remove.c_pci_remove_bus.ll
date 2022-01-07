; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_remove.c_pci_remove_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_remove.c_pci_remove_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32, i32 }

@pci_bus_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_remove_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %3 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %4 = call i32 @pci_proc_detach_bus(%struct.pci_bus* %3)
  %5 = call i32 @down_write(i32* @pci_bus_sem)
  %6 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 2
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 @up_write(i32* @pci_bus_sem)
  %10 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %17 = call i32 @pci_remove_legacy_files(%struct.pci_bus* %16)
  %18 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %19 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %18, i32 0, i32 0
  %20 = call i32 @device_unregister(i32* %19)
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @pci_proc_detach_bus(%struct.pci_bus*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @pci_remove_legacy_files(%struct.pci_bus*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
