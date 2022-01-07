; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evevent.c_acpi_ev_initialize_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evevent.c_acpi_ev_initialize_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev_initialize_events = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to initialize fixed events\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to initialize general purpose events\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_initialize_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ev_initialize_events, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = call i32 (...) @acpi_ev_fixed_event_initialize()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @ACPI_FAILURE(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @AE_INFO, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([34 x i8]* @.str to i32))
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @return_ACPI_STATUS(i32 %13)
  br label %15

15:                                               ; preds = %9, %0
  %16 = call i32 (...) @acpi_ev_gpe_initialize()
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @AE_INFO, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([44 x i8]* @.str.1 to i32))
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ev_fixed_event_initialize(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_gpe_initialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
