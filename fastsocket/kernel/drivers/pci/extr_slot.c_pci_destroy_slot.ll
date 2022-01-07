; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_slot.c_pci_destroy_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_slot.c_pci_destroy_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_slot = type { %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"dev %02x, dec refcount to %d\0A\00", align 1
@pci_bus_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_destroy_slot(%struct.pci_slot* %0) #0 {
  %2 = alloca %struct.pci_slot*, align 8
  store %struct.pci_slot* %0, %struct.pci_slot** %2, align 8
  %3 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %4 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %8 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %15)
  %17 = call i32 @down_write(i32* @pci_bus_sem)
  %18 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %19 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %18, i32 0, i32 0
  %20 = call i32 @kobject_put(%struct.TYPE_6__* %19)
  %21 = call i32 @up_write(i32* @pci_bus_sem)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @kobject_put(%struct.TYPE_6__*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
