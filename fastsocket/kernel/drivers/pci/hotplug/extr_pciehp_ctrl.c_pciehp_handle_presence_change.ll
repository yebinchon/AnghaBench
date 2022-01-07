; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_presence_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_presence_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller* }
%struct.controller = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Presence/Notify input change\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Card present on Slot(%s)\0A\00", align 1
@INT_PRESENCE_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Card not present on Slot(%s)\0A\00", align 1
@INT_PRESENCE_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_handle_presence_change(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %2, align 8
  %6 = load %struct.slot*, %struct.slot** %2, align 8
  %7 = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 0
  %8 = load %struct.controller*, %struct.controller** %7, align 8
  store %struct.controller* %8, %struct.controller** %5, align 8
  %9 = load %struct.controller*, %struct.controller** %5, align 8
  %10 = call i32 @ctrl_dbg(%struct.controller* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.slot*, %struct.slot** %2, align 8
  %12 = call i32 @pciehp_get_adapter_status(%struct.slot* %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.controller*, %struct.controller** %5, align 8
  %17 = load %struct.slot*, %struct.slot** %2, align 8
  %18 = call i32 @slot_name(%struct.slot* %17)
  %19 = call i32 @ctrl_info(%struct.controller* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @INT_PRESENCE_ON, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.controller*, %struct.controller** %5, align 8
  %23 = load %struct.slot*, %struct.slot** %2, align 8
  %24 = call i32 @slot_name(%struct.slot* %23)
  %25 = call i32 @ctrl_info(%struct.controller* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @INT_PRESENCE_OFF, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.slot*, %struct.slot** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @queue_interrupt_event(%struct.slot* %28, i32 %29)
  ret i32 1
}

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*) #1

declare dso_local i32 @pciehp_get_adapter_status(%struct.slot*, i32*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @queue_interrupt_event(%struct.slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
