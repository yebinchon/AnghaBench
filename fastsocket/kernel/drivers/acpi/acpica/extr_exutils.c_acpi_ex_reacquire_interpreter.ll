; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exutils.c_acpi_ex_reacquire_interpreter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exutils.c_acpi_ex_reacquire_interpreter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ex_reacquire_interpreter = common dso_local global i32 0, align 4
@acpi_gbl_all_methods_serialized = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_reacquire_interpreter() #0 {
  %1 = load i32, i32* @ex_reacquire_interpreter, align 4
  %2 = call i32 @ACPI_FUNCTION_TRACE(i32 %1)
  %3 = load i32, i32* @acpi_gbl_all_methods_serialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @acpi_ex_enter_interpreter()
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
