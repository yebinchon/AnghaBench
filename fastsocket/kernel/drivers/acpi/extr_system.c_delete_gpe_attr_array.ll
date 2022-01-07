; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_delete_gpe_attr_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_delete_gpe_attr_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_counter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.event_counter* }

@all_counters = common dso_local global %struct.event_counter* null, align 8
@counter_attrs = common dso_local global %struct.event_counter* null, align 8
@num_gpes = common dso_local global i32 0, align 4
@all_attrs = common dso_local global %struct.event_counter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_gpe_attr_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_gpe_attr_array() #0 {
  %1 = alloca %struct.event_counter*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.event_counter*, %struct.event_counter** @all_counters, align 8
  store %struct.event_counter* %3, %struct.event_counter** %1, align 8
  store %struct.event_counter* null, %struct.event_counter** @all_counters, align 8
  %4 = load %struct.event_counter*, %struct.event_counter** %1, align 8
  %5 = call i32 @kfree(%struct.event_counter* %4)
  %6 = load %struct.event_counter*, %struct.event_counter** @counter_attrs, align 8
  %7 = icmp ne %struct.event_counter* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @num_gpes, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.event_counter*, %struct.event_counter** @counter_attrs, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %14, i64 %16
  %18 = getelementptr inbounds %struct.event_counter, %struct.event_counter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.event_counter*, %struct.event_counter** %19, align 8
  %21 = call i32 @kfree(%struct.event_counter* %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.event_counter*, %struct.event_counter** @counter_attrs, align 8
  %27 = call i32 @kfree(%struct.event_counter* %26)
  br label %28

28:                                               ; preds = %25, %0
  %29 = load %struct.event_counter*, %struct.event_counter** @all_attrs, align 8
  %30 = call i32 @kfree(%struct.event_counter* %29)
  ret void
}

declare dso_local i32 @kfree(%struct.event_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
