; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_power_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_power_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller* }
%struct.controller = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Power fault interrupt received\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Power fault cleared on Slot(%s)\0A\00", align 1
@INT_POWER_FAULT_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Power fault on Slot(%s)\0A\00", align 1
@INT_POWER_FAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Power fault bit %x set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_handle_power_fault(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %2, align 8
  %5 = load %struct.slot*, %struct.slot** %2, align 8
  %6 = getelementptr inbounds %struct.slot, %struct.slot* %5, i32 0, i32 0
  %7 = load %struct.controller*, %struct.controller** %6, align 8
  store %struct.controller* %7, %struct.controller** %4, align 8
  %8 = load %struct.controller*, %struct.controller** %4, align 8
  %9 = call i32 @ctrl_dbg(%struct.controller* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.slot*, %struct.slot** %2, align 8
  %11 = call i32 @pciehp_query_power_fault(%struct.slot* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.controller*, %struct.controller** %4, align 8
  %15 = load %struct.slot*, %struct.slot** %2, align 8
  %16 = call i32 @slot_name(%struct.slot* %15)
  %17 = call i32 @ctrl_info(%struct.controller* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @INT_POWER_FAULT_CLEAR, align 4
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.controller*, %struct.controller** %4, align 8
  %21 = load %struct.slot*, %struct.slot** %2, align 8
  %22 = call i32 @slot_name(%struct.slot* %21)
  %23 = call i32 @ctrl_info(%struct.controller* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @INT_POWER_FAULT, align 4
  store i32 %24, i32* %3, align 4
  %25 = load %struct.controller*, %struct.controller** %4, align 8
  %26 = call i32 @ctrl_info(%struct.controller* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %27

27:                                               ; preds = %19, %13
  %28 = load %struct.slot*, %struct.slot** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @queue_interrupt_event(%struct.slot* %28, i32 %29)
  ret i32 1
}

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*) #1

declare dso_local i32 @pciehp_query_power_fault(%struct.slot*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @queue_interrupt_event(%struct.slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
