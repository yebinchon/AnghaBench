; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evevent.c_acpi_ev_fixed_event_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evevent.c_acpi_ev_fixed_event_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ACPI_INTERRUPT_NOT_HANDLED = common dso_local global i64 0, align 8
@ev_fixed_event_detect = common dso_local global i32 0, align 4
@ACPI_REGISTER_PM1_STATUS = common dso_local global i32 0, align 4
@ACPI_REGISTER_PM1_ENABLE = common dso_local global i32 0, align 4
@ACPI_DB_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Fixed Event Block: Enable %08X Status %08X\0A\00", align 1
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@acpi_gbl_fixed_event_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ev_fixed_event_detect() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @ACPI_INTERRUPT_NOT_HANDLED, align 8
  store i64 %5, i64* %1, align 8
  %6 = load i32, i32* @ev_fixed_event_detect, align 4
  %7 = call i32 @ACPI_FUNCTION_NAME(i32 %6)
  %8 = load i32, i32* @ACPI_REGISTER_PM1_STATUS, align 4
  %9 = call i32 @acpi_hw_register_read(i32 %8, i64* %2)
  %10 = load i32, i32* @ACPI_REGISTER_PM1_ENABLE, align 4
  %11 = call i32 @acpi_hw_register_read(i32 %10, i64* %3)
  %12 = load i32, i32* @ACPI_DB_INTERRUPTS, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @ACPI_DEBUG_PRINT(i32 %15)
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %47, %0
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_info, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %22, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_info, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %31, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @acpi_os_fixed_event_count(i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @acpi_ev_fixed_event_dispatch(i64 %42)
  %44 = load i64, i64* %1, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %1, align 8
  br label %46

46:                                               ; preds = %39, %30, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %17

50:                                               ; preds = %17
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_hw_register_read(i32, i64*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_fixed_event_count(i64) #1

declare dso_local i64 @acpi_ev_fixed_event_dispatch(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
