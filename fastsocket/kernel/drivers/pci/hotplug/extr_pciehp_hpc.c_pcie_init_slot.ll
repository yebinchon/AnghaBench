; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_init_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_init_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.slot* }
%struct.slot = type { i32, i32, %struct.controller* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pciehp_queue_pushbutton_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @pcie_init_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_init_slot(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca %struct.slot*, align 8
  store %struct.controller* %0, %struct.controller** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.slot* @kzalloc(i32 16, i32 %5)
  store %struct.slot* %6, %struct.slot** %4, align 8
  %7 = load %struct.slot*, %struct.slot** %4, align 8
  %8 = icmp ne %struct.slot* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.controller*, %struct.controller** %3, align 8
  %14 = load %struct.slot*, %struct.slot** %4, align 8
  %15 = getelementptr inbounds %struct.slot, %struct.slot* %14, i32 0, i32 2
  store %struct.controller* %13, %struct.controller** %15, align 8
  %16 = load %struct.slot*, %struct.slot** %4, align 8
  %17 = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 1
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.slot*, %struct.slot** %4, align 8
  %20 = getelementptr inbounds %struct.slot, %struct.slot* %19, i32 0, i32 0
  %21 = load i32, i32* @pciehp_queue_pushbutton_work, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.slot*, %struct.slot** %4, align 8
  %24 = load %struct.controller*, %struct.controller** %3, align 8
  %25 = getelementptr inbounds %struct.controller, %struct.controller* %24, i32 0, i32 0
  store %struct.slot* %23, %struct.slot** %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %12, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.slot* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
