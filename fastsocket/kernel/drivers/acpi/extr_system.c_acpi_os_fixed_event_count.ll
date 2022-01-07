; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_acpi_os_fixed_event_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_acpi_os_fixed_event_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@all_counters = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@num_gpes = common dso_local global i64 0, align 8
@COUNT_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_os_fixed_event_count(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %12 = load i64, i64* @num_gpes, align 8
  %13 = load i64, i64* %2, align 8
  %14 = add i64 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %30

19:                                               ; preds = %6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %21 = load i64, i64* @num_gpes, align 8
  %22 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* @COUNT_ERROR, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %19, %10
  br label %31

31:                                               ; preds = %30, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
