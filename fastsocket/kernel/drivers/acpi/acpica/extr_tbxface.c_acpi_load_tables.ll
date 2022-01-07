; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbxface.c_acpi_load_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbxface.c_acpi_load_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"While loading namespace from ACPI tables\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_load_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @ACPI_FUNCTION_TRACE(i32 (...)* bitcast (i32 ()* @acpi_load_tables to i32 (...)*))
  %4 = call i32 (...) @acpi_tb_load_namespace()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @ACPI_FAILURE(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @AE_INFO, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([41 x i8]* @.str to i32))
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @return_ACPI_STATUS(i32 %13)
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (...)*) #1

declare dso_local i32 @acpi_tb_load_namespace(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
