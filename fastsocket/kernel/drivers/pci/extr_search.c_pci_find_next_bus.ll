; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_search.c_pci_find_next_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_search.c_pci_find_next_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.pci_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head* }

@pci_bus_sem = common dso_local global i32 0, align 4
@pci_root_buses = common dso_local global %struct.list_head zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_bus* @pci_find_next_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  store %struct.pci_bus* null, %struct.pci_bus** %4, align 8
  %5 = call i32 (...) @in_interrupt()
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = call i32 @down_read(i32* @pci_bus_sem)
  %8 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %9 = icmp ne %struct.pci_bus* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %12 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pci_root_buses, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi %struct.list_head* [ %14, %10 ], [ %16, %15 ]
  store %struct.list_head* %18, %struct.list_head** %3, align 8
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8
  %20 = icmp ne %struct.list_head* %19, @pci_root_buses
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.list_head*, %struct.list_head** %3, align 8
  %23 = call %struct.pci_bus* @pci_bus_b(%struct.list_head* %22)
  store %struct.pci_bus* %23, %struct.pci_bus** %4, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = call i32 @up_read(i32* @pci_bus_sem)
  %26 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  ret %struct.pci_bus* %26
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.pci_bus* @pci_bus_b(%struct.list_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
