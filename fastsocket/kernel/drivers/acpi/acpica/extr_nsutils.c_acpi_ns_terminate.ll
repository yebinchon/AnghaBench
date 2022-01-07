; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_terminate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }

@ns_terminate = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Namespace freed\0A\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_terminate() #0 {
  %1 = alloca %union.acpi_operand_object*, align 8
  %2 = load i32, i32* @ns_terminate, align 4
  %3 = call i32 @ACPI_FUNCTION_TRACE(i32 %2)
  %4 = load i32, i32* @acpi_gbl_root_node, align 4
  %5 = call i32 @acpi_ns_delete_namespace_subtree(i32 %4)
  %6 = load i32, i32* @acpi_gbl_root_node, align 4
  %7 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(i32 %6)
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %1, align 8
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %1, align 8
  %9 = icmp ne %union.acpi_operand_object* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @acpi_gbl_root_node, align 4
  %12 = call i32 @acpi_ns_detach_object(i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* @ACPI_DB_INFO, align 4
  %15 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([17 x i8]* @.str to i32))
  %16 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ns_delete_namespace_subtree(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(i32) #1

declare dso_local i32 @acpi_ns_detach_object(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
