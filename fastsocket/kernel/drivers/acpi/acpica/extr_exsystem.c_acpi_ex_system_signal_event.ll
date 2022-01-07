; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exsystem.c_acpi_ex_system_signal_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exsystem.c_acpi_ex_system_signal_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_system_signal_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_system_signal_event(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ex_system_signal_event, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = icmp ne %union.acpi_operand_object* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %12 = bitcast %union.acpi_operand_object* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @acpi_os_signal_semaphore(i32 %14, i32 1)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_os_signal_semaphore(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
