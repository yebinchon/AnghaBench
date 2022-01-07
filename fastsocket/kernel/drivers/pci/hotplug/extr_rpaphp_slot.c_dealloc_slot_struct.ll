; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_slot.c_dealloc_slot_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_slot.c_dealloc_slot_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.slot*, %struct.slot*, %struct.slot* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dealloc_slot_struct(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  store %struct.slot* %0, %struct.slot** %2, align 8
  %3 = load %struct.slot*, %struct.slot** %2, align 8
  %4 = getelementptr inbounds %struct.slot, %struct.slot* %3, i32 0, i32 0
  %5 = load %struct.slot*, %struct.slot** %4, align 8
  %6 = getelementptr inbounds %struct.slot, %struct.slot* %5, i32 0, i32 2
  %7 = load %struct.slot*, %struct.slot** %6, align 8
  %8 = call i32 @kfree(%struct.slot* %7)
  %9 = load %struct.slot*, %struct.slot** %2, align 8
  %10 = getelementptr inbounds %struct.slot, %struct.slot* %9, i32 0, i32 1
  %11 = load %struct.slot*, %struct.slot** %10, align 8
  %12 = call i32 @kfree(%struct.slot* %11)
  %13 = load %struct.slot*, %struct.slot** %2, align 8
  %14 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 0
  %15 = load %struct.slot*, %struct.slot** %14, align 8
  %16 = call i32 @kfree(%struct.slot* %15)
  %17 = load %struct.slot*, %struct.slot** %2, align 8
  %18 = call i32 @kfree(%struct.slot* %17)
  ret void
}

declare dso_local i32 @kfree(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
