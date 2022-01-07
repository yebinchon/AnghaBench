; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_register_dock_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_register_dock_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@dock_station_count = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dock_notifier_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_dock_notifier(%struct.notifier_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %3, align 8
  %4 = load i32, i32* @dock_station_count, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.notifier_block*, %struct.notifier_block** %3, align 8
  %11 = call i32 @atomic_notifier_chain_register(i32* @dock_notifier_list, %struct.notifier_block* %10)
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @atomic_notifier_chain_register(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
